# 1 "/usr/include/opencascade/BRepCheck_Status.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/BRepCheck_Status.hxx"
# 21 "/usr/include/opencascade/BRepCheck_Status.hxx"
enum BRepCheck_Status
{
BRepCheck_NoError,
BRepCheck_InvalidPointOnCurve,
BRepCheck_InvalidPointOnCurveOnSurface,
BRepCheck_InvalidPointOnSurface,
BRepCheck_No3DCurve,
BRepCheck_Multiple3DCurve,
BRepCheck_Invalid3DCurve,
BRepCheck_NoCurveOnSurface,
BRepCheck_InvalidCurveOnSurface,
BRepCheck_InvalidCurveOnClosedSurface,
BRepCheck_InvalidSameRangeFlag,
BRepCheck_InvalidSameParameterFlag,
BRepCheck_InvalidDegeneratedFlag,
BRepCheck_FreeEdge,
BRepCheck_InvalidMultiConnexity,
BRepCheck_InvalidRange,
BRepCheck_EmptyWire,
BRepCheck_RedundantEdge,
BRepCheck_SelfIntersectingWire,
BRepCheck_NoSurface,
BRepCheck_InvalidWire,
BRepCheck_RedundantWire,
BRepCheck_IntersectingWires,
BRepCheck_InvalidImbricationOfWires,
BRepCheck_EmptyShell,
BRepCheck_RedundantFace,
BRepCheck_InvalidImbricationOfShells,
BRepCheck_UnorientableShape,
BRepCheck_NotClosed,
BRepCheck_NotConnected,
BRepCheck_SubshapeNotInShape,
BRepCheck_BadOrientation,
BRepCheck_BadOrientationOfSubshape,
BRepCheck_InvalidPolygonOnTriangulation,
BRepCheck_InvalidToleranceValue,
BRepCheck_EnclosedRegion,
BRepCheck_CheckFail
};
