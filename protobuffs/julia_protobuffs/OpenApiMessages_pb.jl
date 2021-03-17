# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

mutable struct ProtoOAApplicationAuthReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAApplicationAuthReq(; kwargs...)
        obj = new(meta(ProtoOAApplicationAuthReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAApplicationAuthReq
const __meta_ProtoOAApplicationAuthReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAApplicationAuthReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAApplicationAuthReq)
            __meta_ProtoOAApplicationAuthReq[] = target = ProtoMeta(ProtoOAApplicationAuthReq)
            req = Symbol[:clientId,:clientSecret]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_APPLICATION_AUTH_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :clientId => AbstractString, :clientSecret => AbstractString]
            meta(target, ProtoOAApplicationAuthReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAApplicationAuthReq[]
    end
end
function Base.getproperty(obj::ProtoOAApplicationAuthReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :clientId
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :clientSecret
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAApplicationAuthRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAApplicationAuthRes(; kwargs...)
        obj = new(meta(ProtoOAApplicationAuthRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAApplicationAuthRes
const __meta_ProtoOAApplicationAuthRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAApplicationAuthRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAApplicationAuthRes)
            __meta_ProtoOAApplicationAuthRes[] = target = ProtoMeta(ProtoOAApplicationAuthRes)
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_APPLICATION_AUTH_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32]
            meta(target, ProtoOAApplicationAuthRes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAApplicationAuthRes[]
    end
end
function Base.getproperty(obj::ProtoOAApplicationAuthRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAccountAuthReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAccountAuthReq(; kwargs...)
        obj = new(meta(ProtoOAAccountAuthReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAccountAuthReq
const __meta_ProtoOAAccountAuthReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAccountAuthReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAccountAuthReq)
            __meta_ProtoOAAccountAuthReq[] = target = ProtoMeta(ProtoOAAccountAuthReq)
            req = Symbol[:ctidTraderAccountId,:accessToken]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ACCOUNT_AUTH_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :accessToken => AbstractString]
            meta(target, ProtoOAAccountAuthReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAccountAuthReq[]
    end
end
function Base.getproperty(obj::ProtoOAAccountAuthReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :accessToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAccountAuthRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAccountAuthRes(; kwargs...)
        obj = new(meta(ProtoOAAccountAuthRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAccountAuthRes
const __meta_ProtoOAAccountAuthRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAccountAuthRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAccountAuthRes)
            __meta_ProtoOAAccountAuthRes[] = target = ProtoMeta(ProtoOAAccountAuthRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ACCOUNT_AUTH_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAAccountAuthRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAccountAuthRes[]
    end
end
function Base.getproperty(obj::ProtoOAAccountAuthRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAErrorRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAErrorRes(; kwargs...)
        obj = new(meta(ProtoOAErrorRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAErrorRes
const __meta_ProtoOAErrorRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAErrorRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAErrorRes)
            __meta_ProtoOAErrorRes[] = target = ProtoMeta(ProtoOAErrorRes)
            req = Symbol[:errorCode]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ERROR_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :errorCode => AbstractString, :description => AbstractString, :maintenanceEndTimestamp => Int64]
            meta(target, ProtoOAErrorRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAErrorRes[]
    end
end
function Base.getproperty(obj::ProtoOAErrorRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :errorCode
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :maintenanceEndTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAClientDisconnectEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAClientDisconnectEvent(; kwargs...)
        obj = new(meta(ProtoOAClientDisconnectEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAClientDisconnectEvent
const __meta_ProtoOAClientDisconnectEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAClientDisconnectEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAClientDisconnectEvent)
            __meta_ProtoOAClientDisconnectEvent[] = target = ProtoMeta(ProtoOAClientDisconnectEvent)
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_CLIENT_DISCONNECT_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :reason => AbstractString]
            meta(target, ProtoOAClientDisconnectEvent, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAClientDisconnectEvent[]
    end
end
function Base.getproperty(obj::ProtoOAClientDisconnectEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :reason
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAccountsTokenInvalidatedEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAccountsTokenInvalidatedEvent(; kwargs...)
        obj = new(meta(ProtoOAAccountsTokenInvalidatedEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAccountsTokenInvalidatedEvent
const __meta_ProtoOAAccountsTokenInvalidatedEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAccountsTokenInvalidatedEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAccountsTokenInvalidatedEvent)
            __meta_ProtoOAAccountsTokenInvalidatedEvent[] = target = ProtoMeta(ProtoOAAccountsTokenInvalidatedEvent)
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ACCOUNTS_TOKEN_INVALIDATED_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountIds => Base.Vector{Int64}, :reason => AbstractString]
            meta(target, ProtoOAAccountsTokenInvalidatedEvent, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAccountsTokenInvalidatedEvent[]
    end
end
function Base.getproperty(obj::ProtoOAAccountsTokenInvalidatedEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountIds
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :reason
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAVersionReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAVersionReq(; kwargs...)
        obj = new(meta(ProtoOAVersionReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAVersionReq
const __meta_ProtoOAVersionReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAVersionReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAVersionReq)
            __meta_ProtoOAVersionReq[] = target = ProtoMeta(ProtoOAVersionReq)
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_VERSION_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32]
            meta(target, ProtoOAVersionReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAVersionReq[]
    end
end
function Base.getproperty(obj::ProtoOAVersionReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAVersionRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAVersionRes(; kwargs...)
        obj = new(meta(ProtoOAVersionRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAVersionRes
const __meta_ProtoOAVersionRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAVersionRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAVersionRes)
            __meta_ProtoOAVersionRes[] = target = ProtoMeta(ProtoOAVersionRes)
            req = Symbol[:version]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_VERSION_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :version => AbstractString]
            meta(target, ProtoOAVersionRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAVersionRes[]
    end
end
function Base.getproperty(obj::ProtoOAVersionRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :version
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOANewOrderReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOANewOrderReq(; kwargs...)
        obj = new(meta(ProtoOANewOrderReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOANewOrderReq
const __meta_ProtoOANewOrderReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOANewOrderReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOANewOrderReq)
            __meta_ProtoOANewOrderReq[] = target = ProtoMeta(ProtoOANewOrderReq)
            req = Symbol[:ctidTraderAccountId,:symbolId,:orderType,:tradeSide,:volume]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_NEW_ORDER_REQ, :timeInForce => ProtoOATimeInForce.GOOD_TILL_CANCEL, :stopTriggerMethod => ProtoOAOrderTriggerMethod.TRADE)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Int64, :orderType => Int32, :tradeSide => Int32, :volume => Int64, :limitPrice => Float64, :stopPrice => Float64, :timeInForce => Int32, :expirationTimestamp => Int64, :stopLoss => Float64, :takeProfit => Float64, :comment => AbstractString, :baseSlippagePrice => Float64, :slippageInPoints => Int32, :label => AbstractString, :positionId => Int64, :clientOrderId => AbstractString, :relativeStopLoss => Int64, :relativeTakeProfit => Int64, :guaranteedStopLoss => Bool, :trailingStopLoss => Bool, :stopTriggerMethod => Int32]
            meta(target, ProtoOANewOrderReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOANewOrderReq[]
    end
end
function Base.getproperty(obj::ProtoOANewOrderReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :orderType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :tradeSide
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :limitPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stopPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :timeInForce
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :expirationTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :stopLoss
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :takeProfit
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :comment
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :baseSlippagePrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :slippageInPoints
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :label
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :clientOrderId
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :relativeStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :relativeTakeProfit
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :guaranteedStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :trailingStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :stopTriggerMethod
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAExecutionEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAExecutionEvent(; kwargs...)
        obj = new(meta(ProtoOAExecutionEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAExecutionEvent
const __meta_ProtoOAExecutionEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAExecutionEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAExecutionEvent)
            __meta_ProtoOAExecutionEvent[] = target = ProtoMeta(ProtoOAExecutionEvent)
            req = Symbol[:ctidTraderAccountId,:executionType]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_EXECUTION_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :executionType => Int32, :position => ProtoOAPosition, :order => ProtoOAOrder, :deal => ProtoOADeal, :bonusDepositWithdraw => ProtoOABonusDepositWithdraw, :depositWithdraw => ProtoOADepositWithdraw, :errorCode => AbstractString, :isServerEvent => Bool]
            meta(target, ProtoOAExecutionEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAExecutionEvent[]
    end
end
function Base.getproperty(obj::ProtoOAExecutionEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :executionType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :position
        return (obj.__protobuf_jl_internal_values[name])::ProtoOAPosition
    elseif name === :order
        return (obj.__protobuf_jl_internal_values[name])::ProtoOAOrder
    elseif name === :deal
        return (obj.__protobuf_jl_internal_values[name])::ProtoOADeal
    elseif name === :bonusDepositWithdraw
        return (obj.__protobuf_jl_internal_values[name])::ProtoOABonusDepositWithdraw
    elseif name === :depositWithdraw
        return (obj.__protobuf_jl_internal_values[name])::ProtoOADepositWithdraw
    elseif name === :errorCode
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :isServerEvent
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOACancelOrderReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOACancelOrderReq(; kwargs...)
        obj = new(meta(ProtoOACancelOrderReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOACancelOrderReq
const __meta_ProtoOACancelOrderReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOACancelOrderReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOACancelOrderReq)
            __meta_ProtoOACancelOrderReq[] = target = ProtoMeta(ProtoOACancelOrderReq)
            req = Symbol[:ctidTraderAccountId,:orderId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_CANCEL_ORDER_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :orderId => Int64]
            meta(target, ProtoOACancelOrderReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOACancelOrderReq[]
    end
end
function Base.getproperty(obj::ProtoOACancelOrderReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :orderId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAmendOrderReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAmendOrderReq(; kwargs...)
        obj = new(meta(ProtoOAAmendOrderReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAmendOrderReq
const __meta_ProtoOAAmendOrderReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAmendOrderReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAmendOrderReq)
            __meta_ProtoOAAmendOrderReq[] = target = ProtoMeta(ProtoOAAmendOrderReq)
            req = Symbol[:ctidTraderAccountId,:orderId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_AMEND_ORDER_REQ, :stopTriggerMethod => ProtoOAOrderTriggerMethod.TRADE)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :orderId => Int64, :volume => Int64, :limitPrice => Float64, :stopPrice => Float64, :expirationTimestamp => Int64, :stopLoss => Float64, :takeProfit => Float64, :slippageInPoints => Int32, :relativeStopLoss => Int64, :relativeTakeProfit => Int64, :guaranteedStopLoss => Bool, :trailingStopLoss => Bool, :stopTriggerMethod => Int32]
            meta(target, ProtoOAAmendOrderReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAmendOrderReq[]
    end
end
function Base.getproperty(obj::ProtoOAAmendOrderReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :orderId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :limitPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stopPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :expirationTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :stopLoss
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :takeProfit
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :slippageInPoints
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :relativeStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :relativeTakeProfit
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :guaranteedStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :trailingStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :stopTriggerMethod
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAmendPositionSLTPReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAmendPositionSLTPReq(; kwargs...)
        obj = new(meta(ProtoOAAmendPositionSLTPReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAmendPositionSLTPReq
const __meta_ProtoOAAmendPositionSLTPReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAmendPositionSLTPReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAmendPositionSLTPReq)
            __meta_ProtoOAAmendPositionSLTPReq[] = target = ProtoMeta(ProtoOAAmendPositionSLTPReq)
            req = Symbol[:ctidTraderAccountId,:positionId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_AMEND_POSITION_SLTP_REQ, :stopLossTriggerMethod => ProtoOAOrderTriggerMethod.TRADE)
            fnum = Int[1,2,3,4,5,7,8,9]
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :positionId => Int64, :stopLoss => Float64, :takeProfit => Float64, :guaranteedStopLoss => Bool, :trailingStopLoss => Bool, :stopLossTriggerMethod => Int32]
            meta(target, ProtoOAAmendPositionSLTPReq, allflds, req, fnum, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAmendPositionSLTPReq[]
    end
end
function Base.getproperty(obj::ProtoOAAmendPositionSLTPReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :stopLoss
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :takeProfit
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :guaranteedStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :trailingStopLoss
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :stopLossTriggerMethod
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAClosePositionReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAClosePositionReq(; kwargs...)
        obj = new(meta(ProtoOAClosePositionReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAClosePositionReq
const __meta_ProtoOAClosePositionReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAClosePositionReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAClosePositionReq)
            __meta_ProtoOAClosePositionReq[] = target = ProtoMeta(ProtoOAClosePositionReq)
            req = Symbol[:ctidTraderAccountId,:positionId,:volume]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_CLOSE_POSITION_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :positionId => Int64, :volume => Int64]
            meta(target, ProtoOAClosePositionReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAClosePositionReq[]
    end
end
function Base.getproperty(obj::ProtoOAClosePositionReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATrailingSLChangedEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATrailingSLChangedEvent(; kwargs...)
        obj = new(meta(ProtoOATrailingSLChangedEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOATrailingSLChangedEvent
const __meta_ProtoOATrailingSLChangedEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOATrailingSLChangedEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATrailingSLChangedEvent)
            __meta_ProtoOATrailingSLChangedEvent[] = target = ProtoMeta(ProtoOATrailingSLChangedEvent)
            req = Symbol[:ctidTraderAccountId,:positionId,:orderId,:stopPrice,:utcLastUpdateTimestamp]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_TRAILING_SL_CHANGED_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :positionId => Int64, :orderId => Int64, :stopPrice => Float64, :utcLastUpdateTimestamp => Int64]
            meta(target, ProtoOATrailingSLChangedEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATrailingSLChangedEvent[]
    end
end
function Base.getproperty(obj::ProtoOATrailingSLChangedEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :orderId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :stopPrice
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :utcLastUpdateTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAssetListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAssetListReq(; kwargs...)
        obj = new(meta(ProtoOAAssetListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAssetListReq
const __meta_ProtoOAAssetListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAssetListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAssetListReq)
            __meta_ProtoOAAssetListReq[] = target = ProtoMeta(ProtoOAAssetListReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ASSET_LIST_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAAssetListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAssetListReq[]
    end
end
function Base.getproperty(obj::ProtoOAAssetListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAssetListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAssetListRes(; kwargs...)
        obj = new(meta(ProtoOAAssetListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAssetListRes
const __meta_ProtoOAAssetListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAssetListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAssetListRes)
            __meta_ProtoOAAssetListRes[] = target = ProtoMeta(ProtoOAAssetListRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ASSET_LIST_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :asset => Base.Vector{ProtoOAAsset}]
            meta(target, ProtoOAAssetListRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAssetListRes[]
    end
end
function Base.getproperty(obj::ProtoOAAssetListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :asset
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAAsset}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolsListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolsListReq(; kwargs...)
        obj = new(meta(ProtoOASymbolsListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolsListReq
const __meta_ProtoOASymbolsListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolsListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolsListReq)
            __meta_ProtoOASymbolsListReq[] = target = ProtoMeta(ProtoOASymbolsListReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOLS_LIST_REQ, :includeArchivedSymbols => false)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :includeArchivedSymbols => Bool]
            meta(target, ProtoOASymbolsListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolsListReq[]
    end
end
function Base.getproperty(obj::ProtoOASymbolsListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :includeArchivedSymbols
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolsListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolsListRes(; kwargs...)
        obj = new(meta(ProtoOASymbolsListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolsListRes
const __meta_ProtoOASymbolsListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolsListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolsListRes)
            __meta_ProtoOASymbolsListRes[] = target = ProtoMeta(ProtoOASymbolsListRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOLS_LIST_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbol => Base.Vector{ProtoOALightSymbol}, :archivedSymbol => Base.Vector{ProtoOAArchivedSymbol}]
            meta(target, ProtoOASymbolsListRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolsListRes[]
    end
end
function Base.getproperty(obj::ProtoOASymbolsListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbol
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOALightSymbol}
    elseif name === :archivedSymbol
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAArchivedSymbol}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolByIdReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolByIdReq(; kwargs...)
        obj = new(meta(ProtoOASymbolByIdReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolByIdReq
const __meta_ProtoOASymbolByIdReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolByIdReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolByIdReq)
            __meta_ProtoOASymbolByIdReq[] = target = ProtoMeta(ProtoOASymbolByIdReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOL_BY_ID_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Base.Vector{Int64}]
            meta(target, ProtoOASymbolByIdReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolByIdReq[]
    end
end
function Base.getproperty(obj::ProtoOASymbolByIdReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolByIdRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolByIdRes(; kwargs...)
        obj = new(meta(ProtoOASymbolByIdRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolByIdRes
const __meta_ProtoOASymbolByIdRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolByIdRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolByIdRes)
            __meta_ProtoOASymbolByIdRes[] = target = ProtoMeta(ProtoOASymbolByIdRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOL_BY_ID_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbol => Base.Vector{ProtoOASymbol}, :archivedSymbol => Base.Vector{ProtoOAArchivedSymbol}]
            meta(target, ProtoOASymbolByIdRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolByIdRes[]
    end
end
function Base.getproperty(obj::ProtoOASymbolByIdRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbol
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOASymbol}
    elseif name === :archivedSymbol
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAArchivedSymbol}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolsForConversionReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolsForConversionReq(; kwargs...)
        obj = new(meta(ProtoOASymbolsForConversionReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolsForConversionReq
const __meta_ProtoOASymbolsForConversionReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolsForConversionReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolsForConversionReq)
            __meta_ProtoOASymbolsForConversionReq[] = target = ProtoMeta(ProtoOASymbolsForConversionReq)
            req = Symbol[:ctidTraderAccountId,:firstAssetId,:lastAssetId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOLS_FOR_CONVERSION_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :firstAssetId => Int64, :lastAssetId => Int64]
            meta(target, ProtoOASymbolsForConversionReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolsForConversionReq[]
    end
end
function Base.getproperty(obj::ProtoOASymbolsForConversionReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :firstAssetId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :lastAssetId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolsForConversionRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolsForConversionRes(; kwargs...)
        obj = new(meta(ProtoOASymbolsForConversionRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolsForConversionRes
const __meta_ProtoOASymbolsForConversionRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolsForConversionRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolsForConversionRes)
            __meta_ProtoOASymbolsForConversionRes[] = target = ProtoMeta(ProtoOASymbolsForConversionRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOLS_FOR_CONVERSION_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbol => Base.Vector{ProtoOALightSymbol}]
            meta(target, ProtoOASymbolsForConversionRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolsForConversionRes[]
    end
end
function Base.getproperty(obj::ProtoOASymbolsForConversionRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbol
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOALightSymbol}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolChangedEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolChangedEvent(; kwargs...)
        obj = new(meta(ProtoOASymbolChangedEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolChangedEvent
const __meta_ProtoOASymbolChangedEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolChangedEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolChangedEvent)
            __meta_ProtoOASymbolChangedEvent[] = target = ProtoMeta(ProtoOASymbolChangedEvent)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOL_CHANGED_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Base.Vector{Int64}]
            meta(target, ProtoOASymbolChangedEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolChangedEvent[]
    end
end
function Base.getproperty(obj::ProtoOASymbolChangedEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAssetClassListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAssetClassListReq(; kwargs...)
        obj = new(meta(ProtoOAAssetClassListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAssetClassListReq
const __meta_ProtoOAAssetClassListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAssetClassListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAssetClassListReq)
            __meta_ProtoOAAssetClassListReq[] = target = ProtoMeta(ProtoOAAssetClassListReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ASSET_CLASS_LIST_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAAssetClassListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAssetClassListReq[]
    end
end
function Base.getproperty(obj::ProtoOAAssetClassListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAssetClassListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAssetClassListRes(; kwargs...)
        obj = new(meta(ProtoOAAssetClassListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAssetClassListRes
const __meta_ProtoOAAssetClassListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAssetClassListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAssetClassListRes)
            __meta_ProtoOAAssetClassListRes[] = target = ProtoMeta(ProtoOAAssetClassListRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ASSET_CLASS_LIST_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :assetClass => Base.Vector{ProtoOAAssetClass}]
            meta(target, ProtoOAAssetClassListRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAssetClassListRes[]
    end
end
function Base.getproperty(obj::ProtoOAAssetClassListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :assetClass
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAAssetClass}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATraderReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATraderReq(; kwargs...)
        obj = new(meta(ProtoOATraderReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOATraderReq
const __meta_ProtoOATraderReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOATraderReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATraderReq)
            __meta_ProtoOATraderReq[] = target = ProtoMeta(ProtoOATraderReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_TRADER_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOATraderReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATraderReq[]
    end
end
function Base.getproperty(obj::ProtoOATraderReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATraderRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATraderRes(; kwargs...)
        obj = new(meta(ProtoOATraderRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOATraderRes
const __meta_ProtoOATraderRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOATraderRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATraderRes)
            __meta_ProtoOATraderRes[] = target = ProtoMeta(ProtoOATraderRes)
            req = Symbol[:ctidTraderAccountId,:trader]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_TRADER_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :trader => ProtoOATrader]
            meta(target, ProtoOATraderRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATraderRes[]
    end
end
function Base.getproperty(obj::ProtoOATraderRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :trader
        return (obj.__protobuf_jl_internal_values[name])::ProtoOATrader
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOATraderUpdatedEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOATraderUpdatedEvent(; kwargs...)
        obj = new(meta(ProtoOATraderUpdatedEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOATraderUpdatedEvent
const __meta_ProtoOATraderUpdatedEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOATraderUpdatedEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOATraderUpdatedEvent)
            __meta_ProtoOATraderUpdatedEvent[] = target = ProtoMeta(ProtoOATraderUpdatedEvent)
            req = Symbol[:ctidTraderAccountId,:trader]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_TRADER_UPDATE_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :trader => ProtoOATrader]
            meta(target, ProtoOATraderUpdatedEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOATraderUpdatedEvent[]
    end
end
function Base.getproperty(obj::ProtoOATraderUpdatedEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :trader
        return (obj.__protobuf_jl_internal_values[name])::ProtoOATrader
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAReconcileReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAReconcileReq(; kwargs...)
        obj = new(meta(ProtoOAReconcileReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAReconcileReq
const __meta_ProtoOAReconcileReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAReconcileReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAReconcileReq)
            __meta_ProtoOAReconcileReq[] = target = ProtoMeta(ProtoOAReconcileReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_RECONCILE_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAReconcileReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAReconcileReq[]
    end
end
function Base.getproperty(obj::ProtoOAReconcileReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAReconcileRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAReconcileRes(; kwargs...)
        obj = new(meta(ProtoOAReconcileRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAReconcileRes
const __meta_ProtoOAReconcileRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAReconcileRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAReconcileRes)
            __meta_ProtoOAReconcileRes[] = target = ProtoMeta(ProtoOAReconcileRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_RECONCILE_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :position => Base.Vector{ProtoOAPosition}, :order => Base.Vector{ProtoOAOrder}]
            meta(target, ProtoOAReconcileRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAReconcileRes[]
    end
end
function Base.getproperty(obj::ProtoOAReconcileRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :position
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAPosition}
    elseif name === :order
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAOrder}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAOrderErrorEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAOrderErrorEvent(; kwargs...)
        obj = new(meta(ProtoOAOrderErrorEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAOrderErrorEvent
const __meta_ProtoOAOrderErrorEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAOrderErrorEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAOrderErrorEvent)
            __meta_ProtoOAOrderErrorEvent[] = target = ProtoMeta(ProtoOAOrderErrorEvent)
            req = Symbol[:ctidTraderAccountId,:errorCode]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ORDER_ERROR_EVENT)
            fnum = Int[1,5,2,3,6,7]
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :errorCode => AbstractString, :orderId => Int64, :positionId => Int64, :description => AbstractString]
            meta(target, ProtoOAOrderErrorEvent, allflds, req, fnum, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAOrderErrorEvent[]
    end
end
function Base.getproperty(obj::ProtoOAOrderErrorEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :errorCode
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :orderId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOADealListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOADealListReq(; kwargs...)
        obj = new(meta(ProtoOADealListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOADealListReq
const __meta_ProtoOADealListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOADealListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOADealListReq)
            __meta_ProtoOADealListReq[] = target = ProtoMeta(ProtoOADealListReq)
            req = Symbol[:ctidTraderAccountId,:fromTimestamp,:toTimestamp]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_DEAL_LIST_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :fromTimestamp => Int64, :toTimestamp => Int64, :maxRows => Int32]
            meta(target, ProtoOADealListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOADealListReq[]
    end
end
function Base.getproperty(obj::ProtoOADealListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :fromTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :toTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :maxRows
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOADealListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOADealListRes(; kwargs...)
        obj = new(meta(ProtoOADealListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOADealListRes
const __meta_ProtoOADealListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOADealListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOADealListRes)
            __meta_ProtoOADealListRes[] = target = ProtoMeta(ProtoOADealListRes)
            req = Symbol[:ctidTraderAccountId,:hasMore]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_DEAL_LIST_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :deal => Base.Vector{ProtoOADeal}, :hasMore => Bool]
            meta(target, ProtoOADealListRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOADealListRes[]
    end
end
function Base.getproperty(obj::ProtoOADealListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :deal
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOADeal}
    elseif name === :hasMore
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAExpectedMarginReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAExpectedMarginReq(; kwargs...)
        obj = new(meta(ProtoOAExpectedMarginReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAExpectedMarginReq
const __meta_ProtoOAExpectedMarginReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAExpectedMarginReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAExpectedMarginReq)
            __meta_ProtoOAExpectedMarginReq[] = target = ProtoMeta(ProtoOAExpectedMarginReq)
            req = Symbol[:ctidTraderAccountId,:symbolId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_EXPECTED_MARGIN_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Int64, :volume => Base.Vector{Int64}]
            meta(target, ProtoOAExpectedMarginReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAExpectedMarginReq[]
    end
end
function Base.getproperty(obj::ProtoOAExpectedMarginReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :volume
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAExpectedMarginRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAExpectedMarginRes(; kwargs...)
        obj = new(meta(ProtoOAExpectedMarginRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAExpectedMarginRes
const __meta_ProtoOAExpectedMarginRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAExpectedMarginRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAExpectedMarginRes)
            __meta_ProtoOAExpectedMarginRes[] = target = ProtoMeta(ProtoOAExpectedMarginRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_EXPECTED_MARGIN_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :margin => Base.Vector{ProtoOAExpectedMargin}, :moneyDigits => UInt32]
            meta(target, ProtoOAExpectedMarginRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAExpectedMarginRes[]
    end
end
function Base.getproperty(obj::ProtoOAExpectedMarginRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :margin
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAExpectedMargin}
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginChangedEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginChangedEvent(; kwargs...)
        obj = new(meta(ProtoOAMarginChangedEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginChangedEvent
const __meta_ProtoOAMarginChangedEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginChangedEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginChangedEvent)
            __meta_ProtoOAMarginChangedEvent[] = target = ProtoMeta(ProtoOAMarginChangedEvent)
            req = Symbol[:ctidTraderAccountId,:positionId,:usedMargin]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CHANGED_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :positionId => UInt64, :usedMargin => UInt64, :moneyDigits => UInt32]
            meta(target, ProtoOAMarginChangedEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginChangedEvent[]
    end
end
function Base.getproperty(obj::ProtoOAMarginChangedEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :positionId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :usedMargin
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :moneyDigits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOACashFlowHistoryListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOACashFlowHistoryListReq(; kwargs...)
        obj = new(meta(ProtoOACashFlowHistoryListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOACashFlowHistoryListReq
const __meta_ProtoOACashFlowHistoryListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOACashFlowHistoryListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOACashFlowHistoryListReq)
            __meta_ProtoOACashFlowHistoryListReq[] = target = ProtoMeta(ProtoOACashFlowHistoryListReq)
            req = Symbol[:ctidTraderAccountId,:fromTimestamp,:toTimestamp]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_CASH_FLOW_HISTORY_LIST_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :fromTimestamp => Int64, :toTimestamp => Int64]
            meta(target, ProtoOACashFlowHistoryListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOACashFlowHistoryListReq[]
    end
end
function Base.getproperty(obj::ProtoOACashFlowHistoryListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :fromTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :toTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOACashFlowHistoryListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOACashFlowHistoryListRes(; kwargs...)
        obj = new(meta(ProtoOACashFlowHistoryListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOACashFlowHistoryListRes
const __meta_ProtoOACashFlowHistoryListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOACashFlowHistoryListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOACashFlowHistoryListRes)
            __meta_ProtoOACashFlowHistoryListRes[] = target = ProtoMeta(ProtoOACashFlowHistoryListRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_CASH_FLOW_HISTORY_LIST_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :depositWithdraw => Base.Vector{ProtoOADepositWithdraw}]
            meta(target, ProtoOACashFlowHistoryListRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOACashFlowHistoryListRes[]
    end
end
function Base.getproperty(obj::ProtoOACashFlowHistoryListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :depositWithdraw
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOADepositWithdraw}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetAccountListByAccessTokenReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetAccountListByAccessTokenReq(; kwargs...)
        obj = new(meta(ProtoOAGetAccountListByAccessTokenReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetAccountListByAccessTokenReq
const __meta_ProtoOAGetAccountListByAccessTokenReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetAccountListByAccessTokenReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetAccountListByAccessTokenReq)
            __meta_ProtoOAGetAccountListByAccessTokenReq[] = target = ProtoMeta(ProtoOAGetAccountListByAccessTokenReq)
            req = Symbol[:accessToken]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_ACCOUNTS_BY_ACCESS_TOKEN_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :accessToken => AbstractString]
            meta(target, ProtoOAGetAccountListByAccessTokenReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetAccountListByAccessTokenReq[]
    end
end
function Base.getproperty(obj::ProtoOAGetAccountListByAccessTokenReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :accessToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetAccountListByAccessTokenRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetAccountListByAccessTokenRes(; kwargs...)
        obj = new(meta(ProtoOAGetAccountListByAccessTokenRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetAccountListByAccessTokenRes
const __meta_ProtoOAGetAccountListByAccessTokenRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetAccountListByAccessTokenRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetAccountListByAccessTokenRes)
            __meta_ProtoOAGetAccountListByAccessTokenRes[] = target = ProtoMeta(ProtoOAGetAccountListByAccessTokenRes)
            req = Symbol[:accessToken]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_ACCOUNTS_BY_ACCESS_TOKEN_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :accessToken => AbstractString, :permissionScope => Int32, :ctidTraderAccount => Base.Vector{ProtoOACtidTraderAccount}]
            meta(target, ProtoOAGetAccountListByAccessTokenRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetAccountListByAccessTokenRes[]
    end
end
function Base.getproperty(obj::ProtoOAGetAccountListByAccessTokenRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :accessToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :permissionScope
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccount
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOACtidTraderAccount}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOARefreshTokenReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOARefreshTokenReq(; kwargs...)
        obj = new(meta(ProtoOARefreshTokenReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOARefreshTokenReq
const __meta_ProtoOARefreshTokenReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOARefreshTokenReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOARefreshTokenReq)
            __meta_ProtoOARefreshTokenReq[] = target = ProtoMeta(ProtoOARefreshTokenReq)
            req = Symbol[:refreshToken]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_REFRESH_TOKEN_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :refreshToken => AbstractString]
            meta(target, ProtoOARefreshTokenReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOARefreshTokenReq[]
    end
end
function Base.getproperty(obj::ProtoOARefreshTokenReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :refreshToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOARefreshTokenRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOARefreshTokenRes(; kwargs...)
        obj = new(meta(ProtoOARefreshTokenRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOARefreshTokenRes
const __meta_ProtoOARefreshTokenRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOARefreshTokenRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOARefreshTokenRes)
            __meta_ProtoOARefreshTokenRes[] = target = ProtoMeta(ProtoOARefreshTokenRes)
            req = Symbol[:accessToken,:tokenType,:expiresIn,:refreshToken]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_REFRESH_TOKEN_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :accessToken => AbstractString, :tokenType => AbstractString, :expiresIn => Int64, :refreshToken => AbstractString]
            meta(target, ProtoOARefreshTokenRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOARefreshTokenRes[]
    end
end
function Base.getproperty(obj::ProtoOARefreshTokenRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :accessToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :tokenType
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :expiresIn
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :refreshToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASubscribeSpotsReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASubscribeSpotsReq(; kwargs...)
        obj = new(meta(ProtoOASubscribeSpotsReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASubscribeSpotsReq
const __meta_ProtoOASubscribeSpotsReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASubscribeSpotsReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASubscribeSpotsReq)
            __meta_ProtoOASubscribeSpotsReq[] = target = ProtoMeta(ProtoOASubscribeSpotsReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SUBSCRIBE_SPOTS_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Base.Vector{Int64}]
            meta(target, ProtoOASubscribeSpotsReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASubscribeSpotsReq[]
    end
end
function Base.getproperty(obj::ProtoOASubscribeSpotsReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASubscribeSpotsRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASubscribeSpotsRes(; kwargs...)
        obj = new(meta(ProtoOASubscribeSpotsRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASubscribeSpotsRes
const __meta_ProtoOASubscribeSpotsRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASubscribeSpotsRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASubscribeSpotsRes)
            __meta_ProtoOASubscribeSpotsRes[] = target = ProtoMeta(ProtoOASubscribeSpotsRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SUBSCRIBE_SPOTS_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOASubscribeSpotsRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASubscribeSpotsRes[]
    end
end
function Base.getproperty(obj::ProtoOASubscribeSpotsRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAUnsubscribeSpotsReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAUnsubscribeSpotsReq(; kwargs...)
        obj = new(meta(ProtoOAUnsubscribeSpotsReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAUnsubscribeSpotsReq
const __meta_ProtoOAUnsubscribeSpotsReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAUnsubscribeSpotsReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAUnsubscribeSpotsReq)
            __meta_ProtoOAUnsubscribeSpotsReq[] = target = ProtoMeta(ProtoOAUnsubscribeSpotsReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_UNSUBSCRIBE_SPOTS_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Base.Vector{Int64}]
            meta(target, ProtoOAUnsubscribeSpotsReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAUnsubscribeSpotsReq[]
    end
end
function Base.getproperty(obj::ProtoOAUnsubscribeSpotsReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAUnsubscribeSpotsRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAUnsubscribeSpotsRes(; kwargs...)
        obj = new(meta(ProtoOAUnsubscribeSpotsRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAUnsubscribeSpotsRes
const __meta_ProtoOAUnsubscribeSpotsRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAUnsubscribeSpotsRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAUnsubscribeSpotsRes)
            __meta_ProtoOAUnsubscribeSpotsRes[] = target = ProtoMeta(ProtoOAUnsubscribeSpotsRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_UNSUBSCRIBE_SPOTS_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAUnsubscribeSpotsRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAUnsubscribeSpotsRes[]
    end
end
function Base.getproperty(obj::ProtoOAUnsubscribeSpotsRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASpotEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASpotEvent(; kwargs...)
        obj = new(meta(ProtoOASpotEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASpotEvent
const __meta_ProtoOASpotEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOASpotEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASpotEvent)
            __meta_ProtoOASpotEvent[] = target = ProtoMeta(ProtoOASpotEvent)
            req = Symbol[:ctidTraderAccountId,:symbolId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SPOT_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Int64, :bid => UInt64, :ask => UInt64, :trendbar => Base.Vector{ProtoOATrendbar}, :sessionClose => UInt64]
            meta(target, ProtoOASpotEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASpotEvent[]
    end
end
function Base.getproperty(obj::ProtoOASpotEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :bid
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :ask
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :trendbar
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOATrendbar}
    elseif name === :sessionClose
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASubscribeLiveTrendbarReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASubscribeLiveTrendbarReq(; kwargs...)
        obj = new(meta(ProtoOASubscribeLiveTrendbarReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASubscribeLiveTrendbarReq
const __meta_ProtoOASubscribeLiveTrendbarReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASubscribeLiveTrendbarReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASubscribeLiveTrendbarReq)
            __meta_ProtoOASubscribeLiveTrendbarReq[] = target = ProtoMeta(ProtoOASubscribeLiveTrendbarReq)
            req = Symbol[:ctidTraderAccountId,:period,:symbolId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SUBSCRIBE_LIVE_TRENDBAR_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :period => Int32, :symbolId => Int64]
            meta(target, ProtoOASubscribeLiveTrendbarReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASubscribeLiveTrendbarReq[]
    end
end
function Base.getproperty(obj::ProtoOASubscribeLiveTrendbarReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASubscribeLiveTrendbarRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASubscribeLiveTrendbarRes(; kwargs...)
        obj = new(meta(ProtoOASubscribeLiveTrendbarRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASubscribeLiveTrendbarRes
const __meta_ProtoOASubscribeLiveTrendbarRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASubscribeLiveTrendbarRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASubscribeLiveTrendbarRes)
            __meta_ProtoOASubscribeLiveTrendbarRes[] = target = ProtoMeta(ProtoOASubscribeLiveTrendbarRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SUBSCRIBE_LIVE_TRENDBAR_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOASubscribeLiveTrendbarRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASubscribeLiveTrendbarRes[]
    end
end
function Base.getproperty(obj::ProtoOASubscribeLiveTrendbarRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAUnsubscribeLiveTrendbarReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAUnsubscribeLiveTrendbarReq(; kwargs...)
        obj = new(meta(ProtoOAUnsubscribeLiveTrendbarReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAUnsubscribeLiveTrendbarReq
const __meta_ProtoOAUnsubscribeLiveTrendbarReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAUnsubscribeLiveTrendbarReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAUnsubscribeLiveTrendbarReq)
            __meta_ProtoOAUnsubscribeLiveTrendbarReq[] = target = ProtoMeta(ProtoOAUnsubscribeLiveTrendbarReq)
            req = Symbol[:ctidTraderAccountId,:period,:symbolId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_UNSUBSCRIBE_LIVE_TRENDBAR_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :period => Int32, :symbolId => Int64]
            meta(target, ProtoOAUnsubscribeLiveTrendbarReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAUnsubscribeLiveTrendbarReq[]
    end
end
function Base.getproperty(obj::ProtoOAUnsubscribeLiveTrendbarReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAUnsubscribeLiveTrendbarRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAUnsubscribeLiveTrendbarRes(; kwargs...)
        obj = new(meta(ProtoOAUnsubscribeLiveTrendbarRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAUnsubscribeLiveTrendbarRes
const __meta_ProtoOAUnsubscribeLiveTrendbarRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAUnsubscribeLiveTrendbarRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAUnsubscribeLiveTrendbarRes)
            __meta_ProtoOAUnsubscribeLiveTrendbarRes[] = target = ProtoMeta(ProtoOAUnsubscribeLiveTrendbarRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_UNSUBSCRIBE_LIVE_TRENDBAR_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAUnsubscribeLiveTrendbarRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAUnsubscribeLiveTrendbarRes[]
    end
end
function Base.getproperty(obj::ProtoOAUnsubscribeLiveTrendbarRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetTrendbarsReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetTrendbarsReq(; kwargs...)
        obj = new(meta(ProtoOAGetTrendbarsReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetTrendbarsReq
const __meta_ProtoOAGetTrendbarsReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetTrendbarsReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetTrendbarsReq)
            __meta_ProtoOAGetTrendbarsReq[] = target = ProtoMeta(ProtoOAGetTrendbarsReq)
            req = Symbol[:ctidTraderAccountId,:fromTimestamp,:toTimestamp,:period,:symbolId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_TRENDBARS_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :fromTimestamp => Int64, :toTimestamp => Int64, :period => Int32, :symbolId => Int64]
            meta(target, ProtoOAGetTrendbarsReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetTrendbarsReq[]
    end
end
function Base.getproperty(obj::ProtoOAGetTrendbarsReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :fromTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :toTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetTrendbarsRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetTrendbarsRes(; kwargs...)
        obj = new(meta(ProtoOAGetTrendbarsRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetTrendbarsRes
const __meta_ProtoOAGetTrendbarsRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetTrendbarsRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetTrendbarsRes)
            __meta_ProtoOAGetTrendbarsRes[] = target = ProtoMeta(ProtoOAGetTrendbarsRes)
            req = Symbol[:ctidTraderAccountId,:period,:timestamp]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_TRENDBARS_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :period => Int32, :timestamp => Int64, :trendbar => Base.Vector{ProtoOATrendbar}, :symbolId => Int64]
            meta(target, ProtoOAGetTrendbarsRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetTrendbarsRes[]
    end
end
function Base.getproperty(obj::ProtoOAGetTrendbarsRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :timestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :trendbar
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOATrendbar}
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetTickDataReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetTickDataReq(; kwargs...)
        obj = new(meta(ProtoOAGetTickDataReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetTickDataReq
const __meta_ProtoOAGetTickDataReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetTickDataReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetTickDataReq)
            __meta_ProtoOAGetTickDataReq[] = target = ProtoMeta(ProtoOAGetTickDataReq)
            req = Symbol[:ctidTraderAccountId,:symbolId,:_type,:fromTimestamp,:toTimestamp]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_TICKDATA_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Int64, :_type => Int32, :fromTimestamp => Int64, :toTimestamp => Int64]
            meta(target, ProtoOAGetTickDataReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetTickDataReq[]
    end
end
function Base.getproperty(obj::ProtoOAGetTickDataReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :fromTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :toTimestamp
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetTickDataRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetTickDataRes(; kwargs...)
        obj = new(meta(ProtoOAGetTickDataRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetTickDataRes
const __meta_ProtoOAGetTickDataRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetTickDataRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetTickDataRes)
            __meta_ProtoOAGetTickDataRes[] = target = ProtoMeta(ProtoOAGetTickDataRes)
            req = Symbol[:ctidTraderAccountId,:hasMore]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_TICKDATA_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :tickData => Base.Vector{ProtoOATickData}, :hasMore => Bool]
            meta(target, ProtoOAGetTickDataRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetTickDataRes[]
    end
end
function Base.getproperty(obj::ProtoOAGetTickDataRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :tickData
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOATickData}
    elseif name === :hasMore
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetCtidProfileByTokenReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetCtidProfileByTokenReq(; kwargs...)
        obj = new(meta(ProtoOAGetCtidProfileByTokenReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetCtidProfileByTokenReq
const __meta_ProtoOAGetCtidProfileByTokenReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetCtidProfileByTokenReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetCtidProfileByTokenReq)
            __meta_ProtoOAGetCtidProfileByTokenReq[] = target = ProtoMeta(ProtoOAGetCtidProfileByTokenReq)
            req = Symbol[:accessToken]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_CTID_PROFILE_BY_TOKEN_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :accessToken => AbstractString]
            meta(target, ProtoOAGetCtidProfileByTokenReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetCtidProfileByTokenReq[]
    end
end
function Base.getproperty(obj::ProtoOAGetCtidProfileByTokenReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :accessToken
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAGetCtidProfileByTokenRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAGetCtidProfileByTokenRes(; kwargs...)
        obj = new(meta(ProtoOAGetCtidProfileByTokenRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAGetCtidProfileByTokenRes
const __meta_ProtoOAGetCtidProfileByTokenRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAGetCtidProfileByTokenRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAGetCtidProfileByTokenRes)
            __meta_ProtoOAGetCtidProfileByTokenRes[] = target = ProtoMeta(ProtoOAGetCtidProfileByTokenRes)
            req = Symbol[:profile]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_GET_CTID_PROFILE_BY_TOKEN_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :profile => ProtoOACtidProfile]
            meta(target, ProtoOAGetCtidProfileByTokenRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAGetCtidProfileByTokenRes[]
    end
end
function Base.getproperty(obj::ProtoOAGetCtidProfileByTokenRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :profile
        return (obj.__protobuf_jl_internal_values[name])::ProtoOACtidProfile
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOADepthEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOADepthEvent(; kwargs...)
        obj = new(meta(ProtoOADepthEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOADepthEvent
const __meta_ProtoOADepthEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOADepthEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOADepthEvent)
            __meta_ProtoOADepthEvent[] = target = ProtoMeta(ProtoOADepthEvent)
            req = Symbol[:ctidTraderAccountId,:symbolId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_DEPTH_EVENT)
            pack = Symbol[:deletedQuotes]
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => UInt64, :newQuotes => Base.Vector{ProtoOADepthQuote}, :deletedQuotes => Base.Vector{UInt64}]
            meta(target, ProtoOADepthEvent, allflds, req, ProtoBuf.DEF_FNUM, val, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOADepthEvent[]
    end
end
function Base.getproperty(obj::ProtoOADepthEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :newQuotes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOADepthQuote}
    elseif name === :deletedQuotes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASubscribeDepthQuotesReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASubscribeDepthQuotesReq(; kwargs...)
        obj = new(meta(ProtoOASubscribeDepthQuotesReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASubscribeDepthQuotesReq
const __meta_ProtoOASubscribeDepthQuotesReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASubscribeDepthQuotesReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASubscribeDepthQuotesReq)
            __meta_ProtoOASubscribeDepthQuotesReq[] = target = ProtoMeta(ProtoOASubscribeDepthQuotesReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SUBSCRIBE_DEPTH_QUOTES_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Base.Vector{Int64}]
            meta(target, ProtoOASubscribeDepthQuotesReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASubscribeDepthQuotesReq[]
    end
end
function Base.getproperty(obj::ProtoOASubscribeDepthQuotesReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASubscribeDepthQuotesRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASubscribeDepthQuotesRes(; kwargs...)
        obj = new(meta(ProtoOASubscribeDepthQuotesRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASubscribeDepthQuotesRes
const __meta_ProtoOASubscribeDepthQuotesRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASubscribeDepthQuotesRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASubscribeDepthQuotesRes)
            __meta_ProtoOASubscribeDepthQuotesRes[] = target = ProtoMeta(ProtoOASubscribeDepthQuotesRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SUBSCRIBE_DEPTH_QUOTES_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOASubscribeDepthQuotesRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASubscribeDepthQuotesRes[]
    end
end
function Base.getproperty(obj::ProtoOASubscribeDepthQuotesRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAUnsubscribeDepthQuotesReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAUnsubscribeDepthQuotesReq(; kwargs...)
        obj = new(meta(ProtoOAUnsubscribeDepthQuotesReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAUnsubscribeDepthQuotesReq
const __meta_ProtoOAUnsubscribeDepthQuotesReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAUnsubscribeDepthQuotesReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAUnsubscribeDepthQuotesReq)
            __meta_ProtoOAUnsubscribeDepthQuotesReq[] = target = ProtoMeta(ProtoOAUnsubscribeDepthQuotesReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_UNSUBSCRIBE_DEPTH_QUOTES_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolId => Base.Vector{Int64}]
            meta(target, ProtoOAUnsubscribeDepthQuotesReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAUnsubscribeDepthQuotesReq[]
    end
end
function Base.getproperty(obj::ProtoOAUnsubscribeDepthQuotesReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolId
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAUnsubscribeDepthQuotesRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAUnsubscribeDepthQuotesRes(; kwargs...)
        obj = new(meta(ProtoOAUnsubscribeDepthQuotesRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAUnsubscribeDepthQuotesRes
const __meta_ProtoOAUnsubscribeDepthQuotesRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAUnsubscribeDepthQuotesRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAUnsubscribeDepthQuotesRes)
            __meta_ProtoOAUnsubscribeDepthQuotesRes[] = target = ProtoMeta(ProtoOAUnsubscribeDepthQuotesRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_UNSUBSCRIBE_DEPTH_QUOTES_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAUnsubscribeDepthQuotesRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAUnsubscribeDepthQuotesRes[]
    end
end
function Base.getproperty(obj::ProtoOAUnsubscribeDepthQuotesRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolCategoryListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolCategoryListReq(; kwargs...)
        obj = new(meta(ProtoOASymbolCategoryListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolCategoryListReq
const __meta_ProtoOASymbolCategoryListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolCategoryListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolCategoryListReq)
            __meta_ProtoOASymbolCategoryListReq[] = target = ProtoMeta(ProtoOASymbolCategoryListReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOL_CATEGORY_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOASymbolCategoryListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolCategoryListReq[]
    end
end
function Base.getproperty(obj::ProtoOASymbolCategoryListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOASymbolCategoryListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOASymbolCategoryListRes(; kwargs...)
        obj = new(meta(ProtoOASymbolCategoryListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOASymbolCategoryListRes
const __meta_ProtoOASymbolCategoryListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOASymbolCategoryListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOASymbolCategoryListRes)
            __meta_ProtoOASymbolCategoryListRes[] = target = ProtoMeta(ProtoOASymbolCategoryListRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_SYMBOL_CATEGORY_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :symbolCategory => Base.Vector{ProtoOASymbolCategory}]
            meta(target, ProtoOASymbolCategoryListRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOASymbolCategoryListRes[]
    end
end
function Base.getproperty(obj::ProtoOASymbolCategoryListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :symbolCategory
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOASymbolCategory}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAccountLogoutReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAccountLogoutReq(; kwargs...)
        obj = new(meta(ProtoOAAccountLogoutReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAccountLogoutReq
const __meta_ProtoOAAccountLogoutReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAccountLogoutReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAccountLogoutReq)
            __meta_ProtoOAAccountLogoutReq[] = target = ProtoMeta(ProtoOAAccountLogoutReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ACCOUNT_LOGOUT_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAAccountLogoutReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAccountLogoutReq[]
    end
end
function Base.getproperty(obj::ProtoOAAccountLogoutReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAccountLogoutRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAccountLogoutRes(; kwargs...)
        obj = new(meta(ProtoOAAccountLogoutRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAccountLogoutRes
const __meta_ProtoOAAccountLogoutRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAccountLogoutRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAccountLogoutRes)
            __meta_ProtoOAAccountLogoutRes[] = target = ProtoMeta(ProtoOAAccountLogoutRes)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ACCOUNT_LOGOUT_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAAccountLogoutRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAccountLogoutRes[]
    end
end
function Base.getproperty(obj::ProtoOAAccountLogoutRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAAccountDisconnectEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAAccountDisconnectEvent(; kwargs...)
        obj = new(meta(ProtoOAAccountDisconnectEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAAccountDisconnectEvent
const __meta_ProtoOAAccountDisconnectEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAAccountDisconnectEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAAccountDisconnectEvent)
            __meta_ProtoOAAccountDisconnectEvent[] = target = ProtoMeta(ProtoOAAccountDisconnectEvent)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_ACCOUNT_DISCONNECT_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAAccountDisconnectEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAAccountDisconnectEvent[]
    end
end
function Base.getproperty(obj::ProtoOAAccountDisconnectEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCallListReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCallListReq(; kwargs...)
        obj = new(meta(ProtoOAMarginCallListReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginCallListReq
const __meta_ProtoOAMarginCallListReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCallListReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCallListReq)
            __meta_ProtoOAMarginCallListReq[] = target = ProtoMeta(ProtoOAMarginCallListReq)
            req = Symbol[:ctidTraderAccountId]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CALL_LIST_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64]
            meta(target, ProtoOAMarginCallListReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCallListReq[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCallListReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCallListRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCallListRes(; kwargs...)
        obj = new(meta(ProtoOAMarginCallListRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginCallListRes
const __meta_ProtoOAMarginCallListRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCallListRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCallListRes)
            __meta_ProtoOAMarginCallListRes[] = target = ProtoMeta(ProtoOAMarginCallListRes)
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CALL_LIST_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :marginCall => Base.Vector{ProtoOAMarginCall}]
            meta(target, ProtoOAMarginCallListRes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCallListRes[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCallListRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :marginCall
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoOAMarginCall}
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCallUpdateReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCallUpdateReq(; kwargs...)
        obj = new(meta(ProtoOAMarginCallUpdateReq), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginCallUpdateReq
const __meta_ProtoOAMarginCallUpdateReq = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCallUpdateReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCallUpdateReq)
            __meta_ProtoOAMarginCallUpdateReq[] = target = ProtoMeta(ProtoOAMarginCallUpdateReq)
            req = Symbol[:ctidTraderAccountId,:marginCall]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CALL_UPDATE_REQ)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :marginCall => ProtoOAMarginCall]
            meta(target, ProtoOAMarginCallUpdateReq, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCallUpdateReq[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCallUpdateReq, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :marginCall
        return (obj.__protobuf_jl_internal_values[name])::ProtoOAMarginCall
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCallUpdateRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCallUpdateRes(; kwargs...)
        obj = new(meta(ProtoOAMarginCallUpdateRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginCallUpdateRes
const __meta_ProtoOAMarginCallUpdateRes = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCallUpdateRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCallUpdateRes)
            __meta_ProtoOAMarginCallUpdateRes[] = target = ProtoMeta(ProtoOAMarginCallUpdateRes)
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CALL_UPDATE_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32]
            meta(target, ProtoOAMarginCallUpdateRes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCallUpdateRes[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCallUpdateRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCallUpdateEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCallUpdateEvent(; kwargs...)
        obj = new(meta(ProtoOAMarginCallUpdateEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginCallUpdateEvent
const __meta_ProtoOAMarginCallUpdateEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCallUpdateEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCallUpdateEvent)
            __meta_ProtoOAMarginCallUpdateEvent[] = target = ProtoMeta(ProtoOAMarginCallUpdateEvent)
            req = Symbol[:ctidTraderAccountId,:marginCall]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CALL_UPDATE_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :marginCall => ProtoOAMarginCall]
            meta(target, ProtoOAMarginCallUpdateEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCallUpdateEvent[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCallUpdateEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :marginCall
        return (obj.__protobuf_jl_internal_values[name])::ProtoOAMarginCall
    else
        getfield(obj, name)
    end
end

mutable struct ProtoOAMarginCallTriggerEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoOAMarginCallTriggerEvent(; kwargs...)
        obj = new(meta(ProtoOAMarginCallTriggerEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoOAMarginCallTriggerEvent
const __meta_ProtoOAMarginCallTriggerEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoOAMarginCallTriggerEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoOAMarginCallTriggerEvent)
            __meta_ProtoOAMarginCallTriggerEvent[] = target = ProtoMeta(ProtoOAMarginCallTriggerEvent)
            req = Symbol[:ctidTraderAccountId,:marginCall]
            val = Dict{Symbol,Any}(:payloadType => ProtoOAPayloadType.PROTO_OA_MARGIN_CALL_TRIGGER_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :ctidTraderAccountId => Int64, :marginCall => ProtoOAMarginCall]
            meta(target, ProtoOAMarginCallTriggerEvent, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoOAMarginCallTriggerEvent[]
    end
end
function Base.getproperty(obj::ProtoOAMarginCallTriggerEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ctidTraderAccountId
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :marginCall
        return (obj.__protobuf_jl_internal_values[name])::ProtoOAMarginCall
    else
        getfield(obj, name)
    end
end

export ProtoOAApplicationAuthReq, ProtoOAApplicationAuthRes, ProtoOAAccountAuthReq, ProtoOAAccountAuthRes, ProtoOAErrorRes, ProtoOAClientDisconnectEvent, ProtoOAAccountsTokenInvalidatedEvent, ProtoOAVersionReq, ProtoOAVersionRes, ProtoOANewOrderReq, ProtoOAExecutionEvent, ProtoOACancelOrderReq, ProtoOAAmendOrderReq, ProtoOAAmendPositionSLTPReq, ProtoOAClosePositionReq, ProtoOATrailingSLChangedEvent, ProtoOAAssetListReq, ProtoOAAssetListRes, ProtoOASymbolsListReq, ProtoOASymbolsListRes, ProtoOASymbolByIdReq, ProtoOASymbolByIdRes, ProtoOASymbolsForConversionReq, ProtoOASymbolsForConversionRes, ProtoOASymbolChangedEvent, ProtoOAAssetClassListReq, ProtoOAAssetClassListRes, ProtoOATraderReq, ProtoOATraderRes, ProtoOATraderUpdatedEvent, ProtoOAReconcileReq, ProtoOAReconcileRes, ProtoOAOrderErrorEvent, ProtoOADealListReq, ProtoOADealListRes, ProtoOAExpectedMarginReq, ProtoOAExpectedMarginRes, ProtoOAMarginChangedEvent, ProtoOACashFlowHistoryListReq, ProtoOACashFlowHistoryListRes, ProtoOAGetAccountListByAccessTokenReq, ProtoOAGetAccountListByAccessTokenRes, ProtoOARefreshTokenReq, ProtoOARefreshTokenRes, ProtoOASubscribeSpotsReq, ProtoOASubscribeSpotsRes, ProtoOAUnsubscribeSpotsReq, ProtoOAUnsubscribeSpotsRes, ProtoOASpotEvent, ProtoOASubscribeLiveTrendbarReq, ProtoOASubscribeLiveTrendbarRes, ProtoOAUnsubscribeLiveTrendbarReq, ProtoOAUnsubscribeLiveTrendbarRes, ProtoOAGetTrendbarsReq, ProtoOAGetTrendbarsRes, ProtoOAGetTickDataReq, ProtoOAGetTickDataRes, ProtoOAGetCtidProfileByTokenReq, ProtoOAGetCtidProfileByTokenRes, ProtoOADepthEvent, ProtoOASubscribeDepthQuotesReq, ProtoOASubscribeDepthQuotesRes, ProtoOAUnsubscribeDepthQuotesReq, ProtoOAUnsubscribeDepthQuotesRes, ProtoOASymbolCategoryListReq, ProtoOASymbolCategoryListRes, ProtoOAAccountLogoutReq, ProtoOAAccountLogoutRes, ProtoOAAccountDisconnectEvent, ProtoOAMarginCallListReq, ProtoOAMarginCallListRes, ProtoOAMarginCallUpdateReq, ProtoOAMarginCallUpdateRes, ProtoOAMarginCallUpdateEvent, ProtoOAMarginCallTriggerEvent
