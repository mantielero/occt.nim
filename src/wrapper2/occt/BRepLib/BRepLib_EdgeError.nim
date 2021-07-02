type
  BRepLibEdgeError* {.size: sizeof(cint), importcpp: "BRepLib_EdgeError",
                     header: "BRepLib_EdgeError.hxx".} = enum
    BRepLibEdgeDone, BRepLibPointProjectionFailed, BRepLibParameterOutOfRange,
    BRepLibDifferentPointsOnClosedCurve, BRepLibPointWithInfiniteParameter,
    BRepLibDifferentsPointAndParameter, BRepLibLineThroughIdenticPoints

