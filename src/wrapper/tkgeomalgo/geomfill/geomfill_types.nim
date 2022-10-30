# PROVIDES: GeomFill GeomFillBezierCurves GeomFillBSplineCurves GeomFillConstrainedFilling GeomFillCornerState GeomFillFilling GeomFillLocFunction GeomFillPipe GeomFillPolynomialConvertor GeomFillProfiler GeomFillQuasiAngularConvertor GeomFillSectionPlacement GeomFillSweep GeomFillSweepSectionGenerator GeomFillTensor
# DEPENDS:  Handle[GeomFillBoundary]  Handle[GeomFillBoundWithSurf]  Handle[GeomFillCircularBlendFunc]  Handle[GeomFillConstantBiNormal]  Handle[GeomFillCoonsAlgPatch]  Handle[GeomFillCorrectedFrenet]  Handle[GeomFillCurveAndTrihedron]  Handle[GeomFillDarboux]  Handle[GeomFillDegeneratedBound]  Handle[GeomFillDiscreteTrihedron]  Handle[GeomFillEvolvedSection]  Handle[GeomFillFixed]  Handle[GeomFillFrenet]  Handle[GeomFillGuideTrihedronAC]  Handle[GeomFillGuideTrihedronPlan]  Handle[GeomFillLine]  Handle[GeomFillLocationLaw]  Handle[GeomFillNSections]  Handle[GeomFillSectionLaw]  Handle[GeomFillSimpleBound]  Handle[GeomFillSweepFunction]  Handle[GeomFillTgtField]  Handle[GeomFillTgtOnCoons]  Handle[GeomFillTrihedronLaw]  Handle[GeomFillTrihedronWithGuide]  Handle[GeomFillUniformSection] GeomFillFilling GeomFillFilling GeomFillProfiler GeomFillProfiler GeomFillFilling AppBlendApprox AppBlendApprox StandardTransient GeomFillBoundary ApproxSweepFunction GeomFillTrihedronLaw StandardTransient GeomFillTrihedronLaw GeomFillLocationLaw GeomFillTrihedronLaw GeomFillBoundary GeomFillTrihedronLaw  Handle[GeomFillDraftTrihedron] GeomFillTrihedronLaw GeomFillSectionLaw GeomFillTrihedronLaw GeomFillTrihedronLaw MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives GeomFillTrihedronWithGuide GeomFillTrihedronWithGuide GeomFillArray1OfLocationLaw GeomFillArray1OfSectionLaw GeomFillSequenceOfAx2 StandardTransient  Handle[GeomFillLocationDraft] GeomFillLocationLaw  Handle[GeomFillLocationGuide] GeomFillLocationLaw StandardTransient GeomFillSectionLaw MathFunctionWithDerivative StandardTransient GeomFillBoundary Adaptor3dCurve ApproxSweepFunction StandardTransient GeomFillTgtField StandardTransient GeomFillTrihedronLaw GeomFillSectionLaw

import tkgeomalgo/geomfill/geomfill_types
import tkgeomalgo/appblend/appblend_types
import tkgeombase/approx/approx_types
import tkg3d/adaptor3d/adaptor3d_types
import tkmath/math/math_types
import tkg3d/geom/geom_types
import tkernel/standard/standard_types
type
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

  HandleGeomFillBoundary* = Handle[GeomFillBoundary]











  HandleGeomFillBoundWithSurf* = Handle[GeomFillBoundWithSurf]












  HandleGeomFillCircularBlendFunc* = Handle[GeomFillCircularBlendFunc]





  HandleGeomFillConstantBiNormal* = Handle[GeomFillConstantBiNormal]




  HandleGeomFillCoonsAlgPatch* = Handle[GeomFillCoonsAlgPatch]






  HandleGeomFillCorrectedFrenet* = Handle[GeomFillCorrectedFrenet]





  HandleGeomFillCurveAndTrihedron* = Handle[GeomFillCurveAndTrihedron]










  HandleGeomFillDarboux* = Handle[GeomFillDarboux]




  HandleGeomFillDegeneratedBound* = Handle[GeomFillDegeneratedBound]








  HandleGeomFillDiscreteTrihedron* = Handle[GeomFillDiscreteTrihedron]







  HandleGeomFillEvolvedSection* = Handle[GeomFillEvolvedSection]




  HandleGeomFillFixed* = Handle[GeomFillFixed]




  HandleGeomFillFrenet* = Handle[GeomFillFrenet]




  HandleGeomFillGuideTrihedronAC* = Handle[GeomFillGuideTrihedronAC]





  HandleGeomFillGuideTrihedronPlan* = Handle[GeomFillGuideTrihedronPlan]





  HandleGeomFillLine* = Handle[GeomFillLine]




  HandleGeomFillLocationLaw* = Handle[GeomFillLocationLaw]






  HandleGeomFillNSections* = Handle[GeomFillNSections]




  HandleGeomFillSectionLaw* = Handle[GeomFillSectionLaw]




  HandleGeomFillSimpleBound* = Handle[GeomFillSimpleBound]







  HandleGeomFillSweepFunction* = Handle[GeomFillSweepFunction]





  HandleGeomFillTgtField* = Handle[GeomFillTgtField]





  HandleGeomFillTgtOnCoons* = Handle[GeomFillTgtOnCoons]





  HandleGeomFillTrihedronLaw* = Handle[GeomFillTrihedronLaw]




  HandleGeomFillTrihedronWithGuide* = Handle[GeomFillTrihedronWithGuide]




  HandleGeomFillUniformSection* = Handle[GeomFillUniformSection]




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



  GeomFillBoundWithSurf* {.importcpp: "GeomFill_BoundWithSurf",
                          header: "GeomFill_BoundWithSurf.hxx", bycopy.} = object of GeomFillBoundary 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  GeomFillCircularBlendFunc* {.importcpp: "GeomFill_CircularBlendFunc",
                              header: "GeomFill_CircularBlendFunc.hxx", bycopy.} = object of ApproxSweepFunction 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          



  GeomFillConstantBiNormal* {.importcpp: "GeomFill_ConstantBiNormal",
                             header: "GeomFill_ConstantBiNormal.hxx", bycopy.} = object of GeomFillTrihedronLaw



  GeomFillCoonsAlgPatch* {.importcpp: "GeomFill_CoonsAlgPatch",
                          header: "GeomFill_CoonsAlgPatch.hxx", bycopy.} = object of StandardTransient 
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                



  GeomFillCorrectedFrenet* {.importcpp: "GeomFill_CorrectedFrenet",
                            header: "GeomFill_CorrectedFrenet.hxx", bycopy.} = object of GeomFillTrihedronLaw



  GeomFillCurveAndTrihedron* {.importcpp: "GeomFill_CurveAndTrihedron",
                              header: "GeomFill_CurveAndTrihedron.hxx", bycopy.} = object of GeomFillLocationLaw



  GeomFillDarboux* {.importcpp: "GeomFill_Darboux", header: "GeomFill_Darboux.hxx",
                    bycopy.} = object of GeomFillTrihedronLaw



  GeomFillDegeneratedBound* {.importcpp: "GeomFill_DegeneratedBound",
                             header: "GeomFill_DegeneratedBound.hxx", bycopy.} = object of GeomFillBoundary



  GeomFillDiscreteTrihedron* {.importcpp: "GeomFill_DiscreteTrihedron",
                              header: "GeomFill_DiscreteTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw



  HandleGeomFillDraftTrihedron* = Handle[GeomFillDraftTrihedron]


  GeomFillDraftTrihedron* {.importcpp: "GeomFill_DraftTrihedron",
                           header: "GeomFill_DraftTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw



  GeomFillEvolvedSection* {.importcpp: "GeomFill_EvolvedSection",
                           header: "GeomFill_EvolvedSection.hxx", bycopy.} = object of GeomFillSectionLaw 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   



  GeomFillFixed* {.importcpp: "GeomFill_Fixed", header: "GeomFill_Fixed.hxx", bycopy.} = object of GeomFillTrihedronLaw



  GeomFillFrenet* {.importcpp: "GeomFill_Frenet", header: "GeomFill_Frenet.hxx",
                   bycopy.} = object of GeomFillTrihedronLaw



  GeomFillFunctionDraft* {.importcpp: "GeomFill_FunctionDraft",
                          header: "GeomFill_FunctionDraft.hxx", bycopy.} = object of MathFunctionSetWithDerivatives



  GeomFillFunctionGuide* {.importcpp: "GeomFill_FunctionGuide",
                          header: "GeomFill_FunctionGuide.hxx", bycopy.} = object of MathFunctionSetWithDerivatives



  GeomFillGuideTrihedronAC* {.importcpp: "GeomFill_GuideTrihedronAC",
                             header: "GeomFill_GuideTrihedronAC.hxx", bycopy.} = object of GeomFillTrihedronWithGuide



  GeomFillGuideTrihedronPlan* {.importcpp: "GeomFill_GuideTrihedronPlan",
                               header: "GeomFill_GuideTrihedronPlan.hxx", bycopy.} = object of GeomFillTrihedronWithGuide



  GeomFillHArray1OfLocationLaw* {.importcpp: "GeomFill_HArray1OfLocationLaw",
                                 header: "GeomFill_HArray1OfLocationLaw.hxx",
                                 bycopy.} = object of GeomFillArray1OfLocationLaw



  GeomFillHArray1OfSectionLaw* {.importcpp: "GeomFill_HArray1OfSectionLaw",
                                header: "GeomFill_HArray1OfSectionLaw.hxx", bycopy.} = object of GeomFillArray1OfSectionLaw



  GeomFillHSequenceOfAx2* {.importcpp: "GeomFill_HSequenceOfAx2",
                           header: "GeomFill_HSequenceOfAx2.hxx", bycopy.} = object of GeomFillSequenceOfAx2



  GeomFillLine* {.importcpp: "GeomFill_Line", header: "GeomFill_Line.hxx", bycopy.} = object of StandardTransient



  HandleGeomFillLocationDraft* = Handle[GeomFillLocationDraft]


  GeomFillLocationDraft* {.importcpp: "GeomFill_LocationDraft",
                          header: "GeomFill_LocationDraft.hxx", bycopy.} = object of GeomFillLocationLaw



  HandleGeomFillLocationGuide* = Handle[GeomFillLocationGuide]


  GeomFillLocationGuide* {.importcpp: "GeomFill_LocationGuide",
                          header: "GeomFill_LocationGuide.hxx", bycopy.} = object of GeomFillLocationLaw



  GeomFillLocationLaw* {.importcpp: "GeomFill_LocationLaw",
                        header: "GeomFill_LocationLaw.hxx", bycopy.} = object of StandardTransient



  GeomFillNSections* {.importcpp: "GeomFill_NSections",
                      header: "GeomFill_NSections.hxx", bycopy.} = object of GeomFillSectionLaw 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         



  GeomFillPlanFunc* {.importcpp: "GeomFill_PlanFunc",
                     header: "GeomFill_PlanFunc.hxx", bycopy.} = object of MathFunctionWithDerivative



  GeomFillSectionLaw* {.importcpp: "GeomFill_SectionLaw",
                       header: "GeomFill_SectionLaw.hxx", bycopy.} = object of StandardTransient 
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          



  GeomFillSimpleBound* {.importcpp: "GeomFill_SimpleBound",
                        header: "GeomFill_SimpleBound.hxx", bycopy.} = object of GeomFillBoundary 
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           



  GeomFillSnglrFunc* {.importcpp: "GeomFill_SnglrFunc",
                      header: "GeomFill_SnglrFunc.hxx", bycopy.} = object of Adaptor3dCurve



  GeomFillSweepFunction* {.importcpp: "GeomFill_SweepFunction",
                          header: "GeomFill_SweepFunction.hxx", bycopy.} = object of ApproxSweepFunction



  GeomFillTgtField* {.importcpp: "GeomFill_TgtField",
                     header: "GeomFill_TgtField.hxx", bycopy.} = object of StandardTransient



  GeomFillTgtOnCoons* {.importcpp: "GeomFill_TgtOnCoons",
                       header: "GeomFill_TgtOnCoons.hxx", bycopy.} = object of GeomFillTgtField



  GeomFillTrihedronLaw* {.importcpp: "GeomFill_TrihedronLaw",
                         header: "GeomFill_TrihedronLaw.hxx", bycopy.} = object of StandardTransient



  GeomFillTrihedronWithGuide* {.importcpp: "GeomFill_TrihedronWithGuide",
                               header: "GeomFill_TrihedronWithGuide.hxx", bycopy.} = object of GeomFillTrihedronLaw





  GeomFillUniformSection* {.importcpp: "GeomFill_UniformSection",
                           header: "GeomFill_UniformSection.hxx", bycopy.} = object of GeomFillSectionLaw 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   






