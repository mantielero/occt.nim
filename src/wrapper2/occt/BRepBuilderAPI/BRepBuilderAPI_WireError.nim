type
  BRepBuilderAPI_WireError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_WireError",
                             header: "BRepBuilderAPI_WireError.hxx".} = enum
    BRepBuilderAPI_WireDone, BRepBuilderAPI_EmptyWire,
    BRepBuilderAPI_DisconnectedWire, BRepBuilderAPI_NonManifoldWire

