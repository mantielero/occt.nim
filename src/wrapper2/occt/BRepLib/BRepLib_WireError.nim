type
  BRepLibWireError* {.size: sizeof(cint), importcpp: "BRepLib_WireError",
                     header: "BRepLib_WireError.hxx".} = enum
    BRepLibWireDone, BRepLibEmptyWire, BRepLibDisconnectedWire,
    BRepLibNonManifoldWire

