import ../appblend/appblend_types
import ../approx/approx_types
import ../adaptor3d/adaptor3d_types
import ../math/math_types
import ../ncollection/ncollection_types
import ../geom/geom_types
import ../standard/standard_types
import ../gp/gp_types

type
  GeomFillApproxStyle* {.size: sizeof(cint), importcpp: "GeomFill_ApproxStyle",
                        header: "GeomFill_ApproxStyle.hxx".} = enum
    geomFillSection, geomFillLocation

  GeomFillFillingStyle* {.size: sizeof(cint), importcpp: "GeomFill_FillingStyle",
                         header: "GeomFill_FillingStyle.hxx".} = enum
    GeomFillStretchStyle, GeomFillCoonsStyle, GeomFillCurvedStyle

  GeomFillPipeError* {.size: sizeof(cint), importcpp: "GeomFill_PipeError",
                      header: "GeomFill_PipeError.hxx".} = enum
    GeomFillPipeOk, GeomFillPipeNotOk, GeomFillPlaneNotIntersectGuide,
    GeomFillImpossibleContact

  GeomFillTrihedron* {.size: sizeof(cint), importcpp: "GeomFill_Trihedron",
                      header: "GeomFill_Trihedron.hxx".} = enum
    geomFillIsCorrectedFrenet, geomFillIsFixed, geomFillIsFrenet,
    geomFillIsConstantNormal, geomFillIsDarboux, geomFillIsGuideAC,
    geomFillIsGuidePlan, geomFillIsGuideACWithContact,
    geomFillIsGuidePlanWithContact, geomFillIsDiscreteTrihedron

  GeomFill* {.importcpp: "GeomFill", header: "GeomFill.hxx", bycopy.} = object 

  GeomFillBezierCurves* {.importcpp: "GeomFill_BezierCurves",
                         header: "GeomFill_BezierCurves.hxx", bycopy.} = object 

  GeomFillBSplineCurves* {.importcpp: "GeomFill_BSplineCurves",
                          header: "GeomFill_BSplineCurves.hxx", bycopy.} = object 

  GeomFillConstrainedFilling* {.importcpp: "GeomFill_ConstrainedFilling",
                               header: "GeomFill_ConstrainedFilling.hxx", bycopy.} = object 

  GeomFillCornerState* {.importcpp: "GeomFill_CornerState",
                        header: "GeomFill_CornerState.hxx", bycopy.} = object

  GeomFillFilling* {.importcpp: "GeomFill_Filling", header: "GeomFill_Filling.hxx",
                    bycopy.} = object of RootObj

  GeomFillLocFunction* {.importcpp: "GeomFill_LocFunction",
                        header: "GeomFill_LocFunction.hxx", bycopy.} = object

  GeomFillPipe* {.importcpp: "GeomFill_Pipe", header: "GeomFill_Pipe.hxx", bycopy.} = object 

  GeomFillPolynomialConvertor* {.importcpp: "GeomFill_PolynomialConvertor",
                                header: "GeomFill_PolynomialConvertor.hxx", bycopy.} = object

  GeomFillProfiler* {.importcpp: "GeomFill_Profiler",
                     header: "GeomFill_Profiler.hxx", bycopy.} = object of RootObj

  GeomFillQuasiAngularConvertor* {.importcpp: "GeomFill_QuasiAngularConvertor",
                                  header: "GeomFill_QuasiAngularConvertor.hxx",
                                  bycopy.} = object

  GeomFillSectionPlacement* {.importcpp: "GeomFill_SectionPlacement",
                             header: "GeomFill_SectionPlacement.hxx", bycopy.} = object

  GeomFillSweep* {.importcpp: "GeomFill_Sweep", header: "GeomFill_Sweep.hxx", bycopy.} = object

  GeomFillSweepSectionGenerator* {.importcpp: "GeomFill_SweepSectionGenerator",
                                  header: "GeomFill_SweepSectionGenerator.hxx",
                                  bycopy.} = object

  GeomFillTensor* {.importcpp: "GeomFill_Tensor", header: "GeomFill_Tensor.hxx",
                   bycopy.} = object

  GeomFillArray1OfLocationLaw* = NCollectionArray1[Handle[GeomFillLocationLaw]]

  GeomFillArray1OfSectionLaw* = NCollectionArray1[Handle[GeomFillSectionLaw]]

  GeomFillSequenceOfAx2* = NCollectionSequence[Ax2Obj]

  GeomFillSequenceOfTrsf* = NCollectionSequence[TrsfObj]

  GeomFillCoons* {.importcpp: "GeomFill_Coons", header: "GeomFill_Coons.hxx", bycopy.} = object of GeomFillFilling

  GeomFillCurved* {.importcpp: "GeomFill_Curved", header: "GeomFill_Curved.hxx",
                   bycopy.} = object of GeomFillFilling

  GeomFillGenerator* {.importcpp: "GeomFill_Generator",
                      header: "GeomFill_Generator.hxx", bycopy.} = object of GeomFillProfiler

  GeomFillSectionGenerator* {.importcpp: "GeomFill_SectionGenerator",
                             header: "GeomFill_SectionGenerator.hxx", bycopy.} = object of GeomFillProfiler

  GeomFillStretch* {.importcpp: "GeomFill_Stretch", header: "GeomFill_Stretch.hxx",
                    bycopy.} = object of GeomFillFilling

  GeomFillAppSurf* {.importcpp: "GeomFill_AppSurf", header: "GeomFill_AppSurf.hxx",
                    bycopy.} = object of AppBlendApprox

  GeomFillAppSweep* {.importcpp: "GeomFill_AppSweep",
                     header: "GeomFill_AppSweep.hxx", bycopy.} = object of AppBlendApprox

  GeomFillBoundary* {.importcpp: "GeomFill_Boundary",
                     header: "GeomFill_Boundary.hxx", bycopy.} = object of StandardTransient

  HandleGeomFillBoundary* = Handle[GeomFillBoundary]

  GeomFillBoundWithSurf* {.importcpp: "GeomFill_BoundWithSurf",
                          header: "GeomFill_BoundWithSurf.hxx", bycopy.} = object of GeomFillBoundary 

  HandleGeomFillBoundWithSurf* = Handle[GeomFillBoundWithSurf]

  GeomFillCircularBlendFunc* {.importcpp: "GeomFill_CircularBlendFunc",
                              header: "GeomFill_CircularBlendFunc.hxx", bycopy.} = object of ApproxSweepFunction 

  HandleGeomFillCircularBlendFunc* = Handle[GeomFillCircularBlendFunc]

  GeomFillCoonsAlgPatch* {.importcpp: "GeomFill_CoonsAlgPatch",
                          header: "GeomFill_CoonsAlgPatch.hxx", bycopy.} = object of StandardTransient 

  HandleGeomFillCoonsAlgPatch* = Handle[GeomFillCoonsAlgPatch]

  GeomFillDegeneratedBound* {.importcpp: "GeomFill_DegeneratedBound",
                             header: "GeomFill_DegeneratedBound.hxx", bycopy.} = object of GeomFillBoundary

  HandleGeomFillDegeneratedBound* = Handle[GeomFillDegeneratedBound]

  GeomFillFunctionDraft* {.importcpp: "GeomFill_FunctionDraft",
                          header: "GeomFill_FunctionDraft.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  GeomFillFunctionGuide* {.importcpp: "GeomFill_FunctionGuide",
                          header: "GeomFill_FunctionGuide.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  GeomFillHArray1OfLocationLaw* {.importcpp: "GeomFill_HArray1OfLocationLaw",
                                 header: "GeomFill_HArray1OfLocationLaw.hxx",
                                 bycopy.} = object of GeomFillArray1OfLocationLaw

  GeomFillHArray1OfSectionLaw* {.importcpp: "GeomFill_HArray1OfSectionLaw",
                                header: "GeomFill_HArray1OfSectionLaw.hxx", bycopy.} = object of GeomFillArray1OfSectionLaw

  GeomFillHSequenceOfAx2* {.importcpp: "GeomFill_HSequenceOfAx2",
                           header: "GeomFill_HSequenceOfAx2.hxx", bycopy.} = object of GeomFillSequenceOfAx2

  GeomFillLine* {.importcpp: "GeomFill_Line", header: "GeomFill_Line.hxx", bycopy.} = object of StandardTransient

  HandleGeomFillLine* = Handle[GeomFillLine]

  GeomFillLocationLaw* {.importcpp: "GeomFill_LocationLaw",
                        header: "GeomFill_LocationLaw.hxx", bycopy.} = object of StandardTransient

  GeomFillLocationGuide* {.importcpp: "GeomFill_LocationGuide",
                          header: "GeomFill_LocationGuide.hxx", bycopy.} = object of GeomFillLocationLaw

  HandleGeomFillLocationGuide* = Handle[GeomFillLocationGuide]

  GeomFillLocationDraft* {.importcpp: "GeomFill_LocationDraft",
                          header: "GeomFill_LocationDraft.hxx", bycopy.} = object of GeomFillLocationLaw

  HandleGeomFillLocationDraft* = Handle[GeomFillLocationDraft]

  GeomFillCurveAndTrihedron* {.importcpp: "GeomFill_CurveAndTrihedron",
                              header: "GeomFill_CurveAndTrihedron.hxx", bycopy.} = object of GeomFillLocationLaw

  HandleGeomFillCurveAndTrihedron* = Handle[GeomFillCurveAndTrihedron]

  HandleGeomFillLocationLaw* = Handle[GeomFillLocationLaw]

  GeomFillPlanFunc* {.importcpp: "GeomFill_PlanFunc",
                     header: "GeomFill_PlanFunc.hxx", bycopy.} = object of MathFunctionWithDerivative

  GeomFillSectionLaw* {.importcpp: "GeomFill_SectionLaw",
                       header: "GeomFill_SectionLaw.hxx", bycopy.} = object of StandardTransient 

  GeomFillNSections* {.importcpp: "GeomFill_NSections",
                      header: "GeomFill_NSections.hxx", bycopy.} = object of GeomFillSectionLaw 

  HandleGeomFillNSections* = Handle[GeomFillNSections]

  GeomFillEvolvedSection* {.importcpp: "GeomFill_EvolvedSection",
                           header: "GeomFill_EvolvedSection.hxx", bycopy.} = object of GeomFillSectionLaw 

  HandleGeomFillEvolvedSection* = Handle[GeomFillEvolvedSection]

  HandleGeomFillSectionLaw* = Handle[GeomFillSectionLaw]

  GeomFillSimpleBound* {.importcpp: "GeomFill_SimpleBound",
                        header: "GeomFill_SimpleBound.hxx", bycopy.} = object of GeomFillBoundary 

  HandleGeomFillSimpleBound* = Handle[GeomFillSimpleBound]

  GeomFillSnglrFunc* {.importcpp: "GeomFill_SnglrFunc",
                      header: "GeomFill_SnglrFunc.hxx", bycopy.} = object of Adaptor3dCurve

  GeomFillSweepFunction* {.importcpp: "GeomFill_SweepFunction",
                          header: "GeomFill_SweepFunction.hxx", bycopy.} = object of ApproxSweepFunction

  HandleGeomFillSweepFunction* = Handle[GeomFillSweepFunction]

  GeomFillTgtField* {.importcpp: "GeomFill_TgtField",
                     header: "GeomFill_TgtField.hxx", bycopy.} = object of StandardTransient

  HandleGeomFillTgtField* = Handle[GeomFillTgtField]

  GeomFillTgtOnCoons* {.importcpp: "GeomFill_TgtOnCoons",
                       header: "GeomFill_TgtOnCoons.hxx", bycopy.} = object of GeomFillTgtField

  HandleGeomFillTgtOnCoons* = Handle[GeomFillTgtOnCoons]

  GeomFillTrihedronLaw* {.importcpp: "GeomFill_TrihedronLaw",
                         header: "GeomFill_TrihedronLaw.hxx", bycopy.} = object of StandardTransient

  GeomFillFrenet* {.importcpp: "GeomFill_Frenet", header: "GeomFill_Frenet.hxx",
                   bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillFrenet* = Handle[GeomFillFrenet]

  GeomFillFixed* {.importcpp: "GeomFill_Fixed", header: "GeomFill_Fixed.hxx", bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillFixed* = Handle[GeomFillFixed]

  GeomFillDraftTrihedron* {.importcpp: "GeomFill_DraftTrihedron",
                           header: "GeomFill_DraftTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillDraftTrihedron* = Handle[GeomFillDraftTrihedron]

  GeomFillDiscreteTrihedron* {.importcpp: "GeomFill_DiscreteTrihedron",
                              header: "GeomFill_DiscreteTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillDiscreteTrihedron* = Handle[GeomFillDiscreteTrihedron]

  GeomFillDarboux* {.importcpp: "GeomFill_Darboux", header: "GeomFill_Darboux.hxx",
                    bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillDarboux* = Handle[GeomFillDarboux]

  GeomFillCorrectedFrenet* {.importcpp: "GeomFill_CorrectedFrenet",
                            header: "GeomFill_CorrectedFrenet.hxx", bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillCorrectedFrenet* = Handle[GeomFillCorrectedFrenet]

  GeomFillConstantBiNormal* {.importcpp: "GeomFill_ConstantBiNormal",
                             header: "GeomFill_ConstantBiNormal.hxx", bycopy.} = object of GeomFillTrihedronLaw

  HandleGeomFillConstantBiNormal* = Handle[GeomFillConstantBiNormal]

  HandleGeomFillTrihedronLaw* = Handle[GeomFillTrihedronLaw]

  GeomFillTrihedronWithGuide* {.importcpp: "GeomFill_TrihedronWithGuide",
                               header: "GeomFill_TrihedronWithGuide.hxx", bycopy.} = object of GeomFillTrihedronLaw
                               #header: "GeomFill_TrihedronWithGuide.hxx", bycopy.} = object of GeomFillTrihedronLaw

  GeomFillGuideTrihedronPlan* {.importcpp: "GeomFill_GuideTrihedronPlan",
                               header: "GeomFill_GuideTrihedronPlan.hxx", bycopy.} = object of GeomFillTrihedronWithGuide

  HandleGeomFillGuideTrihedronPlan* = Handle[GeomFillGuideTrihedronPlan]

  GeomFillGuideTrihedronAC* {.importcpp: "GeomFill_GuideTrihedronAC",
                             header: "GeomFill_GuideTrihedronAC.hxx", bycopy.} = object of GeomFillTrihedronWithGuide

  HandleGeomFillGuideTrihedronAC* = Handle[GeomFillGuideTrihedronAC]

  HandleGeomFillTrihedronWithGuide* = Handle[GeomFillTrihedronWithGuide]

                               #header: "GeomFill_TrihedronWithGuide.hxx", bycopy.} = object of GeomFillTrihedronLaw
  GeomFillUniformSection* {.importcpp: "GeomFill_UniformSection",
                           header: "GeomFill_UniformSection.hxx", bycopy.} = object of GeomFillSectionLaw 

  HandleGeomFillUniformSection* = Handle[GeomFillUniformSection]

