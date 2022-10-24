type
  AppParCurves* {.importcpp: "AppParCurves", header: "AppParCurves.hxx", bycopy.} = object
type
  AppParCurvesConstraintCouple* {.importcpp: "AppParCurves_ConstraintCouple",
                                 header: "AppParCurves_ConstraintCouple.hxx",
                                 bycopy.} = object ## ! returns an indefinite ConstraintCouple.
type
  AppParCurvesHArray1OfConstraintCouple* {.
      importcpp: "AppParCurves_HArray1OfConstraintCouple",
      header: "AppParCurves_HArray1OfConstraintCouple.hxx", bycopy.} = object of AppParCurvesArray1OfConstraintCouple
type
  AppParCurvesHArray1OfMultiBSpCurve* {.importcpp: "AppParCurves_HArray1OfMultiBSpCurve", header: "AppParCurves_HArray1OfMultiBSpCurve.hxx",
                                       bycopy.} = object of AppParCurvesArray1OfMultiBSpCurve
type
  AppParCurvesHArray1OfMultiCurve* {.importcpp: "AppParCurves_HArray1OfMultiCurve", header: "AppParCurves_HArray1OfMultiCurve.hxx",
                                    bycopy.} = object of AppParCurvesArray1OfMultiCurve
type
  AppParCurvesHArray1OfMultiPoint* {.importcpp: "AppParCurves_HArray1OfMultiPoint", header: "AppParCurves_HArray1OfMultiPoint.hxx",
                                    bycopy.} = object of AppParCurvesArray1OfMultiPoint
type
  AppParCurvesMultiBSpCurve* {.importcpp: "AppParCurves_MultiBSpCurve",
                              header: "AppParCurves_MultiBSpCurve.hxx", bycopy.} = object of AppParCurvesMultiCurve ##
                                                                                                             ## !
                                                                                                             ## returns
                                                                                                             ## an
                                                                                                             ## indefinite
                                                                                                             ## MultiBSpCurve.
type
  AppParCurvesMultiCurve* {.importcpp: "AppParCurves_MultiCurve",
                           header: "AppParCurves_MultiCurve.hxx", bycopy.} = object of RootObj ## !
                                                                               ## returns
                                                                               ## an
                                                                               ## indefinite
                                                                               ## MultiCurve.
type
  AppParCurvesMultiPoint* {.importcpp: "AppParCurves_MultiPoint",
                           header: "AppParCurves_MultiPoint.hxx", bycopy.} = object ## !
                                                                               ## creates
                                                                               ## an
                                                                               ## indefinite
                                                                               ## MultiPoint.
