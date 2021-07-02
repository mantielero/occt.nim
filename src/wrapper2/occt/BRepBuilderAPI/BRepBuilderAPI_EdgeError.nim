type
  BRepBuilderAPI_EdgeError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_EdgeError",
                             header: "BRepBuilderAPI_EdgeError.hxx".} = enum
    BRepBuilderAPI_EdgeDone, BRepBuilderAPI_PointProjectionFailed,
    BRepBuilderAPI_ParameterOutOfRange,
    BRepBuilderAPI_DifferentPointsOnClosedCurve,
    BRepBuilderAPI_PointWithInfiniteParameter,
    BRepBuilderAPI_DifferentsPointAndParameter,
    BRepBuilderAPI_LineThroughIdenticPoints

