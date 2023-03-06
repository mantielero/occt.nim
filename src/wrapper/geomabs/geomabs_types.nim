# PROVIDES: GeomAbsBSplKnotDistribution GeomAbsCurveType GeomAbsIsoType GeomAbsJoinType GeomAbsShape GeomAbsSurfaceType
# DEPENDS:

type
  GeomAbsBSplKnotDistribution* {.size: sizeof(cint),
                                importcpp: "GeomAbs_BSplKnotDistribution",
                                header: "GeomAbs_BSplKnotDistribution.hxx".} = enum
    GeomAbsNonUniform, GeomAbsUniform, GeomAbsQuasiUniform, GeomAbsPiecewiseBezier

  GeomAbsCurveType* {.size: sizeof(cint), importcpp: "GeomAbs_CurveType",
                     header: "GeomAbs_CurveType.hxx".} = enum
    GeomAbsLine, GeomAbsCircle, GeomAbsEllipse, GeomAbsHyperbola, GeomAbsParabola,
    GeomAbsBezierCurve, GeomAbsBSplineCurve, GeomAbsOffsetCurve, GeomAbsOtherCurve

  GeomAbsIsoType* {.size: sizeof(cint), importcpp: "GeomAbs_IsoType",
                   header: "GeomAbs_IsoType.hxx".} = enum
    GeomAbsIsoU, GeomAbsIsoV, GeomAbsNoneIso

  GeomAbsJoinType* {.size: sizeof(cint), importcpp: "GeomAbs_JoinType",
                    header: "GeomAbs_JoinType.hxx".} = enum
    GeomAbsArc, GeomAbsTangent, GeomAbsIntersection

  GeomAbsShape* {.size: sizeof(cint), importcpp: "GeomAbs_Shape",
                 header: "GeomAbs_Shape.hxx".} = enum
    geomAbsC0, geomAbsG1, geomAbsC1, geomAbsG2, geomAbsC2, geomAbsC3, geomAbsCN

  GeomAbsSurfaceType* {.size: sizeof(cint), importcpp: "GeomAbs_SurfaceType",
                       header: "GeomAbs_SurfaceType.hxx".} = enum
    GeomAbsPlane, GeomAbsCylinder, GeomAbsCone, GeomAbsSphere, GeomAbsTorus,
    GeomAbsBezierSurface, GeomAbsBSplineSurface, GeomAbsSurfaceOfRevolution,
    GeomAbsSurfaceOfExtrusion, GeomAbsOffsetSurface, GeomAbsOtherSurface

