type
  GeomAbsCurveType* {.size: sizeof(cint), importcpp: "GeomAbs_CurveType",
                     header: "GeomAbs_CurveType.hxx".} = enum
    GeomAbsLine, GeomAbsCircle, GeomAbsEllipse, GeomAbsHyperbola, GeomAbsParabola,
    GeomAbsBezierCurve, GeomAbsBSplineCurve, GeomAbsOffsetCurve, GeomAbsOtherCurve

