import ../ncollection/ncollection_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../adaptor3d/adaptor3d_types
import ../gp/gp_types

type
  ApproxParametrizationType* {.size: sizeof(cint),
                              importcpp: "Approx_ParametrizationType",
                              header: "Approx_ParametrizationType.hxx".} = enum
    ApproxChordLength,        
    ApproxCentripetal,        
    ApproxIsoParametric       

  ApproxStatus* {.size: sizeof(cint), importcpp: "Approx_Status",
                 header: "Approx_Status.hxx".} = enum
    ApproxPointsAdded, ApproxNoPointsAdded, ApproxNoApproximation

  ApproxCurve2d* {.importcpp: "Approx_Curve2d", header: "Approx_Curve2d.hxx", bycopy.} = object

  ApproxCurve3d* {.importcpp: "Approx_Curve3d", header: "Approx_Curve3d.hxx", bycopy.} = object 

  ApproxCurveOnSurface* {.importcpp: "Approx_CurveOnSurface",
                         header: "Approx_CurveOnSurface.hxx", bycopy.} = object 

  ApproxCurvilinearParameter* {.importcpp: "Approx_CurvilinearParameter",
                               header: "Approx_CurvilinearParameter.hxx", bycopy.} = object 

  ApproxFitAndDivide* {.importcpp: "Approx_FitAndDivide",
                       header: "Approx_FitAndDivide.hxx", bycopy.} = object 

  ApproxFitAndDivide2d* {.importcpp: "Approx_FitAndDivide2d",
                         header: "Approx_FitAndDivide2d.hxx", bycopy.} = object 

  ApproxMCurvesToBSpCurve* {.importcpp: "Approx_MCurvesToBSpCurve",
                            header: "Approx_MCurvesToBSpCurve.hxx", bycopy.} = object

  ApproxSameParameter* {.importcpp: "Approx_SameParameter",
                        header: "Approx_SameParameter.hxx", bycopy.} = object 

  ApproxSweepApproximation* {.importcpp: "Approx_SweepApproximation",
                             header: "Approx_SweepApproximation.hxx", bycopy.} = object

  ApproxIntKnotTools* {.importcpp: "ApproxInt_KnotTools",
                       header: "ApproxInt_KnotTools.hxx", bycopy.} = object 

  ApproxIntSvSurfaces* {.importcpp: "ApproxInt_SvSurfaces",
                        header: "ApproxInt_SvSurfaces.hxx", bycopy.} = object 

  ApproxArray1OfAdHSurface* = NCollectionArray1[Handle[Adaptor3dHSurface]]

  ApproxArray1OfGTrsf2d* = NCollectionArray1[GTrsf2d]

  ApproxSequenceOfHArray1OfReal* = NCollectionSequence[
      Handle[TColStdHArray1OfReal]]

  ApproxCurvlinFunc* {.importcpp: "Approx_CurvlinFunc",
                      header: "Approx_CurvlinFunc.hxx", bycopy.} = object of StandardTransient

  HandleApproxCurvlinFunc* = Handle[ApproxCurvlinFunc]

  ApproxHArray1OfAdHSurface* {.importcpp: "Approx_HArray1OfAdHSurface",
                              header: "Approx_HArray1OfAdHSurface.hxx", bycopy.} = object of ApproxArray1OfAdHSurface

  ApproxHArray1OfGTrsf2d* {.importcpp: "Approx_HArray1OfGTrsf2d",
                           header: "Approx_HArray1OfGTrsf2d.hxx", bycopy.} = object of ApproxArray1OfGTrsf2d
                           #header: "Approx_HArray1OfGTrsf2d.hxx", bycopy.} = object of ApproxArray1OfGTrsf2d

                           #header: "Approx_HArray1OfGTrsf2d.hxx", bycopy.} = object of ApproxArray1OfGTrsf2d
  ApproxSweepFunction* {.importcpp: "Approx_SweepFunction",
                        header: "Approx_SweepFunction.hxx", bycopy.} = object of StandardTransient 

  HandleApproxSweepFunction* = Handle[ApproxSweepFunction]

