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
        insertcols!(data, "$(theta)_theta"   => theta_column)
        insertcols!(data, "$(theta)_Exp"   => ext_column)
        for down_index in down_ind
            down_index_column = CategoricalArray{Union{Missing,String}}(repeat([missing], data_length))
            levels!(down_index_column, ["trade"]; allowmissing=true)
            down_index_column = compress(down_index_column)
            insertcols!(data, "$(theta)t$(down_index)d_trades"   => down_index_column)
        end
    end
    return data, thetas, down_ind
end

function fit(data::DataFrame, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number})
    rows = Tables.namedtupleiterator(data)
    theta_length = length(thetas)
    DC_event = repeat(["init"], theta_length)
    DC_highest_price = repeat([data[1,:Close]], theta_length)
    DC_lowest_price = repeat([data[1,:Close]], theta_length)
    DC_highest_price_time = repeat([data[1, :Timestamp]], theta_length)
    DC_lowest_price_time = repeat([data[1, :Timestamp]], theta_length)
    last_downtrend_PDCC = zeros(theta_length)
    trades_open = repeat([false], )
    function fit_implementation(row, index, theta, down_ind)
        current_theta_column = "$(theta)_theta"
        current_exp_column = "$(theta)_Exp"
        current_trade_column = "$(theta)t$(down_index)d_trades"
        if DC_event[index] == "downtrend" || DC_event[index] == "init"
            if row.Close >= DC_lowest_price[index] * (1 + theta)
                DC_event[index] = "uptrend"
                data[(data.Timestamp .== row.Timestamp), current_theta_column] = ["Up"]
                data[data.Timestamp .== DC_lowest_price_time[index], current_exp_column] = ["DXP"]
                DC_highest_price[index] = row.Close
                DC_highest_price_time[index] = row.Timestamp

            elseif !iszero(last_downtrend_PDCC[index])
                PDCC = last_downtrend_PDCC[index]
                OSV = ((row.Close - PDCC) / PDCC) / theta
                for down_index in down_ind
                    if OSV <= down_index
                        #TRADE BUY
                    end
                end
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

end