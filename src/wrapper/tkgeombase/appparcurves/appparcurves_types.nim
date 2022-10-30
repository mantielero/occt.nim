# PROVIDES: AppParCurvesConstraint AppParCurves AppParCurvesConstraintCouple AppParCurvesMultiCurve AppParCurvesMultiPoint
# DEPENDS:  NCollectionArray1[  NCollectionArray1[AppParCurvesMultiBSpCurve]  NCollectionArray1[AppParCurvesMultiCurve]  NCollectionArray1[AppParCurvesMultiPoint]  NCollectionSequence[  NCollectionSequence[AppParCurvesMultiCurve] AppParCurvesMultiCurve AppParCurvesArray1OfConstraintCouple AppParCurvesArray1OfMultiBSpCurve AppParCurvesArray1OfMultiCurve AppParCurvesArray1OfMultiPoint

import tkgeombase/appparcurves/appparcurves_types
import tkernel/ncollection/ncollection_types
type
  AppParCurvesConstraint* {.size: sizeof(cint),
                           importcpp: "AppParCurves_Constraint",
                           header: "AppParCurves_Constraint.hxx".} = enum
    appParCurvesNoConstraint, appParCurvesPassPoint, appParCurvesTangencyPoint,
    appParCurvesCurvaturePoint

  AppParCurves* {.importcpp: "AppParCurves", header: "AppParCurves.hxx", bycopy.} = object

  AppParCurvesConstraintCouple* {.importcpp: "AppParCurves_ConstraintCouple",
                                 header: "AppParCurves_ConstraintCouple.hxx",
                                 bycopy.} = object 

  AppParCurvesMultiCurve* {.importcpp: "AppParCurves_MultiCurve",
                           header: "AppParCurves_MultiCurve.hxx", bycopy.} = object of RootObj 

  AppParCurvesMultiPoint* {.importcpp: "AppParCurves_MultiPoint",
                           header: "AppParCurves_MultiPoint.hxx", bycopy.} = object 

  AppParCurvesArray1OfConstraintCouple* = NCollectionArray1[
      AppParCurvesConstraintCouple]

  AppParCurvesArray1OfMultiBSpCurve* = NCollectionArray1[AppParCurvesMultiBSpCurve]

  AppParCurvesArray1OfMultiCurve* = NCollectionArray1[AppParCurvesMultiCurve]

  AppParCurvesArray1OfMultiPoint* = NCollectionArray1[AppParCurvesMultiPoint]

  AppParCurvesSequenceOfMultiBSpCurve* = NCollectionSequence[
      AppParCurvesMultiBSpCurve]

  AppParCurvesSequenceOfMultiCurve* = NCollectionSequence[AppParCurvesMultiCurve]

  AppParCurvesMultiBSpCurve* {.importcpp: "AppParCurves_MultiBSpCurve",
                              header: "AppParCurves_MultiBSpCurve.hxx", bycopy.} = object of AppParCurvesMultiCurve 

  AppParCurvesHArray1OfConstraintCouple* {.
      importcpp: "AppParCurves_HArray1OfConstraintCouple",
      header: "AppParCurves_HArray1OfConstraintCouple.hxx", bycopy.} = object of AppParCurvesArray1OfConstraintCouple

  AppParCurvesHArray1OfMultiBSpCurve* {.importcpp: "AppParCurves_HArray1OfMultiBSpCurve", header: "AppParCurves_HArray1OfMultiBSpCurve.hxx",
                                       bycopy.} = object of AppParCurvesArray1OfMultiBSpCurve

  AppParCurvesHArray1OfMultiCurve* {.importcpp: "AppParCurves_HArray1OfMultiCurve", header: "AppParCurves_HArray1OfMultiCurve.hxx",
                                    bycopy.} = object of AppParCurvesArray1OfMultiCurve

                                    bycopy.} = object of AppParCurvesArray1OfMultiCurve
  AppParCurvesHArray1OfMultiPoint* {.importcpp: "AppParCurves_HArray1OfMultiPoint", header: "AppParCurves_HArray1OfMultiPoint.hxx",
                                    bycopy.} = object of AppParCurvesArray1OfMultiPoint


