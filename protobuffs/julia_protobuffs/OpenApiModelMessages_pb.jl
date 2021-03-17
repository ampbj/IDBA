# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

const ProtoOAPayloadType = (;[
    Symbol("PROTO_OA_APPLICATION_AUTH_REQ") => Int32(2100),
    Symbol("PROTO_OA_APPLICATION_AUTH_RES") => Int32(2101),
    Symbol("PROTO_OA_ACCOUNT_AUTH_REQ") => Int32(2102),
    Symbol("PROTO_OA_ACCOUNT_AUTH_RES") => Int32(2103),
    Symbol("PROTO_OA_VERSION_REQ") => Int32(2104),
    Symbol("PROTO_OA_VERSION_RES") => Int32(2105),
    Symbol("PROTO_OA_NEW_ORDER_REQ") => Int32(2106),
    Symbol("PROTO_OA_TRAILING_SL_CHANGED_EVENT") => Int32(2107),
    Symbol("PROTO_OA_CANCEL_ORDER_REQ") => Int32(2108),
    Symbol("PROTO_OA_AMEND_ORDER_REQ") => Int32(2109),
    Symbol("PROTO_OA_AMEND_POSITION_SLTP_REQ") => Int32(2110),
    Symbol("PROTO_OA_CLOSE_POSITION_REQ") => Int32(2111),
    Symbol("PROTO_OA_ASSET_LIST_REQ") => Int32(2112),
    Symbol("PROTO_OA_ASSET_LIST_RES") => Int32(2113),
    Symbol("PROTO_OA_SYMBOLS_LIST_REQ") => Int32(2114),
    Symbol("PROTO_OA_SYMBOLS_LIST_RES") => Int32(2115),
    Symbol("PROTO_OA_SYMBOL_BY_ID_REQ") => Int32(2116),
    Symbol("PROTO_OA_SYMBOL_BY_ID_RES") => Int32(2117),
    Symbol("PROTO_OA_SYMBOLS_FOR_CONVERSION_REQ") => Int32(2118),
    Symbol("PROTO_OA_SYMBOLS_FOR_CONVERSION_RES") => Int32(2119),
    Symbol("PROTO_OA_SYMBOL_CHANGED_EVENT") => Int32(2120),
    Symbol("PROTO_OA_TRADER_REQ") => Int32(2121),
    Symbol("PROTO_OA_TRADER_RES") => Int32(2122),
    Symbol("PROTO_OA_TRADER_UPDATE_EVENT") => Int32(2123),
    Symbol("PROTO_OA_RECONCILE_REQ") => Int32(2124),
    Symbol("PROTO_OA_RECONCILE_RES") => Int32(2125),
    Symbol("PROTO_OA_EXECUTION_EVENT") => Int32(2126),
    Symbol("PROTO_OA_SUBSCRIBE_SPOTS_REQ") => Int32(2127),
    Symbol("PROTO_OA_SUBSCRIBE_SPOTS_RES") => Int32(2128),
    Symbol("PROTO_OA_UNSUBSCRIBE_SPOTS_REQ") => Int32(2129),
    Symbol("PROTO_OA_UNSUBSCRIBE_SPOTS_RES") => Int32(2130),
    Symbol("PROTO_OA_SPOT_EVENT") => Int32(2131),
    Symbol("PROTO_OA_ORDER_ERROR_EVENT") => Int32(2132),
    Symbol("PROTO_OA_DEAL_LIST_REQ") => Int32(2133),
    Symbol("PROTO_OA_DEAL_LIST_RES") => Int32(2134),
    Symbol("PROTO_OA_SUBSCRIBE_LIVE_TRENDBAR_REQ") => Int32(2135),
    Symbol("PROTO_OA_UNSUBSCRIBE_LIVE_TRENDBAR_REQ") => Int32(2136),
    Symbol("PROTO_OA_GET_TRENDBARS_REQ") => Int32(2137),
    Symbol("PROTO_OA_GET_TRENDBARS_RES") => Int32(2138),
    Symbol("PROTO_OA_EXPECTED_MARGIN_REQ") => Int32(2139),
    Symbol("PROTO_OA_EXPECTED_MARGIN_RES") => Int32(2140),
    Symbol("PROTO_OA_MARGIN_CHANGED_EVENT") => Int32(2141),
    Symbol("PROTO_OA_ERROR_RES") => Int32(2142),
    Symbol("PROTO_OA_CASH_FLOW_HISTORY_LIST_REQ") => Int32(2143),
    Symbol("PROTO_OA_CASH_FLOW_HISTORY_LIST_RES") => Int32(2144),
    Symbol("PROTO_OA_GET_TICKDATA_REQ") => Int32(2145),
    Symbol("PROTO_OA_GET_TICKDATA_RES") => Int32(2146),
    Symbol("PROTO_OA_ACCOUNTS_TOKEN_INVALIDATED_EVENT") => Int32(2147),
    Symbol("PROTO_OA_CLIENT_DISCONNECT_EVENT") => Int32(2148),
    Symbol("PROTO_OA_GET_ACCOUNTS_BY_ACCESS_TOKEN_REQ") => Int32(2149),
    Symbol("PROTO_OA_GET_ACCOUNTS_BY_ACCESS_TOKEN_RES") => Int32(2150),
    Symbol("PROTO_OA_GET_CTID_PROFILE_BY_TOKEN_REQ") => Int32(2151),
    Symbol("PROTO_OA_GET_CTID_PROFILE_BY_TOKEN_RES") => Int32(2152),
    Symbol("PROTO_OA_ASSET_CLASS_LIST_REQ") => Int32(2153),
    Symbol("PROTO_OA_ASSET_CLASS_LIST_RES") => Int32(2154),
    Symbol("PROTO_OA_DEPTH_EVENT") => Int32(2155),
    Symbol("PROTO_OA_SUBSCRIBE_DEPTH_QUOTES_REQ") => Int32(2156),
    Symbol("PROTO_OA_SUBSCRIBE_DEPTH_QUOTES_RES") => Int32(2157),
    Symbol("PROTO_OA_UNSUBSCRIBE_DEPTH_QUOTES_REQ") => Int32(2158),
    Symbol("PROTO_OA_UNSUBSCRIBE_DEPTH_QUOTES_RES") => Int32(2159),
    Symbol("PROTO_OA_SYMBOL_CATEGORY_REQ") => Int32(2160),
    Symbol("PROTO_OA_SYMBOL_CATEGORY_RES") => Int32(2161),
    Symbol("PROTO_OA_ACCOUNT_LOGOUT_REQ") => Int32(2162),
    Symbol("PROTO_OA_ACCOUNT_LOGOUT_RES") => Int32(2163),
    Symbol("PROTO_OA_ACCOUNT_DISCONNECT_EVENT") => Int32(2164),
    Symbol("PROTO_OA_SUBSCRIBE_LIVE_TRENDBAR_RES") => Int32(2165),
    Symbol("PROTO_OA_UNSUBSCRIBE_LIVE_TRENDBAR_RES") => Int32(2166),
    Symbol("PROTO_OA_MARGIN_CALL_LIST_REQ") => Int32(2167),
    Symbol("PROTO_OA_MARGIN_CALL_LIST_RES") => Int32(2168),
    Symbol("PROTO_OA_MARGIN_CALL_UPDATE_REQ") => Int32(2169),
    Symbol("PROTO_OA_MARGIN_CALL_UPDATE_RES") => Int32(2170),
    Symbol("PROTO_OA_MARGIN_CALL_UPDATE_EVENT") => Int32(2171),
    Symbol("PROTO_OA_MARGIN_CALL_TRIGGER_EVENT") => Int32(2172),
    Symbol("PROTO_OA_REFRESH_TOKEN_REQ") => Int32(2173),
    Symbol("PROTO_OA_REFRESH_TOKEN_RES") => Int32(2174),
]...)

const ProtoOADayOfWeek = (;[
    Symbol("NONE") => Int32(0),
    Symbol("MONDAY") => Int32(1),
    Symbol("TUESDAY") => Int32(2),
    Symbol("WEDNESDAY") => Int32(3),
    Symbol("THURSDAY") => Int32(4),
    Symbol("FRIDAY") => Int32(5),
    Symbol("SATURDAY") => Int32(6),
    Symbol("SUNDAY") => Int32(7),
]...)

const ProtoOACommissionType = (;[
    Symbol("USD_PER_MILLION_USD") => Int32(1),
    Symbol("USD_PER_LOT") => Int32(2),
    Symbol("PERCENTAGE_OF_VALUE") => Int32(3),
    Symbol("QUOTE_CCY_PER_LOT") => Int32(4),
]...)

const ProtoOASymbolDistanceType = (;[
    Symbol("SYMBOL_DISTANCE_IN_POINTS") => Int32(1),
    Symbol("SYMBOL_DISTANCE_IN_PERCENTAGE") => Int32(2),
]...)

const ProtoOAMinCommissionType = (;[
    Symbol("CURRENCY") => Int32(1),
    Symbol("QUOTE_CURRENCY") => Int32(2),
]...)

const ProtoOATradingMode = (;[
    Symbol("ENABLED") => Int32(0),
    Symbol("DISABLED_WITHOUT_PENDINGS_EXECUTION") => Int32(1),
    Symbol("DISABLED_WITH_PENDINGS_EXECUTION") => Int32(2),
    Symbol("CLOSE_ONLY_MODE") => Int32(3),
]...)

const ProtoOASwapCalculationType = (;[
    Symbol("PIPS") => Int32(0),
    Symbol("PERCENTAGE") => Int32(1),
]...)

const ProtoOAAccessRights = (;[
    Symbol("FULL_ACCESS") => Int32(0),
    Symbol("CLOSE_ONLY") => Int32(1),
    Symbol("NO_TRADING") => Int32(2),
    Symbol("NO_LOGIN") => Int32(3),
]...)

const ProtoOATotalMarginCalculationType = (;[
    Symbol("MAX") => Int32(0),
    Symbol("SUM") => Int32(1),
    Symbol("NET") => Int32(2),
]...)

const ProtoOAAccountType = (;[
    Symbol("HEDGED") => Int32(0),
    Symbol("NETTED") => Int32(1),
    Symbol("SPREAD_BETTING") => Int32(2),
]...)

const ProtoOAPositionStatus = (;[
    Symbol("POSITION_STATUS_OPEN") => Int32(1),
    Symbol("POSITION_STATUS_CLOSED") => Int32(2),
    Symbol("POSITION_STATUS_CREATED") => Int32(3),
    Symbol("POSITION_STATUS_ERROR") => Int32(4),
]...)

const ProtoOATradeSide = (;[
    Symbol("BUY") => Int32(1),
    Symbol("SELL") => Int32(2),
]...)

const ProtoOAOrderType = (;[
    Symbol("MARKET") => Int32(1),
    Symbol("LIMIT") => Int32(2),
    Symbol("STOP") => Int32(3),
    Symbol("STOP_LOSS_TAKE_PROFIT") => Int32(4),
    Symbol("MARKET_RANGE") => Int32(5),
    Symbol("STOP_LIMIT") => Int32(6),
]...)

const ProtoOATimeInForce = (;[
    Symbol("GOOD_TILL_DATE") => Int32(1),
    Symbol("GOOD_TILL_CANCEL") => Int32(2),
    Symbol("IMMEDIATE_OR_CANCEL") => Int32(3),
    Symbol("FILL_OR_KILL") => Int32(4),
    Symbol("MARKET_ON_OPEN") => Int32(5),
]...)

const ProtoOAOrderStatus = (;[
    Symbol("ORDER_STATUS_ACCEPTED") => Int32(1),
    Symbol("ORDER_STATUS_FILLED") => Int32(2),
    Symbol("ORDER_STATUS_REJECTED") => Int32(3),
    Symbol("ORDER_STATUS_EXPIRED") => Int32(4),
    Symbol("ORDER_STATUS_CANCELLED") => Int32(5),
]...)

const ProtoOAOrderTriggerMethod = (;[
    Symbol("TRADE") => Int32(1),
    Symbol("OPPOSITE") => Int32(2),
    Symbol("DOUBLE_TRADE") => Int32(3),
    Symbol("DOUBLE_OPPOSITE") => Int32(4),
]...)

const ProtoOAExecutionType = (;[
    Symbol("ORDER_ACCEPTED") => Int32(2),
    Symbol("ORDER_FILLED") => Int32(3),
    Symbol("ORDER_REPLACED") => Int32(4),
    Symbol("ORDER_CANCELLED") => Int32(5),
    Symbol("ORDER_EXPIRED") => Int32(6),
    Symbol("ORDER_REJECTED") => Int32(7),
    Symbol("ORDER_CANCEL_REJECTED") => Int32(8),
    Symbol("SWAP") => Int32(9),
    Symbol("DEPOSIT_WITHDRAW") => Int32(10),
    Symbol("ORDER_PARTIAL_FILL") => Int32(11),
    Symbol("BONUS_DEPOSIT_WITHDRAW") => Int32(12),
]...)

const ProtoOAChangeBonusType = (;[
    Symbol("BONUS_DEPOSIT") => Int32(0),
    Symbol("BONUS_WITHDRAW") => Int32(1),
]...)

const ProtoOAChangeBalanceType = (;[
    Symbol("BALANCE_DEPOSIT") => Int32(0),
    Symbol("BALANCE_WITHDRAW") => Int32(1),
    Symbol("BALANCE_DEPOSIT_STRATEGY_COMMISSION_INNER") => Int32(3),
    Symbol("BALANCE_WITHDRAW_STRATEGY_COMMISSION_INNER") => Int32(4),
    Symbol("BALANCE_DEPOSIT_IB_COMMISSIONS") => Int32(5),
    Symbol("BALANCE_WITHDRAW_IB_SHARED_PERCENTAGE") => Int32(6),
    Symbol("BALANCE_DEPOSIT_IB_SHARED_PERCENTAGE_FROM_SUB_IB") => Int32(7),
    Symbol("BALANCE_DEPOSIT_IB_SHARED_PERCENTAGE_FROM_BROKER") => Int32(8),
    Symbol("BALANCE_DEPOSIT_REBATE") => Int32(9),
    Symbol("BALANCE_WITHDRAW_REBATE") => Int32(10),
    Symbol("BALANCE_DEPOSIT_STRATEGY_COMMISSION_OUTER") => Int32(11),
    Symbol("BALANCE_WITHDRAW_STRATEGY_COMMISSION_OUTER") => Int32(12),
    Symbol("BALANCE_WITHDRAW_BONUS_COMPENSATION") => Int32(13),
    Symbol("BALANCE_WITHDRAW_IB_SHARED_PERCENTAGE_TO_BROKER") => Int32(14),
    Symbol("BALANCE_DEPOSIT_DIVIDENDS") => Int32(15),
    Symbol("BALANCE_WITHDRAW_DIVIDENDS") => Int32(16),
    Symbol("BALANCE_WITHDRAW_GSL_CHARGE") => Int32(17),
    Symbol("BALANCE_WITHDRAW_ROLLOVER") => Int32(18),
    Symbol("BALANCE_DEPOSIT_NONWITHDRAWABLE_BONUS") => Int32(19),
    Symbol("BALANCE_WITHDRAW_NONWITHDRAWABLE_BONUS") => Int32(20),
    Symbol("BALANCE_DEPOSIT_SWAP") => Int32(21),
    Symbol("BALANCE_WITHDRAW_SWAP") => Int32(22),
    Symbol("BALANCE_DEPOSIT_MANAGEMENT_FEE") => Int32(27),
    Symbol("BALANCE_WITHDRAW_MANAGEMENT_FEE") => Int32(28),
    Symbol("BALANCE_DEPOSIT_PERFORMANCE_FEE") => Int32(29),
    Symbol("BALANCE_WITHDRAW_FOR_SUBACCOUNT") => Int32(30),
    Symbol("BALANCE_DEPOSIT_TO_SUBACCOUNT") => Int32(31),
    Symbol("BALANCE_WITHDRAW_FROM_SUBACCOUNT") => Int32(32),
    Symbol("BALANCE_DEPOSIT_FROM_SUBACCOUNT") => Int32(33),
    Symbol("BALANCE_WITHDRAW_COPY_FEE") => Int32(34),
    Symbol("BALANCE_WITHDRAW_INACTIVITY_FEE") => Int32(35),
    Symbol("BALANCE_DEPOSIT_TRANSFER") => Int32(36),
    Symbol("BALANCE_WITHDRAW_TRANSFER") => Int32(37),
    Symbol("BALANCE_DEPOSIT_CONVERTED_BONUS") => Int32(38),
]...)

const ProtoOADealStatus = (;[
    Symbol("FILLED") => Int32(2),
    Symbol("PARTIALLY_FILLED") => Int32(3),
    Symbol("REJECTED") => Int32(4),
    Symbol("INTERNALLY_REJECTED") => Int32(5),
    Symbol("ERROR") => Int32(6),
    Symbol("MISSED") => Int32(7),
]...)

const ProtoOATrendbarPeriod = (;[
    Symbol("M1") => Int32(1),
    Symbol("M2") => Int32(2),
    Symbol("M3") => Int32(3),
    Symbol("M4") => Int32(4),
    Symbol("M5") => Int32(5),
    Symbol("M10") => Int32(6),
    Symbol("M15") => Int32(7),
    Symbol("M30") => Int32(8),
    Symbol("H1") => Int32(9),
    Symbol("H4") => Int32(10),
    Symbol("H12") => Int32(11),
    Symbol("D1") => Int32(12),
    Symbol("W1") => Int32(13),
    Symbol("MN1") => Int32(14),
]...)

const ProtoOAQuoteType = (;[
    Symbol("BID") => Int32(1),
    Symbol("ASK") => Int32(2),
]...)

const ProtoOAClientPermissionScope = (;[
    Symbol("SCOPE_VIEW") => Int32(0),
    Symbol("SCOPE_TRADE") => Int32(1),
]...)

const ProtoOANotificationType = (;[
    Symbol("MARGIN_LEVEL_THRESHOLD_1") => Int32(61),
    Symbol("MARGIN_LEVEL_THRESHOLD_2") => Int32(62),
    Symbol("MARGIN_LEVEL_THRESHOLD_3") => Int32(63),
]...)

const ProtoOAErrorCode = (;[
    Symbol("OA_AUTH_TOKEN_EXPIRED") => Int32(1),
    Symbol("ACCOUNT_NOT_AUTHORIZED") => Int32(2),
    Symbol("ALREADY_LOGGED_IN") => Int32(14),
    Symbol("CH_CLIENT_AUTH_FAILURE") => Int32(101),
    Symbol("CH_CLIENT_NOT_AUTHENTICATED") => Int32(102),
    Symbol("CH_CLIENT_ALREADY_AUTHENTICATED") => Int32(103),
    Symbol("CH_ACCESS_TOKEN_INVALID") => Int32(104),
    Symbol("CH_SERVER_NOT_REACHABLE") => Int32(105),
    Symbol("CH_CTID_TRADER_ACCOUNT_NOT_FOUND") => Int32(106),
    Symbol("CH_OA_CLIENT_NOT_FOUND") => Int32(107),
    Symbol("REQUEST_FREQUENCY_EXCEEDED") => Int32(108),
    Symbol("SERVER_IS_UNDER_MAINTENANCE") => Int32(109),
    Symbol("CHANNEL_IS_BLOCKED") => Int32(110),
    Symbol("CONNECTIONS_LIMIT_EXCEEDED") => Int32(67),
    Symbol("WORSE_GSL_NOT_ALLOWED") => Int32(68),
    Symbol("SYMBOL_HAS_HOLIDAY") => Int32(69),
    Symbol("NOT_SUBSCRIBED_TO_SPOTS") => Int32(112),
    Symbol("ALREADY_SUBSCRIBED") => Int32(113),
    Symbol("SYMBOL_NOT_FOUND") => Int32(114),
    Symbol("UNKNOWN_SYMBOL") => Int32(115),
    Symbol("INCORRECT_BOUNDARIES") => Int32(35),
    Symbol("NO_QUOTES") => Int32(117),
    Symbol("NOT_ENOUGH_MONEY") => Int32(118),
    Symbol("MAX_EXPOSURE_REACHED") => Int32(119),
    Symbol("POSITION_NOT_FOUND") => Int32(120),
    Symbol("ORDER_NOT_FOUND") => Int32(121),
    Symbol("POSITION_NOT_OPEN") => Int32(122),
    Symbol("POSITION_LOCKED") => Int32(123),
    Symbol("TOO_MANY_POSITIONS") => Int32(124),
    Symbol("TRADING_BAD_VOLUME") => Int32(125),
    Symbol("TRADING_BAD_STOPS") => Int32(126),
    Symbol("TRADING_BAD_PRICES") => Int32(127),
    Symbol("TRADING_BAD_STAKE") => Int32(128),
    Symbol("PROTECTION_IS_TOO_CLOSE_TO_MARKET") => Int32(129),
    Symbol("TRADING_BAD_EXPIRATION_DATE") => Int32(130),
    Symbol("PENDING_EXECUTION") => Int32(131),
    Symbol("TRADING_DISABLED") => Int32(132),
    Symbol("TRADING_NOT_ALLOWED") => Int32(133),
    Symbol("UNABLE_TO_CANCEL_ORDER") => Int32(134),
    Symbol("UNABLE_TO_AMEND_ORDER") => Int32(135),
    Symbol("SHORT_SELLING_NOT_ALLOWED") => Int32(136),
]...)

const ProtoOALimitedRiskMarginCalculationStrategy = (;[
    Symbol("ACCORDING_TO_LEVERAGE") => Int32(0),
    Symbol("ACCORDING_TO_GSL") => Int32(1),
    Symbol("ACCORDING_TO_GSL_AND_LEVERAGE") => Int32(2),
]...)

mutable struct ProtoOAAsset <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAsset(; kwargs...)
        obj = new(meta(ProtoOAAsset), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAAsset
const __meta_ProtoOAAsset = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAsset})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAsset)
            __meta_ProtoOAAsset[] = target = ProtoMeta(ProtoOAAsset)
            req = Symbol[:assetId,:name]
            allflds = Pair{Symbol,Union{Type,String}}[:assetId => Int64, :name => AbstractString, :displayName => AbstractString, :digits => Int32]
            meta(target, ProtoOAAsset, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAsset[]
    end
end
function Base.getproperty(obj::ProtoOAAsset, name::Symbol)
    if name === :assetId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :displayName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :digits
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOALightSymbol <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOALightSymbol(; kwargs...)
        obj = new(meta(ProtoOALightSymbol), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOALightSymbol
const __meta_ProtoOALightSymbol = Ref{ProtoMeta}()
function meta(::Type{ProtoOALightSymbol})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOALightSymbol)
            __meta_ProtoOALightSymbol[] = target = ProtoMeta(ProtoOALightSymbol)
            req = Symbol[:symbolId]
            allflds = Pair{Symbol,Union{Type,String}}[:symbolId => Int64, :symbolName => AbstractString, :enabled => Bool, :baseAssetId => Int64, :quoteAssetId => Int64, :symbolCategoryId => Int64, :description => AbstractString]
            meta(target, ProtoOALightSymbol, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOALightSymbol[]
    end
end
function Base.getproperty(obj::ProtoOALightSymbol, name::Symbol)
    if name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :enabled
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :baseAssetId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :quoteAssetId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolCategoryId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAArchivedSymbol <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAArchivedSymbol(; kwargs...)
        obj = new(meta(ProtoOAArchivedSymbol), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAArchivedSymbol
const __meta_ProtoOAArchivedSymbol = Ref{ProtoMeta}()
function meta(::Type{ProtoOAArchivedSymbol})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAArchivedSymbol)
            __meta_ProtoOAArchivedSymbol[] = target = ProtoMeta(ProtoOAArchivedSymbol)
            req = Symbol[:symbolId,:name,:utcLastUpdateTimestamp]
            allflds = Pair{Symbol,Union{Type,String}}[:symbolId => Int64, :name => AbstractString, :utcLastUpdateTimestamp => Int64, :description => AbstractString]
            meta(target, ProtoOAArchivedSymbol, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAArchivedSymbol[]
    end
end
function Base.getproperty(obj::ProtoOAArchivedSymbol, name::Symbol)
    if name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :utcLastUpdateTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolCategory <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolCategory(; kwargs...)
        obj = new(meta(ProtoOASymbolCategory), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOASymbolCategory
const __meta_ProtoOASymbolCategory = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolCategory})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolCategory)
            __meta_ProtoOASymbolCategory[] = target = ProtoMeta(ProtoOASymbolCategory)
            req = Symbol[:id,:assetClassId,:name]
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64, :assetClassId => Int64, :name => AbstractString]
            meta(target, ProtoOASymbolCategory, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolCategory[]
    end
end
function Base.getproperty(obj::ProtoOASymbolCategory, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :assetClassId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAInterval <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAInterval(; kwargs...)
        obj = new(meta(ProtoOAInterval), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAInterval
const __meta_ProtoOAInterval = Ref{ProtoMeta}()
function meta(::Type{ProtoOAInterval})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAInterval)
            __meta_ProtoOAInterval[] = target = ProtoMeta(ProtoOAInterval)
            req = Symbol[:startSecond,:endSecond]
            fnum = Int[3,4]
            allflds = Pair{Symbol,Union{Type,String}}[:startSecond => UInt32, :endSecond => UInt32]
            meta(target, ProtoOAInterval, allflds, req, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAInterval[]
    end
end
function Base.getproperty(obj::ProtoOAInterval, name::Symbol)
    if name === :startSecond
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :endSecond
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATrader <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATrader(; kwargs...)
        obj = new(meta(ProtoOATrader), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOATrader
const __meta_ProtoOATrader = Ref{ProtoMeta}()
function meta(::Type{ProtoOATrader})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATrader)
            __meta_ProtoOATrader[] = target = ProtoMeta(ProtoOATrader)
            req = Symbol[:ctidTraderAccountId,:balance,:depositAssetId]
            val = Dict{Symbol,Any}(:accessRights => ProtoOAAccessRights.FULL_ACCESS, :accountType => ProtoOAAccountType.HEDGED, :limitedRiskMarginCalculationStrategy => ProtoOALimitedRiskMarginCalculationStrategy.ACCORDING_TO_LEVERAGE)
            allflds = Pair{Symbol,Union{Type,String}}[:ctidTraderAccountId => Int64, :balance => Int64, :balanceVersion => Int64, :managerBonus => Int64, :ibBonus => Int64, :nonWithdrawableBonus => Int64, :accessRights => Int32, :depositAssetId => Int64, :swapFree => Bool, :leverageInCents => UInt32, :totalMarginCalculationType => Int32, :maxLeverage => UInt32, :frenchRisk => Bool, :traderLogin => Int64, :accountType => Int32, :brokerName => AbstractString, :registrationTimestamp => Int64, :isLimitedRisk => Bool, :limitedRiskMarginCalculationStrategy => Int32, :moneyDigits => UInt32]
            meta(target, ProtoOATrader, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATrader[]
    end
end
function Base.getproperty(obj::ProtoOATrader, name::Symbol)
    if name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :balance
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :balanceVersion
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :managerBonus
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :ibBonus
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :nonWithdrawableBonus
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :accessRights
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :depositAssetId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :swapFree
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :leverageInCents
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :totalMarginCalculationType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :maxLeverage
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :frenchRisk
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :traderLogin
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :accountType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :brokerName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :registrationTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :isLimitedRisk
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :limitedRiskMarginCalculationStrategy
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATradeData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATradeData(; kwargs...)
        obj = new(meta(ProtoOATradeData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOATradeData
const __meta_ProtoOATradeData = Ref{ProtoMeta}()
function meta(::Type{ProtoOATradeData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATradeData)
            __meta_ProtoOATradeData[] = target = ProtoMeta(ProtoOATradeData)
            req = Symbol[:symbolId,:volume,:tradeSide]
            allflds = Pair{Symbol,Union{Type,String}}[:symbolId => Int64, :volume => Int64, :tradeSide => Int32, :openTimestamp => Int64, :label => AbstractString, :guaranteedStopLoss => Bool, :comment => AbstractString]
            meta(target, ProtoOATradeData, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATradeData[]
    end
end
function Base.getproperty(obj::ProtoOATradeData, name::Symbol)
    if name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :tradeSide
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :openTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :label
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :guaranteedStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :comment
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAPosition <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAPosition(; kwargs...)
        obj = new(meta(ProtoOAPosition), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAPosition
const __meta_ProtoOAPosition = Ref{ProtoMeta}()
function meta(::Type{ProtoOAPosition})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAPosition)
            __meta_ProtoOAPosition[] = target = ProtoMeta(ProtoOAPosition)
            req = Symbol[:positionId,:tradeData,:positionStatus,:swap]
            val = Dict{Symbol,Any}(:stopLossTriggerMethod => ProtoOAOrderTriggerMethod.TRADE)
            allflds = Pair{Symbol,Union{Type,String}}[:positionId => Int64, :tradeData => ProtoOATradeData, :positionStatus => Int32, :swap => Int64, :price => Float64, :stopLoss => Float64, :takeProfit => Float64, :utcLastUpdateTimestamp => Int64, :commission => Int64, :marginRate => Float64, :mirroringCommission => Int64, :guaranteedStopLoss => Bool, :usedMargin => UInt64, :stopLossTriggerMethod => Int32, :moneyDigits => UInt32]
            meta(target, ProtoOAPosition, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAPosition[]
    end
end
function Base.getproperty(obj::ProtoOAPosition, name::Symbol)
    if name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :tradeData
        return (obj.__protobuf_jl_internal_values[name])::ProtoOATradeData
    elseif name === :positionStatus
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :swap
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :price
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stopLoss
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :takeProfit
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :utcLastUpdateTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :commission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :marginRate
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :mirroringCommission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :guaranteedStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :usedMargin
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :stopLossTriggerMethod
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAOrder <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAOrder(; kwargs...)
        obj = new(meta(ProtoOAOrder), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAOrder
const __meta_ProtoOAOrder = Ref{ProtoMeta}()
function meta(::Type{ProtoOAOrder})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAOrder)
            __meta_ProtoOAOrder[] = target = ProtoMeta(ProtoOAOrder)
            req = Symbol[:orderId,:tradeData,:orderType,:orderStatus]
            val = Dict{Symbol,Any}(:timeInForce => ProtoOATimeInForce.IMMEDIATE_OR_CANCEL, :stopTriggerMethod => ProtoOAOrderTriggerMethod.TRADE)
            fnum = Int[1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24]
            allflds = Pair{Symbol,Union{Type,String}}[:orderId => Int64, :tradeData => ProtoOATradeData, :orderType => Int32, :orderStatus => Int32, :expirationTimestamp => Int64, :executionPrice => Float64, :executedVolume => Int64, :utcLastUpdateTimestamp => Int64, :baseSlippagePrice => Float64, :slippageInPoints => Int64, :closingOrder => Bool, :limitPrice => Float64, :stopPrice => Float64, :stopLoss => Float64, :takeProfit => Float64, :clientOrderId => AbstractString, :timeInForce => Int32, :positionId => Int64, :relativeStopLoss => Int64, :relativeTakeProfit => Int64, :isStopOut => Bool, :trailingStopLoss => Bool, :stopTriggerMethod => Int32]
            meta(target, ProtoOAOrder, allflds, req, fnum, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAOrder[]
    end
end
function Base.getproperty(obj::ProtoOAOrder, name::Symbol)
    if name === :orderId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :tradeData
        return (obj.__protobuf_jl_internal_values[name])::ProtoOATradeData
    elseif name === :orderType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :orderStatus
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :expirationTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :executionPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :executedVolume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :utcLastUpdateTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :baseSlippagePrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :slippageInPoints
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :closingOrder
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :limitPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stopPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stopLoss
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :takeProfit
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :clientOrderId
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :timeInForce
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :relativeStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :relativeTakeProfit
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :isStopOut
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :trailingStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :stopTriggerMethod
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOABonusDepositWithdraw <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOABonusDepositWithdraw(; kwargs...)
        obj = new(meta(ProtoOABonusDepositWithdraw), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOABonusDepositWithdraw
const __meta_ProtoOABonusDepositWithdraw = Ref{ProtoMeta}()
function meta(::Type{ProtoOABonusDepositWithdraw})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOABonusDepositWithdraw)
            __meta_ProtoOABonusDepositWithdraw[] = target = ProtoMeta(ProtoOABonusDepositWithdraw)
            req = Symbol[:operationType,:bonusHistoryId,:managerBonus,:managerDelta,:ibBonus,:ibDelta,:changeBonusTimestamp]
            allflds = Pair{Symbol,Union{Type,String}}[:operationType => Int32, :bonusHistoryId => Int64, :managerBonus => Int64, :managerDelta => Int64, :ibBonus => Int64, :ibDelta => Int64, :changeBonusTimestamp => Int64, :externalNote => AbstractString, :introducingBrokerId => Int64, :moneyDigits => UInt32]
            meta(target, ProtoOABonusDepositWithdraw, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOABonusDepositWithdraw[]
    end
end
function Base.getproperty(obj::ProtoOABonusDepositWithdraw, name::Symbol)
    if name === :operationType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :bonusHistoryId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :managerBonus
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :managerDelta
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :ibBonus
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :ibDelta
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :changeBonusTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :externalNote
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :introducingBrokerId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOADepositWithdraw <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOADepositWithdraw(; kwargs...)
        obj = new(meta(ProtoOADepositWithdraw), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOADepositWithdraw
const __meta_ProtoOADepositWithdraw = Ref{ProtoMeta}()
function meta(::Type{ProtoOADepositWithdraw})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOADepositWithdraw)
            __meta_ProtoOADepositWithdraw[] = target = ProtoMeta(ProtoOADepositWithdraw)
            req = Symbol[:operationType,:balanceHistoryId,:balance,:delta,:changeBalanceTimestamp]
            allflds = Pair{Symbol,Union{Type,String}}[:operationType => Int32, :balanceHistoryId => Int64, :balance => Int64, :delta => Int64, :changeBalanceTimestamp => Int64, :externalNote => AbstractString, :balanceVersion => Int64, :equity => Int64, :moneyDigits => UInt32]
            meta(target, ProtoOADepositWithdraw, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOADepositWithdraw[]
    end
end
function Base.getproperty(obj::ProtoOADepositWithdraw, name::Symbol)
    if name === :operationType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :balanceHistoryId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :balance
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :delta
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :changeBalanceTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :externalNote
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :balanceVersion
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :equity
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAClosePositionDetail <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAClosePositionDetail(; kwargs...)
        obj = new(meta(ProtoOAClosePositionDetail), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAClosePositionDetail
const __meta_ProtoOAClosePositionDetail = Ref{ProtoMeta}()
function meta(::Type{ProtoOAClosePositionDetail})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAClosePositionDetail)
            __meta_ProtoOAClosePositionDetail[] = target = ProtoMeta(ProtoOAClosePositionDetail)
            req = Symbol[:entryPrice,:grossProfit,:swap,:commission,:balance]
            allflds = Pair{Symbol,Union{Type,String}}[:entryPrice => Float64, :grossProfit => Int64, :swap => Int64, :commission => Int64, :balance => Int64, :quoteToDepositConversionRate => Float64, :closedVolume => Int64, :balanceVersion => Int64, :moneyDigits => UInt32]
            meta(target, ProtoOAClosePositionDetail, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAClosePositionDetail[]
    end
end
function Base.getproperty(obj::ProtoOAClosePositionDetail, name::Symbol)
    if name === :entryPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :grossProfit
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :swap
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :commission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :balance
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :quoteToDepositConversionRate
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :closedVolume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :balanceVersion
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOADeal <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOADeal(; kwargs...)
        obj = new(meta(ProtoOADeal), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOADeal
const __meta_ProtoOADeal = Ref{ProtoMeta}()
function meta(::Type{ProtoOADeal})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOADeal)
            __meta_ProtoOADeal[] = target = ProtoMeta(ProtoOADeal)
            req = Symbol[:dealId,:orderId,:positionId,:volume,:filledVolume,:symbolId,:createTimestamp,:executionTimestamp,:tradeSide,:dealStatus]
            allflds = Pair{Symbol,Union{Type,String}}[:dealId => Int64, :orderId => Int64, :positionId => Int64, :volume => Int64, :filledVolume => Int64, :symbolId => Int64, :createTimestamp => Int64, :executionTimestamp => Int64, :utcLastUpdateTimestamp => Int64, :executionPrice => Float64, :tradeSide => Int32, :dealStatus => Int32, :marginRate => Float64, :commission => Int64, :baseToUsdConversionRate => Float64, :closePositionDetail => ProtoOAClosePositionDetail, :moneyDigits => UInt32]
            meta(target, ProtoOADeal, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOADeal[]
    end
end
function Base.getproperty(obj::ProtoOADeal, name::Symbol)
    if name === :dealId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :orderId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :filledVolume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :createTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :executionTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :utcLastUpdateTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :executionPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :tradeSide
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :dealStatus
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :marginRate
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :commission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :baseToUsdConversionRate
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :closePositionDetail
        return (obj.__protobuf_jl_internal_values[name])::ProtoOAClosePositionDetail
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATrendbar <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATrendbar(; kwargs...)
        obj = new(meta(ProtoOATrendbar), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOATrendbar
const __meta_ProtoOATrendbar = Ref{ProtoMeta}()
function meta(::Type{ProtoOATrendbar})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATrendbar)
            __meta_ProtoOATrendbar[] = target = ProtoMeta(ProtoOATrendbar)
            req = Symbol[:volume]
            val = Dict{Symbol,Any}(:period => ProtoOATrendbarPeriod.M1)
            fnum = Int[3,4,5,6,7,8,9]
            allflds = Pair{Symbol,Union{Type,String}}[:volume => Int64, :period => Int32, :low => Int64, :deltaOpen => UInt64, :deltaClose => UInt64, :deltaHigh => UInt64, :utcTimestampInMinutes => UInt32]
            meta(target, ProtoOATrendbar, allflds, req, fnum, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATrendbar[]
    end
end
function Base.getproperty(obj::ProtoOATrendbar, name::Symbol)
    if name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :low
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :deltaOpen
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :deltaClose
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :deltaHigh
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :utcTimestampInMinutes
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAExpectedMargin <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAExpectedMargin(; kwargs...)
        obj = new(meta(ProtoOAExpectedMargin), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAExpectedMargin
const __meta_ProtoOAExpectedMargin = Ref{ProtoMeta}()
function meta(::Type{ProtoOAExpectedMargin})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAExpectedMargin)
            __meta_ProtoOAExpectedMargin[] = target = ProtoMeta(ProtoOAExpectedMargin)
            req = Symbol[:volume,:buyMargin,:sellMargin]
            allflds = Pair{Symbol,Union{Type,String}}[:volume => Int64, :buyMargin => Int64, :sellMargin => Int64]
            meta(target, ProtoOAExpectedMargin, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAExpectedMargin[]
    end
end
function Base.getproperty(obj::ProtoOAExpectedMargin, name::Symbol)
    if name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :buyMargin
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :sellMargin
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATickData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATickData(; kwargs...)
        obj = new(meta(ProtoOATickData), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOATickData
const __meta_ProtoOATickData = Ref{ProtoMeta}()
function meta(::Type{ProtoOATickData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATickData)
            __meta_ProtoOATickData[] = target = ProtoMeta(ProtoOATickData)
            req = Symbol[:timestamp,:tick]
            allflds = Pair{Symbol,Union{Type,String}}[:timestamp => Int64, :tick => Int64]
            meta(target, ProtoOATickData, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATickData[]
    end
end
function Base.getproperty(obj::ProtoOATickData, name::Symbol)
    if name === :timestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :tick
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOACtidProfile <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOACtidProfile(; kwargs...)
        obj = new(meta(ProtoOACtidProfile), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOACtidProfile
const __meta_ProtoOACtidProfile = Ref{ProtoMeta}()
function meta(::Type{ProtoOACtidProfile})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOACtidProfile)
            __meta_ProtoOACtidProfile[] = target = ProtoMeta(ProtoOACtidProfile)
            req = Symbol[:userId]
            allflds = Pair{Symbol,Union{Type,String}}[:userId => Int64]
            meta(target, ProtoOACtidProfile, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOACtidProfile[]
    end
end
function Base.getproperty(obj::ProtoOACtidProfile, name::Symbol)
    if name === :userId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOACtidTraderAccount <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOACtidTraderAccount(; kwargs...)
        obj = new(meta(ProtoOACtidTraderAccount), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOACtidTraderAccount
const __meta_ProtoOACtidTraderAccount = Ref{ProtoMeta}()
function meta(::Type{ProtoOACtidTraderAccount})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOACtidTraderAccount)
            __meta_ProtoOACtidTraderAccount[] = target = ProtoMeta(ProtoOACtidTraderAccount)
            req = Symbol[:ctidTraderAccountId]
            allflds = Pair{Symbol,Union{Type,String}}[:ctidTraderAccountId => UInt64, :isLive => Bool, :traderLogin => Int64]
            meta(target, ProtoOACtidTraderAccount, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOACtidTraderAccount[]
    end
end
function Base.getproperty(obj::ProtoOACtidTraderAccount, name::Symbol)
    if name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :isLive
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :traderLogin
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAssetClass <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAssetClass(; kwargs...)
        obj = new(meta(ProtoOAAssetClass), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAAssetClass
const __meta_ProtoOAAssetClass = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAssetClass})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAssetClass)
            __meta_ProtoOAAssetClass[] = target = ProtoMeta(ProtoOAAssetClass)
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64, :name => AbstractString]
            meta(target, ProtoOAAssetClass, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAssetClass[]
    end
end
function Base.getproperty(obj::ProtoOAAssetClass, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOADepthQuote <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOADepthQuote(; kwargs...)
        obj = new(meta(ProtoOADepthQuote), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOADepthQuote
const __meta_ProtoOADepthQuote = Ref{ProtoMeta}()
function meta(::Type{ProtoOADepthQuote})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOADepthQuote)
            __meta_ProtoOADepthQuote[] = target = ProtoMeta(ProtoOADepthQuote)
            req = Symbol[:id,:size]
            fnum = Int[1,3,4,5]
            allflds = Pair{Symbol,Union{Type,String}}[:id => UInt64, :size => UInt64, :bid => UInt64, :ask => UInt64]
            meta(target, ProtoOADepthQuote, allflds, req, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOADepthQuote[]
    end
end
function Base.getproperty(obj::ProtoOADepthQuote, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :size
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :bid
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :ask
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCall <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCall(; kwargs...)
        obj = new(meta(ProtoOAMarginCall), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAMarginCall
const __meta_ProtoOAMarginCall = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCall})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCall)
            __meta_ProtoOAMarginCall[] = target = ProtoMeta(ProtoOAMarginCall)
            req = Symbol[:marginCallType,:marginLevelThreshold]
            allflds = Pair{Symbol,Union{Type,String}}[:marginCallType => Int32, :marginLevelThreshold => Float64, :utcLastUpdateTimestamp => Int64]
            meta(target, ProtoOAMarginCall, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCall[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCall, name::Symbol)
    if name === :marginCallType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :marginLevelThreshold
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :utcLastUpdateTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAHoliday <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAHoliday(; kwargs...)
        obj = new(meta(ProtoOAHoliday), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOAHoliday
const __meta_ProtoOAHoliday = Ref{ProtoMeta}()
function meta(::Type{ProtoOAHoliday})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAHoliday)
            __meta_ProtoOAHoliday[] = target = ProtoMeta(ProtoOAHoliday)
            req = Symbol[:holidayId,:name,:scheduleTimeZone,:holidayDate,:isRecurring]
            allflds = Pair{Symbol,Union{Type,String}}[:holidayId => Int64, :name => AbstractString, :description => AbstractString, :scheduleTimeZone => AbstractString, :holidayDate => Int64, :isRecurring => Bool, :startSecond => Int32, :endSecond => Int32]
            meta(target, ProtoOAHoliday, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAHoliday[]
    end
end
function Base.getproperty(obj::ProtoOAHoliday, name::Symbol)
    if name === :holidayId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :scheduleTimeZone
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :holidayDate
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :isRecurring
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :startSecond
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :endSecond
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbol <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbol(; kwargs...)
        obj = new(meta(ProtoOASymbol), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ProtoOASymbol
const __meta_ProtoOASymbol = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbol})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbol)
            __meta_ProtoOASymbol[] = target = ProtoMeta(ProtoOASymbol)
            req = Symbol[:symbolId,:digits,:pipPosition]
            val = Dict{Symbol,Any}(:swapRollover3Days => ProtoOADayOfWeek.MONDAY, :commissionType => ProtoOACommissionType.USD_PER_MILLION_USD, :distanceSetIn => ProtoOASymbolDistanceType.SYMBOL_DISTANCE_IN_POINTS, :minCommissionType => ProtoOAMinCommissionType.CURRENCY, :minCommissionAsset => "USD", :tradingMode => ProtoOATradingMode.ENABLED, :rolloverCommission3Days => ProtoOADayOfWeek.MONDAY, :swapCalculationType => ProtoOASwapCalculationType.PIPS)
            allflds = Pair{Symbol,Union{Type,String}}[:symbolId => Int64, :digits => Int32, :pipPosition => Int32, :enableShortSelling => Bool, :guaranteedStopLoss => Bool, :swapRollover3Days => Int32, :swapLong => Float64, :swapShort => Float64, :maxVolume => Int64, :minVolume => Int64, :stepVolume => Int64, :maxExposure => UInt64, :schedule => Base.Vector{ProtoOAInterval}, :commission => Int64, :commissionType => Int32, :slDistance => UInt32, :tpDistance => UInt32, :gslDistance => UInt32, :gslCharge => Int64, :distanceSetIn => Int32, :minCommission => Int64, :minCommissionType => Int32, :minCommissionAsset => AbstractString, :rolloverCommission => Int64, :skipRolloverDays => Int32, :scheduleTimeZone => AbstractString, :tradingMode => Int32, :rolloverCommission3Days => Int32, :swapCalculationType => Int32, :lotSize => Int64, :preciseTradingCommissionRate => Int64, :preciseMinCommission => Int64, :holiday => Base.Vector{ProtoOAHoliday}]
            meta(target, ProtoOASymbol, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbol[]
    end
end
function Base.getproperty(obj::ProtoOASymbol, name::Symbol)
    if name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :digits
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :pipPosition
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :enableShortSelling
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :guaranteedStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :swapRollover3Days
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :swapLong
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :swapShort
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :maxVolume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :minVolume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :stepVolume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :maxExposure
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :schedule
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAInterval}
    elseif name === :commission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :commissionType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :slDistance
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :tpDistance
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :gslDistance
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :gslCharge
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :distanceSetIn
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :minCommission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :minCommissionType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :minCommissionAsset
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :rolloverCommission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :skipRolloverDays
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :scheduleTimeZone
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :tradingMode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :rolloverCommission3Days
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :swapCalculationType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :lotSize
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :preciseTradingCommissionRate
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :preciseMinCommission
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :holiday
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAHoliday}
    else
        getfield(obj, name)
    end
end

export ProtoOAPayloadType, ProtoOADayOfWeek, ProtoOACommissionType, ProtoOASymbolDistanceType, ProtoOAMinCommissionType, ProtoOATradingMode, ProtoOASwapCalculationType, ProtoOAAccessRights, ProtoOATotalMarginCalculationType, ProtoOAAccountType, ProtoOAPositionStatus, ProtoOATradeSide, ProtoOAOrderType, ProtoOATimeInForce, ProtoOAOrderStatus, ProtoOAOrderTriggerMethod, ProtoOAExecutionType, ProtoOAChangeBonusType, ProtoOAChangeBalanceType, ProtoOADealStatus, ProtoOATrendbarPeriod, ProtoOAQuoteType, ProtoOAClientPermissionScope, ProtoOANotificationType, ProtoOAErrorCode, ProtoOALimitedRiskMarginCalculationStrategy, ProtoOAAsset, ProtoOASymbol, ProtoOALightSymbol, ProtoOAArchivedSymbol, ProtoOASymbolCategory, ProtoOAInterval, ProtoOATrader, ProtoOAPosition, ProtoOATradeData, ProtoOAOrder, ProtoOABonusDepositWithdraw, ProtoOADepositWithdraw, ProtoOADeal, ProtoOAClosePositionDetail, ProtoOATrendbar, ProtoOAExpectedMargin, ProtoOATickData, ProtoOACtidProfile, ProtoOACtidTraderAccount, ProtoOAAssetClass, ProtoOADepthQuote, ProtoOAMarginCall, ProtoOAHoliday
