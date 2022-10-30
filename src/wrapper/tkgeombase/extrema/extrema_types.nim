# PROVIDES: ExtremaElementType ExtremaExtAlgo ExtremaExtFlag ExtremaCurve2dTool ExtremaCurveTool ExtremaECC ExtremaECC2d ExtremaELPCOfLocateExtPC ExtremaELPCOfLocateExtPC2d ExtremaEPCOfELPCOfLocateExtPC ExtremaEPCOfELPCOfLocateExtPC2d ExtremaEPCOfExtPC ExtremaEPCOfExtPC2d ExtremaExtCC ExtremaExtCC2d ExtremaExtCS ExtremaExtElC ExtremaExtElC2d ExtremaExtElCS ExtremaExtElSS ExtremaExtPC ExtremaExtPC2d ExtremaExtPElC ExtremaExtPElC2d ExtremaExtPElS ExtremaExtPS ExtremaExtSS ExtremaGenExtCS ExtremaGenExtPS ExtremaGenExtSS ExtremaGenLocateExtCS ExtremaGenLocateExtPS ExtremaGenLocateExtSS ExtremaLocateExtCC ExtremaLocateExtCC2d ExtremaLocateExtPC ExtremaLocateExtPC2d ExtremaLocECC ExtremaLocECC2d ExtremaLocEPCOfLocateExtPC ExtremaLocEPCOfLocateExtPC2d ExtremaPOnCurv ExtremaPOnCurv2d ExtremaPOnSurf
# DEPENDS:  NCollectionArray1[ExtremaPOnCurv]  NCollectionArray1[ExtremaPOnCurv2d]  NCollectionArray1[ExtremaPOnSurf]  NCollectionArray2[ExtremaPOnCurv]  NCollectionArray2[ExtremaPOnCurv2d]  NCollectionArray2[ExtremaPOnSurf]  NCollectionArray2[ExtremaPOnSurfParams]  NCollectionUBTree[cint, BndSphere]  NCollectionUBTreeFiller[cint, BndSphere]  NCollectionHandle[ExtremaUBTreeOfSphere]  NCollectionSequence[ExtremaPOnCurv]  NCollectionSequence[ExtremaPOnCurv2d]  NCollectionSequence[ExtremaPOnSurf]  Handle[ExtremaExtPExtS]  Handle[ExtremaExtPRevS] ExtremaPOnSurf MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives StandardTransient StandardTransient MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives MathMultipleVarFunctionWithGradient MathFunctionSetWithDerivatives MathMultipleVarFunction MathMultipleVarFunctionWithGradient MathMultipleVarFunctionWithHessian MathMultipleVarFunction MathMultipleVarFunction MathMultipleVarFunctionWithHessian ExtremaArray1OfPOnCurv ExtremaArray1OfPOnCurv2d ExtremaArray1OfPOnSurf ExtremaArray2OfPOnCurv ExtremaArray2OfPOnCurv2d ExtremaArray2OfPOnSurf ExtremaArray2OfPOnSurfParams MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative

import tkmath/math/math_types
import tkgeombase/extrema/extrema_types
import tkmath/bnd/bnd_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  ExtremaElementType* {.size: sizeof(cint), importcpp: "Extrema_ElementType",
                       header: "Extrema_ElementType.hxx".} = enum
    ExtremaNode, ExtremaUIsoEdge, ExtremaVIsoEdge, ExtremaFace

  ExtremaExtAlgo* {.size: sizeof(cint), importcpp: "Extrema_ExtAlgo",
                   header: "Extrema_ExtAlgo.hxx".} = enum
    extremaExtAlgoGrad, extremaExtAlgoTree

  ExtremaExtFlag* {.size: sizeof(cint), importcpp: "Extrema_ExtFlag",
                   header: "Extrema_ExtFlag.hxx".} = enum
    extremaExtFlagMIN, extremaExtFlagMAX, extremaExtFlagMINMAX

  ExtremaCurve2dTool* {.importcpp: "Extrema_Curve2dTool",
                       header: "Extrema_Curve2dTool.hxx", bycopy.} = object

  ExtremaCurveTool* {.importcpp: "Extrema_CurveTool",
                     header: "Extrema_CurveTool.hxx", bycopy.} = object

  ExtremaECC* {.importcpp: "Extrema_ECC", header: "Extrema_ECC.hxx", bycopy.} = object 

  ExtremaECC2d* {.importcpp: "Extrema_ECC2d", header: "Extrema_ECC2d.hxx", bycopy.} = object 

  ExtremaELPCOfLocateExtPC* {.importcpp: "Extrema_ELPCOfLocateExtPC",
                             header: "Extrema_ELPCOfLocateExtPC.hxx", bycopy.} = object

  ExtremaELPCOfLocateExtPC2d* {.importcpp: "Extrema_ELPCOfLocateExtPC2d",
                               header: "Extrema_ELPCOfLocateExtPC2d.hxx", bycopy.} = object

  ExtremaEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC",
                                  header: "Extrema_EPCOfELPCOfLocateExtPC.hxx",
                                  bycopy.} = object

  ExtremaEPCOfELPCOfLocateExtPC2d* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx",
                                    bycopy.} = object

  ExtremaEPCOfExtPC* {.importcpp: "Extrema_EPCOfExtPC",
                      header: "Extrema_EPCOfExtPC.hxx", bycopy.} = object

  ExtremaEPCOfExtPC2d* {.importcpp: "Extrema_EPCOfExtPC2d",
                        header: "Extrema_EPCOfExtPC2d.hxx", bycopy.} = object

  ExtremaExtCC* {.importcpp: "Extrema_ExtCC", header: "Extrema_ExtCC.hxx", bycopy.} = object 

  ExtremaExtCC2d* {.importcpp: "Extrema_ExtCC2d", header: "Extrema_ExtCC2d.hxx",
                   bycopy.} = object

  ExtremaExtCS* {.importcpp: "Extrema_ExtCS", header: "Extrema_ExtCS.hxx", bycopy.} = object

  ExtremaExtElC* {.importcpp: "Extrema_ExtElC", header: "Extrema_ExtElC.hxx", bycopy.} = object 

  ExtremaExtElC2d* {.importcpp: "Extrema_ExtElC2d", header: "Extrema_ExtElC2d.hxx",
                    bycopy.} = object

  ExtremaExtElCS* {.importcpp: "Extrema_ExtElCS", header: "Extrema_ExtElCS.hxx",
                   bycopy.} = object

  ExtremaExtElSS* {.importcpp: "Extrema_ExtElSS", header: "Extrema_ExtElSS.hxx",
                   bycopy.} = object

  ExtremaExtPC* {.importcpp: "Extrema_ExtPC", header: "Extrema_ExtPC.hxx", bycopy.} = object

  ExtremaExtPC2d* {.importcpp: "Extrema_ExtPC2d", header: "Extrema_ExtPC2d.hxx",
                   bycopy.} = object

  ExtremaExtPElC* {.importcpp: "Extrema_ExtPElC", header: "Extrema_ExtPElC.hxx",
                   bycopy.} = object

  ExtremaExtPElC2d* {.importcpp: "Extrema_ExtPElC2d",
                     header: "Extrema_ExtPElC2d.hxx", bycopy.} = object

  ExtremaExtPElS* {.importcpp: "Extrema_ExtPElS", header: "Extrema_ExtPElS.hxx",
                   bycopy.} = object

  ExtremaExtPS* {.importcpp: "Extrema_ExtPS", header: "Extrema_ExtPS.hxx", bycopy.} = object

  ExtremaExtSS* {.importcpp: "Extrema_ExtSS", header: "Extrema_ExtSS.hxx", bycopy.} = object

  ExtremaGenExtCS* {.importcpp: "Extrema_GenExtCS", header: "Extrema_GenExtCS.hxx",
                    bycopy.} = object

  ExtremaGenExtPS* {.importcpp: "Extrema_GenExtPS", header: "Extrema_GenExtPS.hxx",
                    bycopy.} = object

  ExtremaGenExtSS* {.importcpp: "Extrema_GenExtSS", header: "Extrema_GenExtSS.hxx",
                    bycopy.} = object

  ExtremaGenLocateExtCS* {.importcpp: "Extrema_GenLocateExtCS",
                          header: "Extrema_GenLocateExtCS.hxx", bycopy.} = object

  ExtremaGenLocateExtPS* {.importcpp: "Extrema_GenLocateExtPS",
                          header: "Extrema_GenLocateExtPS.hxx", bycopy.} = object 

  ExtremaGenLocateExtSS* {.importcpp: "Extrema_GenLocateExtSS",
                          header: "Extrema_GenLocateExtSS.hxx", bycopy.} = object

  ExtremaLocateExtCC* {.importcpp: "Extrema_LocateExtCC",
                       header: "Extrema_LocateExtCC.hxx", bycopy.} = object 

  ExtremaLocateExtCC2d* {.importcpp: "Extrema_LocateExtCC2d",
                         header: "Extrema_LocateExtCC2d.hxx", bycopy.} = object 

  ExtremaLocateExtPC* {.importcpp: "Extrema_LocateExtPC",
                       header: "Extrema_LocateExtPC.hxx", bycopy.} = object

  ExtremaLocateExtPC2d* {.importcpp: "Extrema_LocateExtPC2d",
                         header: "Extrema_LocateExtPC2d.hxx", bycopy.} = object

  ExtremaLocECC* {.importcpp: "Extrema_LocECC", header: "Extrema_LocECC.hxx", bycopy.} = object 

  ExtremaLocECC2d* {.importcpp: "Extrema_LocECC2d", header: "Extrema_LocECC2d.hxx",
                    bycopy.} = object 

  ExtremaLocEPCOfLocateExtPC* {.importcpp: "Extrema_LocEPCOfLocateExtPC",
                               header: "Extrema_LocEPCOfLocateExtPC.hxx", bycopy.} = object

  ExtremaLocEPCOfLocateExtPC2d* {.importcpp: "Extrema_LocEPCOfLocateExtPC2d",
                                 header: "Extrema_LocEPCOfLocateExtPC2d.hxx",
                                 bycopy.} = object

  ExtremaPOnCurv* {.importcpp: "Extrema_POnCurv", header: "Extrema_POnCurv.hxx",
                   bycopy.} = object 

  ExtremaPOnCurv2d* {.importcpp: "Extrema_POnCurv2d",
                     header: "Extrema_POnCurv2d.hxx", bycopy.} = object 

  ExtremaPOnSurf* {.importcpp: "Extrema_POnSurf", header: "Extrema_POnSurf.hxx",
                   bycopy.} = object of RootObj 
                   bycopy.} = object of RootObj 

  ExtremaArray1OfPOnCurv* = NCollectionArray1[ExtremaPOnCurv]

  ExtremaArray1OfPOnCurv2d* = NCollectionArray1[ExtremaPOnCurv2d]

  ExtremaArray1OfPOnSurf* = NCollectionArray1[ExtremaPOnSurf]

  ExtremaArray2OfPOnCurv* = NCollectionArray2[ExtremaPOnCurv]

  ExtremaArray2OfPOnCurv2d* = NCollectionArray2[ExtremaPOnCurv2d]

  ExtremaArray2OfPOnSurf* = NCollectionArray2[ExtremaPOnSurf]

  ExtremaArray2OfPOnSurfParams* = NCollectionArray2[ExtremaPOnSurfParams]

  ExtremaUBTreeOfSphere* = NCollectionUBTree[cint, BndSphere]

  ExtremaUBTreeFillerOfSphere* = NCollectionUBTreeFiller[cint, BndSphere]

  ExtremaHUBTreeOfSphere* = NCollectionHandle[ExtremaUBTreeOfSphere]

  ExtremaSequenceOfPOnCurv* = NCollectionSequence[ExtremaPOnCurv]

  ExtremaSequenceOfPOnCurv2d* = NCollectionSequence[ExtremaPOnCurv2d]

  ExtremaSequenceOfPOnSurf* = NCollectionSequence[ExtremaPOnSurf]

  HandleExtremaExtPExtS* = Handle[ExtremaExtPExtS]

  HandleExtremaExtPRevS* = Handle[ExtremaExtPRevS]

  ExtremaPOnSurfParams* {.importcpp: "Extrema_POnSurfParams",
                         header: "Extrema_POnSurfParams.hxx", bycopy.} = object of ExtremaPOnSurf 

  ExtremaCCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                          header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  ExtremaCCLocFOfLocECC2d* {.importcpp: "Extrema_CCLocFOfLocECC2d",
                            header: "Extrema_CCLocFOfLocECC2d.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  ExtremaExtPExtS* {.importcpp: "Extrema_ExtPExtS", header: "Extrema_ExtPExtS.hxx",
                    bycopy.} = object of StandardTransient

  ExtremaExtPRevS* {.importcpp: "Extrema_ExtPRevS", header: "Extrema_ExtPRevS.hxx",
                    bycopy.} = object of StandardTransient

  ExtremaFuncExtCS* {.importcpp: "Extrema_FuncExtCS",
                     header: "Extrema_FuncExtCS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  ExtremaFuncExtSS* {.importcpp: "Extrema_FuncExtSS",
                     header: "Extrema_FuncExtSS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  ExtremaFuncPSDist* {.importcpp: "Extrema_FuncPSDist",
                      header: "Extrema_FuncPSDist.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient 

  ExtremaFuncPSNorm* {.importcpp: "Extrema_FuncPSNorm",
                      header: "Extrema_FuncPSNorm.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

  ExtremaGlobOptFuncCCC0* {.importcpp: "Extrema_GlobOptFuncCCC0",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunction

  ExtremaGlobOptFuncCCC1* {.importcpp: "Extrema_GlobOptFuncCCC1",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient

  ExtremaGlobOptFuncCCC2* {.importcpp: "Extrema_GlobOptFuncCCC2",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunctionWithHessian

  ExtremaGlobOptFuncConicS* {.importcpp: "Extrema_GlobOptFuncConicS",
                             header: "Extrema_GlobOptFuncConicS.hxx", bycopy.} = object of MathMultipleVarFunction 

  ExtremaGlobOptFuncCQuadric* {.importcpp: "Extrema_GlobOptFuncCQuadric",
                               header: "Extrema_GlobOptFuncCQuadric.hxx", bycopy.} = object of MathMultipleVarFunction 

  ExtremaGlobOptFuncCS* {.importcpp: "Extrema_GlobOptFuncCS",
                         header: "Extrema_GlobOptFuncCS.hxx", bycopy.} = object of MathMultipleVarFunctionWithHessian 

  ExtremaHArray1OfPOnCurv* {.importcpp: "Extrema_HArray1OfPOnCurv",
                            header: "Extrema_HArray1OfPOnCurv.hxx", bycopy.} = object of ExtremaArray1OfPOnCurv

  ExtremaHArray1OfPOnCurv2d* {.importcpp: "Extrema_HArray1OfPOnCurv2d",
                              header: "Extrema_HArray1OfPOnCurv2d.hxx", bycopy.} = object of ExtremaArray1OfPOnCurv2d

  ExtremaHArray1OfPOnSurf* {.importcpp: "Extrema_HArray1OfPOnSurf",
                            header: "Extrema_HArray1OfPOnSurf.hxx", bycopy.} = object of ExtremaArray1OfPOnSurf

  ExtremaHArray2OfPOnCurv* {.importcpp: "Extrema_HArray2OfPOnCurv",
                            header: "Extrema_HArray2OfPOnCurv.hxx", bycopy.} = object of ExtremaArray2OfPOnCurv

  ExtremaHArray2OfPOnCurv2d* {.importcpp: "Extrema_HArray2OfPOnCurv2d",
                              header: "Extrema_HArray2OfPOnCurv2d.hxx", bycopy.} = object of ExtremaArray2OfPOnCurv2d

  ExtremaHArray2OfPOnSurf* {.importcpp: "Extrema_HArray2OfPOnSurf",
                            header: "Extrema_HArray2OfPOnSurf.hxx", bycopy.} = object of ExtremaArray2OfPOnSurf

  ExtremaHArray2OfPOnSurfParams* {.importcpp: "Extrema_HArray2OfPOnSurfParams",
                                  header: "Extrema_HArray2OfPOnSurfParams.hxx",
                                  bycopy.} = object of ExtremaArray2OfPOnSurfParams

  ExtremaPCFOfEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx",
                                       bycopy.} = object of MathFunctionWithDerivative

  ExtremaPCFOfEPCOfELPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d",
      header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative

  ExtremaPCFOfEPCOfExtPC* {.importcpp: "Extrema_PCFOfEPCOfExtPC",
                           header: "Extrema_PCFOfEPCOfExtPC.hxx", bycopy.} = object of MathFunctionWithDerivative

  ExtremaPCFOfEPCOfExtPC2d* {.importcpp: "Extrema_PCFOfEPCOfExtPC2d",
                             header: "Extrema_PCFOfEPCOfExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative

  ExtremaPCLocFOfLocEPCOfLocateExtPC* {.importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx",
                                       bycopy.} = object of MathFunctionWithDerivative

                                       bycopy.} = object of MathFunctionWithDerivative
  ExtremaPCLocFOfLocEPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d",
      header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative


