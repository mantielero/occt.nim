type
  BRepExtremaSupportType* {.size: sizeof(cint),
                           importcpp: "BRepExtrema_SupportType",
                           header: "BRepExtrema_SupportType.hxx".} = enum
    BRepExtremaIsVertex, BRepExtremaIsOnEdge, BRepExtremaIsInFace

