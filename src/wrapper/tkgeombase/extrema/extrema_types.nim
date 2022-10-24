# PROVIDES: ExtremaCurve2dTool ExtremaCurveTool ExtremaECC ExtremaECC2d ExtremaELPCOfLocateExtPC ExtremaELPCOfLocateExtPC2d ExtremaEPCOfELPCOfLocateExtPC ExtremaEPCOfELPCOfLocateExtPC2d ExtremaEPCOfExtPC ExtremaEPCOfExtPC2d ExtremaExtCC ExtremaExtCC2d ExtremaExtCS ExtremaExtElC ExtremaExtElC2d ExtremaExtElCS ExtremaExtElSS ExtremaExtPC ExtremaExtPC2d ExtremaExtPElC ExtremaExtPElC2d ExtremaExtPElS HandleExtremaExtPExtS HandleExtremaExtPRevS ExtremaExtPS ExtremaExtSS ExtremaGenExtCS ExtremaGenExtPS ExtremaGenExtSS ExtremaGenLocateExtCS ExtremaGenLocateExtPS ExtremaGenLocateExtSS ExtremaLocateExtCC ExtremaLocateExtCC2d ExtremaLocateExtPC ExtremaLocateExtPC2d ExtremaLocECC ExtremaLocECC2d ExtremaLocEPCOfLocateExtPC ExtremaLocEPCOfLocateExtPC2d ExtremaPOnCurv ExtremaPOnCurv2d ExtremaPOnSurf ExtremaPOnSurfParams
# DEPENDS: MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives StandardTransient StandardTransient MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives MathMultipleVarFunctionWithGradient MathFunctionSetWithDerivatives MathMultipleVarFunction MathMultipleVarFunctionWithGradient MathMultipleVarFunctionWithHessian MathMultipleVarFunction MathMultipleVarFunction MathMultipleVarFunctionWithHessian ExtremaArray1OfPOnCurv ExtremaArray1OfPOnCurv2d ExtremaArray1OfPOnSurf ExtremaArray2OfPOnCurv ExtremaArray2OfPOnCurv2d ExtremaArray2OfPOnSurf ExtremaArray2OfPOnSurfParams MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative MathFunctionWithDerivative

type
  ExtremaCurve2dTool* {.importcpp: "Extrema_Curve2dTool",
                       header: "Extrema_Curve2dTool.hxx", bycopy.} = object

type
  ExtremaCurveTool* {.importcpp: "Extrema_CurveTool",
                     header: "Extrema_CurveTool.hxx", bycopy.} = object

type
  ExtremaECC* {.importcpp: "Extrema_ECC", header: "Extrema_ECC.hxx", bycopy.} = object ## !
                                                                               ## Calculates
                                                                               ## all
                                                                               ## the
                                                                               ## distances
                                                                               ## as
                                                                               ## above
                                                                               ## !
                                                                               ## between
                                                                               ## Uinf
                                                                               ## and
                                                                               ## Usup
                                                                               ## for
                                                                               ## C1
                                                                               ## and
                                                                               ## between
                                                                               ## Vinf
                                                                               ## and
                                                                               ## Vsup
                                                                               ## !
                                                                               ## for
                                                                               ## C2.
    ##  Default value is false.

type
  ExtremaECC2d* {.importcpp: "Extrema_ECC2d", header: "Extrema_ECC2d.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Calculates
                                                                                     ## all
                                                                                     ## the
                                                                                     ## distances
                                                                                     ## as
                                                                                     ## above
                                                                                     ##
                                                                                     ## !
                                                                                     ## between
                                                                                     ## Uinf
                                                                                     ## and
                                                                                     ## Usup
                                                                                     ## for
                                                                                     ## C1
                                                                                     ## and
                                                                                     ## between
                                                                                     ## Vinf
                                                                                     ## and
                                                                                     ## Vsup
                                                                                     ##
                                                                                     ## !
                                                                                     ## for
                                                                                     ## C2.
    ##  Default value is false.

type
  ExtremaELPCOfLocateExtPC* {.importcpp: "Extrema_ELPCOfLocateExtPC",
                             header: "Extrema_ELPCOfLocateExtPC.hxx", bycopy.} = object

type
  ExtremaELPCOfLocateExtPC2d* {.importcpp: "Extrema_ELPCOfLocateExtPC2d",
                               header: "Extrema_ELPCOfLocateExtPC2d.hxx", bycopy.} = object

type
  ExtremaEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC",
                                  header: "Extrema_EPCOfELPCOfLocateExtPC.hxx",
                                  bycopy.} = object

type
  ExtremaEPCOfELPCOfLocateExtPC2d* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx",
                                    bycopy.} = object

type
  ExtremaEPCOfExtPC* {.importcpp: "Extrema_EPCOfExtPC",
                      header: "Extrema_EPCOfExtPC.hxx", bycopy.} = object

type
  ExtremaEPCOfExtPC2d* {.importcpp: "Extrema_EPCOfExtPC2d",
                        header: "Extrema_EPCOfExtPC2d.hxx", bycopy.} = object

type
  ExtremaExtCC* {.importcpp: "Extrema_ExtCC", header: "Extrema_ExtCC.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Prepares
                                                                                     ## the
                                                                                     ## extrema
                                                                                     ## result(s)
                                                                                     ## for
                                                                                     ## analytical
                                                                                     ## cases
                                                                                     ## (line,
                                                                                     ## circle,
                                                                                     ## ellipsis
                                                                                     ## etc.)
    ##  Default value is false.

type
  ExtremaExtCC2d* {.importcpp: "Extrema_ExtCC2d", header: "Extrema_ExtCC2d.hxx",
                   bycopy.} = object
    ##  Default value is false.

type
  ExtremaExtCS* {.importcpp: "Extrema_ExtCS", header: "Extrema_ExtCS.hxx", bycopy.} = object

type
  ExtremaExtElC* {.importcpp: "Extrema_ExtElC", header: "Extrema_ExtElC.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## extrema
                                                                                        ## in
                                                                                        ## case
                                                                                        ## when
                                                                                        ## considered
                                                                                        ## line
                                                                                        ## and
                                                                                        ## circle
                                                                                        ## are
                                                                                        ## in
                                                                                        ## one
                                                                                        ## plane

type
  ExtremaExtElC2d* {.importcpp: "Extrema_ExtElC2d", header: "Extrema_ExtElC2d.hxx",
                    bycopy.} = object

type
  ExtremaExtElCS* {.importcpp: "Extrema_ExtElCS", header: "Extrema_ExtElCS.hxx",
                   bycopy.} = object

type
  ExtremaExtElSS* {.importcpp: "Extrema_ExtElSS", header: "Extrema_ExtElSS.hxx",
                   bycopy.} = object

type
  ExtremaExtPC* {.importcpp: "Extrema_ExtPC", header: "Extrema_ExtPC.hxx", bycopy.} = object

type
  ExtremaExtPC2d* {.importcpp: "Extrema_ExtPC2d", header: "Extrema_ExtPC2d.hxx",
                   bycopy.} = object

type
  ExtremaExtPElC* {.importcpp: "Extrema_ExtPElC", header: "Extrema_ExtPElC.hxx",
                   bycopy.} = object

type
  ExtremaExtPElC2d* {.importcpp: "Extrema_ExtPElC2d",
                     header: "Extrema_ExtPElC2d.hxx", bycopy.} = object

type
  ExtremaExtPElS* {.importcpp: "Extrema_ExtPElS", header: "Extrema_ExtPElS.hxx",
                   bycopy.} = object

type
  HandleExtremaExtPExtS* = Handle[ExtremaExtPExtS]
## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a linear
## ! extrusion surface.

type
  HandleExtremaExtPRevS* = Handle[ExtremaExtPRevS]
## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a surface
## ! of revolution.

type
  ExtremaExtPS* {.importcpp: "Extrema_ExtPS", header: "Extrema_ExtPS.hxx", bycopy.} = object

type
  ExtremaExtSS* {.importcpp: "Extrema_ExtSS", header: "Extrema_ExtSS.hxx", bycopy.} = object

type
  ExtremaGenExtCS* {.importcpp: "Extrema_GenExtCS", header: "Extrema_GenExtCS.hxx",
                    bycopy.} = object

type
  ExtremaGenExtPS* {.importcpp: "Extrema_GenExtPS", header: "Extrema_GenExtPS.hxx",
                    bycopy.} = object

type
  ExtremaGenExtSS* {.importcpp: "Extrema_GenExtSS", header: "Extrema_GenExtSS.hxx",
                    bycopy.} = object

type
  ExtremaGenLocateExtCS* {.importcpp: "Extrema_GenLocateExtCS",
                          header: "Extrema_GenLocateExtCS.hxx", bycopy.} = object

type
  ExtremaGenLocateExtPS* {.importcpp: "Extrema_GenLocateExtPS",
                          header: "Extrema_GenLocateExtPS.hxx", bycopy.} = object ## !
                                                                             ## Constructor.
    ##  State.
    ##  Result.

type
  ExtremaGenLocateExtSS* {.importcpp: "Extrema_GenLocateExtSS",
                          header: "Extrema_GenLocateExtSS.hxx", bycopy.} = object

type
  ExtremaLocateExtCC* {.importcpp: "Extrema_LocateExtCC",
                       header: "Extrema_LocateExtCC.hxx", bycopy.} = object ## !
                                                                       ## Calculates the distance with a close point. The
                                                                       ## ! close point is defined by a parameter value on each
                                                                       ## ! curve.
                                                                       ## ! The function
                                                                       ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                       ## ! extremun when
                                                                       ## gradient(f)=0. The algorithm searchs
                                                                       ## ! the zero near the close point.

type
  ExtremaLocateExtCC2d* {.importcpp: "Extrema_LocateExtCC2d",
                         header: "Extrema_LocateExtCC2d.hxx", bycopy.} = object ## !
                                                                           ## Calculates the
                                                                           ## distance with a close
                                                                           ## point. The
                                                                           ## ! close point is
                                                                           ## defined by a
                                                                           ## parameter value on each
                                                                           ## !
                                                                           ## curve.
                                                                           ## ! The
                                                                           ## function
                                                                           ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                           ## !
                                                                           ## extremun when
                                                                           ## gradient(f)=0. The
                                                                           ## algorithm
                                                                           ## searchs
                                                                           ## ! the zero near the close
                                                                           ## point.

type
  ExtremaLocateExtPC* {.importcpp: "Extrema_LocateExtPC",
                       header: "Extrema_LocateExtPC.hxx", bycopy.} = object

type
  ExtremaLocateExtPC2d* {.importcpp: "Extrema_LocateExtPC2d",
                         header: "Extrema_LocateExtPC2d.hxx", bycopy.} = object

type
  ExtremaLocECC* {.importcpp: "Extrema_LocECC", header: "Extrema_LocECC.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Calculates
                                                                                        ## the
                                                                                        ## distance
                                                                                        ## with
                                                                                        ## a
                                                                                        ## close
                                                                                        ## point.
                                                                                        ## The
                                                                                        ##
                                                                                        ## !
                                                                                        ## close
                                                                                        ## point
                                                                                        ## is
                                                                                        ## defined
                                                                                        ## by
                                                                                        ## a
                                                                                        ## parameter
                                                                                        ## value
                                                                                        ## on
                                                                                        ## each
                                                                                        ##
                                                                                        ## !
                                                                                        ## curve.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## function
                                                                                        ## F(u,v)=distance(C1(u),C2(v))
                                                                                        ## has
                                                                                        ## an
                                                                                        ##
                                                                                        ## !
                                                                                        ## extremun
                                                                                        ## when
                                                                                        ## gradient(f)=0.
                                                                                        ## The
                                                                                        ## algorithm
                                                                                        ## searchs
                                                                                        ##
                                                                                        ## !
                                                                                        ## the
                                                                                        ## zero
                                                                                        ## near
                                                                                        ## the
                                                                                        ## close
                                                                                        ## point.

type
  ExtremaLocECC2d* {.importcpp: "Extrema_LocECC2d", header: "Extrema_LocECC2d.hxx",
                    bycopy.} = object ## ! Calculates the distance with a close point. The
                                   ## ! close point is defined by a parameter value on each
                                   ## ! curve.
                                   ## ! The function F(u,v)=distance(C1(u),C2(v)) has an
                                   ## ! extremun when gradient(f)=0. The algorithm searchs
                                   ## ! the zero near the close point.

type
  ExtremaLocEPCOfLocateExtPC* {.importcpp: "Extrema_LocEPCOfLocateExtPC",
                               header: "Extrema_LocEPCOfLocateExtPC.hxx", bycopy.} = object

type
  ExtremaLocEPCOfLocateExtPC2d* {.importcpp: "Extrema_LocEPCOfLocateExtPC2d",
                                 header: "Extrema_LocEPCOfLocateExtPC2d.hxx",
                                 bycopy.} = object

type
  ExtremaPOnCurv* {.importcpp: "Extrema_POnCurv", header: "Extrema_POnCurv.hxx",
                   bycopy.} = object ## ! Creation of an indefinite point on curve.

type
  ExtremaPOnCurv2d* {.importcpp: "Extrema_POnCurv2d",
                     header: "Extrema_POnCurv2d.hxx", bycopy.} = object ## ! Creation of an indefinite point on curve.

type
  ExtremaPOnSurf* {.importcpp: "Extrema_POnSurf", header: "Extrema_POnSurf.hxx",
                   bycopy.} = object of RootObj ## ! Creation of an indefinite point on surface.

                   bycopy.} = object of RootObj ## ! Creation of an indefinite point on surface.
type
  ExtremaPOnSurfParams* {.importcpp: "Extrema_POnSurfParams",
                         header: "Extrema_POnSurfParams.hxx", bycopy.} = object of ExtremaPOnSurf ##
                                                                                           ## !
                                                                                           ## empty
                                                                                           ## constructor


type
  ExtremaCCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                          header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

type
  ExtremaCCLocFOfLocECC2d* {.importcpp: "Extrema_CCLocFOfLocECC2d",
                            header: "Extrema_CCLocFOfLocECC2d.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

type
  ExtremaExtPExtS* {.importcpp: "Extrema_ExtPExtS", header: "Extrema_ExtPExtS.hxx",
                    bycopy.} = object of StandardTransient

type
  ExtremaExtPRevS* {.importcpp: "Extrema_ExtPRevS", header: "Extrema_ExtPRevS.hxx",
                    bycopy.} = object of StandardTransient

type
  ExtremaFuncExtCS* {.importcpp: "Extrema_FuncExtCS",
                     header: "Extrema_FuncExtCS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

type
  ExtremaFuncExtSS* {.importcpp: "Extrema_FuncExtSS",
                     header: "Extrema_FuncExtSS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

type
  ExtremaFuncPSDist* {.importcpp: "Extrema_FuncPSDist",
                      header: "Extrema_FuncPSDist.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient ##
                                                                                                          ## !
                                                                                                          ## Constructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Check
                                                                                                          ## point
                                                                                                          ## is
                                                                                                          ## inside
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## surface
                                                                                                          ## parameter
                                                                                                          ## space.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## true
                                                                                                          ## if
                                                                                                          ## inside
                                                                                                          ## and
                                                                                                          ## false
                                                                                                          ## otherwise.

type
  ExtremaFuncPSNorm* {.importcpp: "Extrema_FuncPSNorm",
                      header: "Extrema_FuncPSNorm.hxx", bycopy.} = object of MathFunctionSetWithDerivatives

type
  ExtremaGlobOptFuncCCC0* {.importcpp: "Extrema_GlobOptFuncCCC0",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunction

type
  ExtremaGlobOptFuncCCC1* {.importcpp: "Extrema_GlobOptFuncCCC1",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient

type
  ExtremaGlobOptFuncCCC2* {.importcpp: "Extrema_GlobOptFuncCCC2",
                           header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of MathMultipleVarFunctionWithHessian

type
  ExtremaGlobOptFuncConicS* {.importcpp: "Extrema_GlobOptFuncConicS",
                             header: "Extrema_GlobOptFuncConicS.hxx", bycopy.} = object of MathMultipleVarFunction ##
                                                                                                            ## !
                                                                                                            ## Curve
                                                                                                            ## and
                                                                                                            ## surface
                                                                                                            ## should
                                                                                                            ## exist
                                                                                                            ## during
                                                                                                            ## all
                                                                                                            ## the
                                                                                                            ## lifetime
                                                                                                            ## of
                                                                                                            ## Extrema_GlobOptFuncConicS.
    ## Boundaries

type
  ExtremaGlobOptFuncCQuadric* {.importcpp: "Extrema_GlobOptFuncCQuadric",
                               header: "Extrema_GlobOptFuncCQuadric.hxx", bycopy.} = object of MathMultipleVarFunction ##
                                                                                                                ## !
                                                                                                                ## Curve
                                                                                                                ## and
                                                                                                                ## surface
                                                                                                                ## should
                                                                                                                ## exist
                                                                                                                ## during
                                                                                                                ## all
                                                                                                                ## the
                                                                                                                ## lifetime
                                                                                                                ## of
                                                                                                                ## Extrema_GlobOptFuncCQuadric.
    ##  Boundaries

type
  ExtremaGlobOptFuncCS* {.importcpp: "Extrema_GlobOptFuncCS",
                         header: "Extrema_GlobOptFuncCS.hxx", bycopy.} = object of MathMultipleVarFunctionWithHessian ##
                                                                                                               ## !
                                                                                                               ## Curve
                                                                                                               ## and
                                                                                                               ## surface
                                                                                                               ## should
                                                                                                               ## exist
                                                                                                               ## during
                                                                                                               ## all
                                                                                                               ## the
                                                                                                               ## lifetime
                                                                                                               ## of
                                                                                                               ## Extrema_GlobOptFuncCS.

type
  ExtremaHArray1OfPOnCurv* {.importcpp: "Extrema_HArray1OfPOnCurv",
                            header: "Extrema_HArray1OfPOnCurv.hxx", bycopy.} = object of ExtremaArray1OfPOnCurv

type
  ExtremaHArray1OfPOnCurv2d* {.importcpp: "Extrema_HArray1OfPOnCurv2d",
                              header: "Extrema_HArray1OfPOnCurv2d.hxx", bycopy.} = object of ExtremaArray1OfPOnCurv2d

type
  ExtremaHArray1OfPOnSurf* {.importcpp: "Extrema_HArray1OfPOnSurf",
                            header: "Extrema_HArray1OfPOnSurf.hxx", bycopy.} = object of ExtremaArray1OfPOnSurf

type
  ExtremaHArray2OfPOnCurv* {.importcpp: "Extrema_HArray2OfPOnCurv",
                            header: "Extrema_HArray2OfPOnCurv.hxx", bycopy.} = object of ExtremaArray2OfPOnCurv

type
  ExtremaHArray2OfPOnCurv2d* {.importcpp: "Extrema_HArray2OfPOnCurv2d",
                              header: "Extrema_HArray2OfPOnCurv2d.hxx", bycopy.} = object of ExtremaArray2OfPOnCurv2d

type
  ExtremaHArray2OfPOnSurf* {.importcpp: "Extrema_HArray2OfPOnSurf",
                            header: "Extrema_HArray2OfPOnSurf.hxx", bycopy.} = object of ExtremaArray2OfPOnSurf

type
  ExtremaHArray2OfPOnSurfParams* {.importcpp: "Extrema_HArray2OfPOnSurfParams",
                                  header: "Extrema_HArray2OfPOnSurfParams.hxx",
                                  bycopy.} = object of ExtremaArray2OfPOnSurfParams

type
  ExtremaPCFOfEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx",
                                       bycopy.} = object of MathFunctionWithDerivative

type
  ExtremaPCFOfEPCOfELPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d",
      header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative

type
  ExtremaPCFOfEPCOfExtPC* {.importcpp: "Extrema_PCFOfEPCOfExtPC",
                           header: "Extrema_PCFOfEPCOfExtPC.hxx", bycopy.} = object of MathFunctionWithDerivative

type
  ExtremaPCFOfEPCOfExtPC2d* {.importcpp: "Extrema_PCFOfEPCOfExtPC2d",
                             header: "Extrema_PCFOfEPCOfExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative

type
  ExtremaPCLocFOfLocEPCOfLocateExtPC* {.importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx",
                                       bycopy.} = object of MathFunctionWithDerivative

type
  ExtremaPCLocFOfLocEPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d",
      header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative

