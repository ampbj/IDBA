module IDBA

using Dates
using DataFrames
using CSV
using CategoricalArrays
using Statistics
using MLJ
using ProgressMeter

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
    unique!(data)
    sort!(thetas)
    sort!(down_ind)
    return data, thetas, down_ind
end

function pct_change(input::AbstractVector{<:Number}, period::Int=1)
    res = @view(input[(period + 1):end]) ./ @view(input[1:(end - period)]) .- 1
    [fill(missing, period); res]
end

function prepare(data::DataFrame, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number}, p)
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
            ProgressMeter.next!(p)
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

function fit(data::DataFrame, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number}, p)
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
            ProgressMeter.next!(p)
        end
    end
    return data
end

function check_trade_numbers(trades_names)
    open_trade_number = match(r"^\w*#(\d*)", String(trades_names[1]))[1]
    close_trade_number = match(r"^\w*#(\d*)", String(trades_names[2]))[1]
    if open_trade_number != close_trade_number
        error("Open trade: $(open_trade_number) 
            is not paired against it's close trade: $(close_trade_number)")
    else
        return(open_trade_number)
    end
end

function calculate_trade_analytics(trade_number::Number, analytics_dataframe, trade_tuple, initial_capital)
    # When buying use Ask price. When selling use Bid price.
    all_capitals = analytics_dataframe[.!iszero.(analytics_dataframe.Capital), :Capital]
    last_capital = initial_capital
    if !isempty(all_capitals)
        last_capital = last(all_capitals)
    end
    convert(Int64, trade_number)
    buy_time, ask_price = trade_tuple[1,[:Timestamp, :Ask]]
    sell_time, bid_price = trade_tuple[2,[:Timestamp, :Bid]]
    p_l = round(((bid_price * last_capital) - (ask_price * last_capital)), digits=5)
    tt =  Dates.Minute(sell_time - buy_time)
    current_capital = round(last_capital + p_l, digits=2)
    # Calculating drawdown:
    DD = 0
    if p_l < 0
        maximum_capital = 0
        if !isempty(all_capitals)
            maximum_capital = maximum(all_capitals)
        end
        if maximum_capital < initial_capital
            maximum_capital = initial_capital
        end
        if !isnan(maximum_capital) || maximum_capital != 0
            DD = round((abs((current_capital - maximum_capital) / maximum_capital) * 100), digits=3)
        end
    else
        all_dds = analytics_dataframe[!, :DD]
        if !isempty(all_dds)
            DD = maximum(all_dds)
        end
    end
    # End of DD calculation
    analytics_dataframe[trade_number, [:P_L, :TT, :Capital, :DD]] = [p_l, tt, current_capital, DD]
end

function find_highest_return(analytics_dataframes)
    highest_return = Dict(:name => "", :return_value => 0.0)
    highest_return_df = undef
    for (df_dict, df) in analytics_dataframes
        last_return = last(df[.!ismissing.(df[!,:Capital]) ,:Capital])
        push!(df_dict, :highest_return => last_return)
        if last_return > highest_return[:return_value]
            highest_return[:name] = df_dict[:name]
            highest_return[:return_value] = last_return
            highest_return_df = df
        end
    end
    return highest_return, highest_return_df
end

function find_best_theta_down_index(data::DataFrame, initial_capital::Float64)
    prices_vec = ["Timestamp", "Close", "Ask", "Bid", "pct_change"]
    trades_column_names = names(data[!, r"Trades_"])
    df = @view data[!, [prices_vec...,trades_column_names...]]
    analytics_dataframes = Array{Pair{Dict{Symbol,Union{String,Float64}},DataFrame},1}(undef, length(trades_column_names))
    for (col_index, col_name) in enumerate(trades_column_names)
        non_empty_rows = @view data[.!ismissing.(data[:, col_name]),[prices_vec..., col_name]]
        numberOf_rows = nrow(non_empty_rows)
        if !iszero(numberOf_rows)
            offset = 1
            numberOf_df_rows = 0
            if numberOf_df_rows % 2 == 0
                numberOf_df_rows = Int(ceil(numberOf_rows / 2))
            else
                numberOf_df_rows = Int(ceil(numberOf_rows / 2)) + 1
            end
            analytics_df = DataFrame(P_L=zeros(numberOf_df_rows), TT=Array{Minute,1}(undef, numberOf_df_rows), Capital=zeros(numberOf_df_rows), DD=zeros(numberOf_df_rows))
            analytics_dataframes[col_index] = Dict(:name => col_name) => analytics_df
            analytics_dataframe = analytics_dataframes[col_index]
            for index in 1:2:numberOf_rows
                # making sure that we are not asking for out of bound rows.
                if index + offset <= numberOf_rows
                    trade_tuple = @view non_empty_rows[index:(index + offset), :]
                    trades_names = @view trade_tuple[:, col_name]
                    trade_number  = parse(Int64, check_trade_numbers(trades_names))
                    calculate_trade_analytics(trade_number, analytics_dataframe.second, trade_tuple, initial_capital)
                # what if we have open trades? Following will handle it.
                elseif index == numberOf_rows
                    trade_row = non_empty_rows[index, :]
                    trade_name = trade_row[col_name]
                    trade_number = parse(Int64, match(r"^\w*#(\d*)", String(trade_name))[1])
                    end_row = data[end,[prices_vec..., col_name]]
                    trade_row = DataFrame(trade_row)
                    push!(trade_row, end_row)
                    calculate_trade_analytics(trade_number, analytics_dataframe.second, trade_row, initial_capital)
                end
            end
        end
    end
    analytics_dataframes = analytics_dataframes[filter(i -> isassigned(analytics_dataframes, i), 1:length(analytics_dataframes))]
    if !isempty(analytics_dataframes)
        highest_return_dict, highest_return_analytics_df = find_highest_return(analytics_dataframes)
        params = match(r"^Trades_(\d*.\d*)t(-\d*.\d*)d", highest_return_dict[:name])
        theta = params[1]
        mdd = maximum(highest_return_analytics_df.DD)
        push!(highest_return_dict, :MDD => mdd)
        push!(highest_return_dict, :Theta => theta)
        highest_return_original_df = data[!, [prices_vec...,"Theta_" * theta, "Exp_" * theta, highest_return_dict[:name]]]
        return (highest_return_dict, highest_return_original_df, highest_return_analytics_df), analytics_dataframes
    else
        return (Dict(:name => "", :return_value => 0.0), DataFrame(), DataFrame()), nothing
    end
end

function label_best_params_df(tuple::Tuple{Dict,DataFrame,DataFrame})
    dict = tuple[1]
    theta = dict[:Theta]
    trades_column = Symbol(dict[:name])
    exp_column = Symbol("Exp_$(theta)")
    analytics_df = tuple[2]
    number_of_trades = nrow(analytics_df)
    labeled_df = DataFrame(STD=Array{Float64,1}(undef, number_of_trades), 
            TBO=Array{Minute,1}(undef, number_of_trades),
            Profitable=Array{Int64}(undef, number_of_trades))
    original_df = tuple[3]
    trades_df = @view original_df[.!ismissing.(original_df[!,trades_column]) .| .!ismissing.(original_df[!,exp_column]), :]
    rows = Tables.namedtupleiterator(trades_df)
    for (index, row) in enumerate(rows)
        if !ismissing(row[trades_column]) && (startswith(String(row[trades_column]), "Open#"))
            trade_number = parse(Int64, match(r"Open#(\d*)", String(row[trades_column]))[1])
            previous_rows = @view trades_df[1:index, :]
            exps = previous_rows[.!ismissing.(previous_rows[!, exp_column]),:]
            last_uxp = last(exps[exps[!, exp_column] .== "UXP", :])

            # calculating TBO for classification.
            uxp_time = last_uxp.Timestamp
            open_trade_time = row.Timestamp
            TBO = Dates.Minute(open_trade_time - uxp_time)

            # calculating profitability as a label
            profitability = analytics_df[trade_number, "P_L"] > 0 ? 1 : 0

            # calculating STD of downtrend period
            close_price_period = original_df[(original_df.Timestamp .>= uxp_time) .& (original_df.Timestamp .<=  open_trade_time), "Close"]
            close_price_std = std(close_price_period)

            # fill ML df
            labeled_df[trade_number,[:STD, :TBO, :Profitable]] = [close_price_std, TBO, profitability]
        end
    end
    labeled_df.TBO = Float64.(Dates.value.(labeled_df.TBO))
    return labeled_df
end

function train(data_path::String, thetas::AbstractVector{<:Number}, down_ind::AbstractVector{<:Number}, batch_size::Int, initial_capital::Float64; show_progress=true, save_to_csv="")
    (data, thetas, down_ind) = init(data_path, thetas, down_ind)
    theta_batches = [thetas[i:min(i + batch_size - 1, length(thetas))] for i in 1:batch_size:length(thetas)]
    down_ind_batches = [down_ind[i:min(i + batch_size - 1, length(down_ind))] for i in 1:batch_size:length(down_ind)]
    result_array = Array{Tuple{Dict,DataFrame,DataFrame},1}(undef, length(theta_batches) * length(down_ind_batches))
    all_analytics_dicts = Array{Dict{Symbol,Union{Float64,String}},1}(undef, 0)
    counter = 1
    progress_bar_size = (nrow(data) * length(thetas)) + (length(down_ind)^length(result_array)^length(thetas)^length(down_ind))
    p = Progress(progress_bar_size; enabled=show_progress)
    for theta_batch in theta_batches
        for down_ind_batch in down_ind_batches
            (data_prepared, _, _) = prepare(copy(data), theta_batch, down_ind_batch, p)
            trades = fit(data_prepared, theta_batch, down_ind_batch, p)
            (highest_return_dict, best_original_df, best_analytics_df), analytics_dataframes = find_best_theta_down_index(trades, initial_capital)
            result_array[counter] = (highest_return_dict, best_analytics_df, best_original_df)
            if !isnothing(analytics_dataframes)
                append!(all_analytics_dicts, first.(analytics_dataframes))
            end
            counter += 1
            [ProgressMeter.next!(p) for i in 1:length(down_ind_batch)]
        end
    end
    dicts = first.(result_array)
    maximum_return = maximum(get.(dicts, :return_value, 0))
    maximum_dict = [dic for dic in dicts if dic[:return_value] == maximum_return]
    maximum_dict = first(maximum_dict)
    final_array_element = [array_element for array_element in result_array if first(array_element)[:name] == maximum_dict[:name]]
    if !isempty(final_array_element)
        final_array_element = first(final_array_element)
        labeled_df = label_best_params_df(final_array_element)
        sort!(all_analytics_dicts, by=x -> x[:highest_return], rev=true)
        if !isempty(save_to_csv)
            CSV.write(save_to_csv * "/analytics.csv", final_array_element[2])
            CSV.write(save_to_csv * "/trades.csv", final_array_element[3])
            CSV.write(save_to_csv * "/labeled_df.csv", labeled_df)
        end
        ProgressMeter.finish!(p)
        return final_array_element, labeled_df, all_analytics_dicts
    else
    error("No trade was executed while using the supplied parameters!")
    end
end
        
function classification(df)
    y, X = unpack(df, ==(:Profitable), colname -> true)
    y = coerce(y, OrderedFactor)
    train, test = partition(eachindex(y), 0.5, shuffle=true, rng=44)   
    mstd = machine(Standardizer(), X)
	fit!(mstd)
	Xs = MLJ.transform(mstd, X)
    
end

function decisionTree(y, X)
    # model prediction using DecisionTree
    Tree = @iload DecisionTreeClassifier pkg = DecisionTree
    tree = Tree()
    clf = machine(tree, X, y)
end

end