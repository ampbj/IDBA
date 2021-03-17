# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

mutable struct ProtoMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoMessage(; kwargs...)
        obj = new(meta(ProtoMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoMessage
const __meta_ProtoMessage = Ref{ProtoMeta}()
function meta(::Type{ProtoMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoMessage)
            __meta_ProtoMessage[] = target = ProtoMeta(ProtoMessage)
            req = Symbol[:payloadType]
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => UInt32, :payload => Array{UInt8,1}, :clientMsgId => AbstractString]
            meta(target, ProtoMessage, allflds, req, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoMessage[]
    end
end
function Base.getproperty(obj::ProtoMessage, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :payload
        return (obj.__protobuf_jl_internal_values[name])::Array{UInt8,1}
    elseif name === :clientMsgId
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ProtoErrorRes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoErrorRes(; kwargs...)
        obj = new(meta(ProtoErrorRes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoErrorRes
const __meta_ProtoErrorRes = Ref{ProtoMeta}()
function meta(::Type{ProtoErrorRes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoErrorRes)
            __meta_ProtoErrorRes[] = target = ProtoMeta(ProtoErrorRes)
            req = Symbol[:errorCode]
            val = Dict{Symbol,Any}(:payloadType => ProtoPayloadType.ERROR_RES)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32, :errorCode => AbstractString, :description => AbstractString, :maintenanceEndTimestamp => UInt64]
            meta(target, ProtoErrorRes, allflds, req, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoErrorRes[]
    end
end
function Base.getproperty(obj::ProtoErrorRes, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :errorCode
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :maintenanceEndTimestamp
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct ProtoHeartbeatEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ProtoHeartbeatEvent(; kwargs...)
        obj = new(meta(ProtoHeartbeatEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ProtoHeartbeatEvent
const __meta_ProtoHeartbeatEvent = Ref{ProtoMeta}()
function meta(::Type{ProtoHeartbeatEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ProtoHeartbeatEvent)
            __meta_ProtoHeartbeatEvent[] = target = ProtoMeta(ProtoHeartbeatEvent)
            val = Dict{Symbol,Any}(:payloadType => ProtoPayloadType.HEARTBEAT_EVENT)
            allflds = Pair{Symbol,Union{Type,String}}[:payloadType => Int32]
            meta(target, ProtoHeartbeatEvent, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, val, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ProtoHeartbeatEvent[]
    end
end
function Base.getproperty(obj::ProtoHeartbeatEvent, name::Symbol)
    if name === :payloadType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export ProtoMessage, ProtoErrorRes, ProtoHeartbeatEvent
