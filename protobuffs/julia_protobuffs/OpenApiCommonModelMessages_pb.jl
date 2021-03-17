# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

const ProtoPayloadType = (;[
    Symbol("PROTO_MESSAGE") => Int32(5),
    Symbol("ERROR_RES") => Int32(50),
    Symbol("HEARTBEAT_EVENT") => Int32(51),
]...)

const ProtoErrorCode = (;[
    Symbol("UNKNOWN_ERROR") => Int32(1),
    Symbol("UNSUPPORTED_MESSAGE") => Int32(2),
    Symbol("INVALID_REQUEST") => Int32(3),
    Symbol("TIMEOUT_ERROR") => Int32(5),
    Symbol("ENTITY_NOT_FOUND") => Int32(6),
    Symbol("CANT_ROUTE_REQUEST") => Int32(7),
    Symbol("FRAME_TOO_LONG") => Int32(8),
    Symbol("MARKET_CLOSED") => Int32(9),
    Symbol("CONCURRENT_MODIFICATION") => Int32(10),
    Symbol("BLOCKED_PAYLOAD_TYPE") => Int32(11),
]...)

export ProtoPayloadType, ProtoErrorCode
