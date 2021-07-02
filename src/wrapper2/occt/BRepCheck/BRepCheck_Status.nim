type
  BRepCheckStatus* {.size: sizeof(cint), importcpp: "BRepCheck_Status",
                    header: "BRepCheck_Status.hxx".} = enum
    BRepCheckNoError, BRepCheckInvalidPointOnCurve,
    BRepCheckInvalidPointOnCurveOnSurface, BRepCheckInvalidPointOnSurface,
    BRepCheckNo3DCurve, BRepCheckMultiple3DCurve, BRepCheckInvalid3DCurve,
    BRepCheckNoCurveOnSurface, BRepCheckInvalidCurveOnSurface,
    BRepCheckInvalidCurveOnClosedSurface, BRepCheckInvalidSameRangeFlag,
    BRepCheckInvalidSameParameterFlag, BRepCheckInvalidDegeneratedFlag,
    BRepCheckFreeEdge, BRepCheckInvalidMultiConnexity, BRepCheckInvalidRange,
    BRepCheckEmptyWire, BRepCheckRedundantEdge, BRepCheckSelfIntersectingWire,
    BRepCheckNoSurface, BRepCheckInvalidWire, BRepCheckRedundantWire,
    BRepCheckIntersectingWires, BRepCheckInvalidImbricationOfWires,
    BRepCheckEmptyShell, BRepCheckRedundantFace,
    BRepCheckInvalidImbricationOfShells, BRepCheckUnorientableShape,
    BRepCheckNotClosed, BRepCheckNotConnected, BRepCheckSubshapeNotInShape,
    BRepCheckBadOrientation, BRepCheckBadOrientationOfSubshape,
    BRepCheckInvalidPolygonOnTriangulation, BRepCheckInvalidToleranceValue,
    BRepCheckEnclosedRegion, BRepCheckCheckFail

