type
  AppParCurvesConstraint* {.size: sizeof(cint),
                           importcpp: "AppParCurves_Constraint",
                           header: "AppParCurves_Constraint.hxx".} = enum
    AppParCurvesNoConstraint, AppParCurvesPassPoint, AppParCurvesTangencyPoint,
    AppParCurvesCurvaturePoint

