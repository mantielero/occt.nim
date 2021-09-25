{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}

include GeomConvert
include GeomConvert_ApproxCurve
include GeomConvert_ApproxSurface
include GeomConvert_BSplineCurveKnotSplitting
include GeomConvert_BSplineCurveToBezierCurve
include GeomConvert_BSplineSurfaceKnotSplitting
include GeomConvert_BSplineSurfaceToBezierSurface
include GeomConvert_CompBezierSurfacesToBSplineSurface
include GeomConvert_CompCurveToBSplineCurve

