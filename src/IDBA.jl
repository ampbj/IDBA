module IDBA

using Dates
using DataFrames
using CSV
using MySQL


function init(data_path::String, theta::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number})
    data = CSV.read(data_path, DataFrame)
    # Dealing with data
    data_names = names(data)
    timestamp_column = contains("Timestamp", data_names[1])
    Close_column = contains("Close", data_names[2])
    bid_column = contains("Ask", data_names[3])
    if ncol(data) < 3 || !timestamp_column || !Close_column || !ask_column
        error("Data is not aligned with the required structure!
                    Module expects at least Timestamp,Close and Ask columns")
    end
    # Dealing with theta and down_inds'
    theta_length = length(theta)
    if !isassigned(down_ind, theta_length)
        error("we need to have same number of down_inds' as thetas'")
    end
    return data, theta, down_ind
end

function pct_change(input::AbstractVector{<:Number}, period::Int=1)
    res = @view(input[(period + 1):end]) ./ @view(input[1:(end - period)]) .- 1
    [fill(missing, period); res]
end

function prepare(data::DataFrame, dc_offset::AbstractVector{<:Number}, Algo::Symbol, down_ind::AbstractVector{<:Number})
        # preparing dataframe for getting fit
    insertcols!(data, :pct_change => pct_change(data.Price))
    dropmissing!(data, :pct_change)
    if Algo == :TSFDC
        last_dc_offset = last(dc_offset)
    end
    for current_offset_value in dc_offset
        insertcols!(data, "Event_$(current_offset_value)" => "")
        if Algo == :Book
            insertcols!(data, "Event_$(current_offset_value)_TMV" => NaN)
            insertcols!(data, "Event_$(current_offset_value)_T" => NaN)
            insertcols!(data, "Event_$(current_offset_value)_R" => NaN)
        elseif Algo == :IDBA
            for down_index in down_ind
                insertcols!(data, "Event_$(current_offset_value)_OSV_down_ind_$(down_index)" => NaN)
            end
        elseif Algo == :TSFDC && current_offset_value == last_dc_offset
            insertcols!(data, "Event_$(current_offset_value)_BBTheta" => false)
            insertcols!(data, "Event_$(current_offset_value)_OSV" => NaN)
        end
    end
    return data, dc_offset, Algo, down_ind
end

function fit(data::DataFrame, dc_offset::AbstractVector{<:Number}, Algo::Symbol, down_ind::AbstractVector{<:Number})
    rows = Tables.namedtupleiterator(data)
    dc_offset_length = length(dc_offset)
    DC_event = repeat(["init"], dc_offset_length)
    DC_highest_price = repeat([data[1,:Price]], dc_offset_length)
    DC_lowest_price = repeat([data[1,:Price]], dc_offset_length)
    DC_highest_price_index = repeat([data[1, :Timestamp]], dc_offset_length)
    DC_lowest_price_index = repeat([data[1, :Timestamp]], dc_offset_length)
    last_dc_offset = last(dc_offset)
    if Algo == :IDBA
        IDBA_last_downtrend = Vector{DataFrame}(undef, length(dc_offset))
    end
    function fit_implementation(row, index, offset_value, current_offset_column, last_round=false)
        if DC_event[index] == "downtrend" || DC_event[index] == "init"
            if row.Price >= (DC_lowest_price[index] * (1 + offset_value))
                DC_event[index] = "uptrend"
                data[(data.Timestamp .== row.Timestamp), current_offset_column] = ["Up"]
                check_null_value = data[(data.Timestamp .== DC_lowest_price_index[index]), current_offset_column]
                isempty(check_null_value[1]) ?
                    data[data.Timestamp .== DC_lowest_price_index[index], current_offset_column] = ["DXP"] :
                    data[data.Timestamp .== DC_lowest_price_index[index], current_offset_column] = ["Down+DXP"]
                if Algo == :IDBA
                    IDBA_last_downtrend[index] = DataFrame()
                end
                DC_highest_price[index] = row.Price
                DC_highest_price_index[index] = row.Timestamp
            end
            if Algo == :IDBA && isassigned(IDBA_last_downtrend, index) && !isempty(IDBA_last_downtrend[index])
                last_downtrend_time = IDBA_last_downtrend[index].Timestamp[1]
                last_downtrend_price = IDBA_last_downtrend[index].Price[1]
                if row.Timestamp > last_downtrend_time
                    OSV = ((row.Price - last_downtrend_price) / last_downtrend_price) / offset_value
                    for down_index in down_ind
                        if OSV > down_index
                            data[(data.Timestamp .== row.Timestamp), "$(current_offset_column)_OSV_down_ind_$(down_index)"] = [OSV]
                        end
                    end
                end
            end
            if row.Price <= DC_lowest_price[index]
                DC_lowest_price[index] = row.Price
                DC_lowest_price_index[index] = row.Timestamp
            end
        end
        if DC_event[index] == "uptrend" || DC_event[index] == "init"
            if row.Price <= (DC_highest_price[index] * (1 - offset_value))
                DC_event[index] = "downtrend"
                data[(data.Timestamp .== row.Timestamp), current_offset_column] = ["Down"]
                if Algo == :IDBA
                    IDBA_last_downtrend[index] = data[(data.Timestamp .== row.Timestamp), [:Timestamp, :Price]]
                end
                check_null_value = data[(data.Timestamp .== DC_highest_price_index[index]), current_offset_column]
                isempty(check_null_value[1]) ?
                    data[(data.Timestamp .== DC_highest_price_index[index]), current_offset_column] = ["UXP"] :
                    data[(data.Timestamp .== DC_highest_price_index[index]), current_offset_column] = ["Up+UXP"]
                DC_lowest_price[index] = row.Price
                DC_lowest_price_index[index] = row.Timestamp
            end
            if row.Price >= DC_highest_price[index]
                DC_highest_price[index] = row.Price
                DC_highest_price_index[index] = row.Timestamp
            end
        end
    end
        for row in rows
            for (index, offset_value) in enumerate(dc_offset)
                current_offset_column = "Event_$(offset_value)"
                fit_implementation(row, index, offset_value, current_offset_column)
            end
        end
    end
    return data
end


end