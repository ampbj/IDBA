module IDBA

using Dates
using DataFrames
using CSV
using MySQL
using CategoricalArrays

function init(data_path::String, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number})
    data = CSV.read(data_path, DataFrame)
    # Dealing with dataframe structure format
    data_names = names(data)
    timestamp_column = in("Timestamp", data_names)
    Close_column = in("Close", data_names)
    ask_column = in("Ask", data_names)
    if ncol(data) < 3 || !timestamp_column || !Close_column || !ask_column
        error("Data is not aligned with the required structure!
                    Module expects at least Timestamp,Close and Ask columns")
    end
    # Dealing with theta and down_inds'
    theta_length = length(thetas)
    if !isassigned(down_ind, theta_length)
        error("we need to have same number of down_inds' as thetas'")
    end
    # make sure data is unique
    unique!(data)
    sort!(thetas)
    sort!(down_ind)
    return data, thetas, down_ind
end

function pct_change(input::AbstractVector{<:Number}, period::Int=1)
    res = @view(input[(period + 1):end]) ./ @view(input[1:(end - period)]) .- 1
    [fill(missing, period); res]
end

function prepare(data::DataFrame, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number})
        # preparing dataframe for getting fit
    dropmissing!(insertcols!(data, :pct_change => pct_change(data.Close)))
    if eltype(data.Timestamp) !== DateTime
        data[!,:Timestamp] = parse.(DateTime, data.Timestamp, dateformat"yyyymmdd\ HHMMSSsss")
    end
    for theta in thetas
        data_length = length(data.Timestamp)
        theta_column = CategoricalArray{Union{Missing,String}}(repeat([missing], data_length))
        levels!(theta_column, ["Up", "Down"]; allowmissing=true)
        theta_column = compress(theta_column)
        ext_column = CategoricalArray{Union{Missing,String}}(repeat([missing], data_length))
        levels!(ext_column, ["UXP", "DXP"]; allowmissing=true)
        ext_column = compress(ext_column)
        insertcols!(data, "Theta_$(theta)" => theta_column)
        insertcols!(data, "Exp_$(theta)" => ext_column)
        for down_index in down_ind
            down_index_column = CategoricalArray{Union{Missing,String}}(repeat([missing], data_length))
            insertcols!(data, "Trades_$(theta)t$(down_index)d" => down_index_column)
        end
    end
    return data, thetas, down_ind
end

function trade_open(data, Timestamp, theta, OSV, down_ind, trade_open_array, current_partOf_trade_open_array, trade_enumerators)
    for (d_index, down_index) in enumerate(down_ind)
        if OSV <= down_index
            right_index_number = current_partOf_trade_open_array + d_index
            if !trade_open_array[right_index_number]
                current_trade_column = "Trades_$(theta)t$(down_index)d"
                fill!(@view(trade_open_array[right_index_number]), true)
                @view(trade_enumerators[right_index_number])[1] += 1
                data[(data.Timestamp .== Timestamp), current_trade_column] = ["Open#$(trade_enumerators[right_index_number])"]
            end
        end
    end
end
function trade_close(data, Timestamp, theta, down_ind, trade_open_array, current_partOf_trade_open_array, trade_enumerators)
    for (d_index, down_index) in enumerate(down_ind)
        right_index_number = current_partOf_trade_open_array + d_index
        current_trading_slot = @view(trade_open_array[right_index_number])
        if current_trading_slot[1]
            current_trade_column = "Trades_$(theta)t$(down_index)d"
            fill!(current_trading_slot, false)
            data[(data.Timestamp .== Timestamp), current_trade_column] = ["Close#$(trade_enumerators[right_index_number])"]
        end
    end
end

function fit(data::DataFrame, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number})
    rows = Tables.namedtupleiterator(data)
    theta_length = length(thetas)
    down_ind_length = length(down_ind)
    DC_event = repeat(["init"], theta_length)
    DC_highest_price = repeat([data[1,:Close]], theta_length)
    DC_lowest_price = repeat([data[1,:Close]], theta_length)
    DC_highest_price_time = repeat([data[1, :Timestamp]], theta_length)
    DC_lowest_price_time = repeat([data[1, :Timestamp]], theta_length)
    last_downtrend_PDCC = zeros(theta_length)
    trade_open_array = repeat([false], (theta_length * down_ind_length))
    trade_enumerators = zeros(Int64, (theta_length * down_ind_length))
    function fit_implementation(row, index, theta, down_ind)
        current_theta_column = "Theta_$(theta)"
        current_exp_column = "Exp_$(theta)"
        current_partOf_trade_open_array = (index - 1) * down_ind_length
        if DC_event[index] == "downtrend" || DC_event[index] == "init"
            if row.Close >= DC_lowest_price[index] * (1 + theta)
                DC_event[index] = "uptrend"
                data[(data.Timestamp .== row.Timestamp), current_theta_column] = ["Up"]
                data[data.Timestamp .== DC_lowest_price_time[index], current_exp_column] = ["DXP"]
                DC_highest_price[index] = row.Close
                DC_highest_price_time[index] = row.Timestamp
                trade_close(data, row.Timestamp, theta, down_ind, trade_open_array, current_partOf_trade_open_array, trade_enumerators)

            # if we still in a downtrend we check whether we can do a trade.
            elseif !iszero(last_downtrend_PDCC[index])
                PDCC = last_downtrend_PDCC[index]
                OSV = ((row.Close - PDCC) / PDCC) / theta
                trade_open(data, row.Timestamp, theta, OSV, down_ind, trade_open_array, current_partOf_trade_open_array, trade_enumerators)
            end

            if row.Close <= DC_lowest_price[index]
                DC_lowest_price[index] = row.Close
                DC_lowest_price_time[index] = row.Timestamp
            end
        end
        if DC_event[index] == "uptrend" || DC_event[index] == "init"
            if row.Close <= DC_highest_price[index] * (1 - theta)
                DC_event[index] = "downtrend"
                data[(data.Timestamp .== row.Timestamp), current_theta_column] = ["Down"]
                last_downtrend_PDCC[index] = row.Close
                data[(data.Timestamp .== DC_highest_price_time[index]), current_exp_column] = ["UXP"]
                DC_lowest_price[index] = row.Close
                DC_lowest_price_time[index] = row.Timestamp
            end
            if row.Close >= DC_highest_price[index]
                DC_highest_price[index] = row.Close
                DC_highest_price_time[index] = row.Timestamp
            end
        end
    end
    # Main function loop
    for row in rows
        for (index, theta) in enumerate(thetas)
            fit_implementation(row, index, theta, down_ind)
        end
    end
    return data
end

function find_best_theta_down_index(data::DataFrame)
    trades_df = data[!, r"Trades_"]
    for col in eachcol(trades_df)
        notempty_rows = col[.!ismissing.(col), :]
    end
end
end