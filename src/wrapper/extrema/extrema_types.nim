import ../tkmath/math/math_types
import ../tkmath/bnd/bnd_types
import ../tkernel/ncollection/ncollection_types
import ../tkernel/standard/standard_types


type
  Extrema_ElementType* {.size: sizeof(cint), importcpp: "Extrema_ElementType",
                        header: "Extrema_ElementType.hxx".} = enum
    Extrema_Node, Extrema_UIsoEdge, Extrema_VIsoEdge, Extrema_Face

type
  Extrema_ExtAlgo* {.size: sizeof(cint), importcpp: "Extrema_ExtAlgo",
                    header: "Extrema_ExtAlgo.hxx".} = enum
    Extrema_ExtAlgo_Grad, Extrema_ExtAlgo_Tree

type
  Extrema_ExtFlag* {.size: sizeof(cint), importcpp: "Extrema_ExtFlag",
                    header: "Extrema_ExtFlag.hxx".} = enum
    Extrema_ExtFlag_MIN, 
    Extrema_ExtFlag_MAX, 
    Extrema_ExtFlag_MINMAX



type
  Extrema_ExtCC* {.importcpp: "Extrema_ExtCC", header: "Extrema_ExtCC.hxx", bycopy.} = object ##
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
                                                                                      ##
                                                                                      ## disallow
                                                                                      ## copies
    ##  Default value is false.

type
  Extrema_ExtCC2d* {.importcpp: "Extrema_ExtCC2d", header: "Extrema_ExtCC2d.hxx",
                    bycopy.} = object
    ##  Default value is false.

type
  Extrema_ExtCS* {.importcpp: "Extrema_ExtCS", header: "Extrema_ExtCS.hxx", bycopy.} = object ##  disallow copies

type
  Extrema_ExtElC* {.importcpp: "Extrema_ExtElC", header: "Extrema_ExtElC.hxx", bycopy.} = object ##
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
  Extrema_ExtElC2d* {.importcpp: "Extrema_ExtElC2d",
                     header: "Extrema_ExtElC2d.hxx", bycopy.} = object

type
  Extrema_ExtElCS* {.importcpp: "Extrema_ExtElCS", header: "Extrema_ExtElCS.hxx",
                    bycopy.} = object

type
  Extrema_ExtElSS* {.importcpp: "Extrema_ExtElSS", header: "Extrema_ExtElSS.hxx",
                    bycopy.} = object




type
  Extrema_CCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                           header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of Math_FunctionSetWithDerivatives

type
  Extrema_CCLocFOfLocECC2d* {.importcpp: "Extrema_CCLocFOfLocECC2d",
                             header: "Extrema_CCLocFOfLocECC2d.hxx", bycopy.} = object of Math_FunctionSetWithDerivatives


type
  Extrema_Curve2dTool* {.importcpp: "Extrema_Curve2dTool",
                        header: "Extrema_Curve2dTool.hxx", bycopy.} = object


type
  Extrema_CurveTool* {.importcpp: "Extrema_CurveTool",
                      header: "Extrema_CurveTool.hxx", bycopy.} = object

type
  Extrema_ECC* {.importcpp: "Extrema_ECC", header: "Extrema_ECC.hxx", bycopy.} = object ##
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
  Extrema_ECC2d* {.importcpp: "Extrema_ECC2d", header: "Extrema_ECC2d.hxx", bycopy.} = object ##
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
  Extrema_ELPCOfLocateExtPC* {.importcpp: "Extrema_ELPCOfLocateExtPC",
                              header: "Extrema_ELPCOfLocateExtPC.hxx", bycopy.} = object


type
  Extrema_ELPCOfLocateExtPC2d* {.importcpp: "Extrema_ELPCOfLocateExtPC2d",
                                header: "Extrema_ELPCOfLocateExtPC2d.hxx", bycopy.} = object


type
  Extrema_EPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx",
                                   bycopy.} = object


type
  Extrema_EPCOfELPCOfLocateExtPC2d* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx",
                                     bycopy.} = object

type
  Extrema_EPCOfExtPC* {.importcpp: "Extrema_EPCOfExtPC",
                       header: "Extrema_EPCOfExtPC.hxx", bycopy.} = object


type
  Extrema_EPCOfExtPC2d* {.importcpp: "Extrema_EPCOfExtPC2d",
                         header: "Extrema_EPCOfExtPC2d.hxx", bycopy.} = object

type
  Extrema_ExtPC* {.importcpp: "Extrema_ExtPC", header: "Extrema_ExtPC.hxx", bycopy.} = object

type
  Extrema_ExtPC2d* {.importcpp: "Extrema_ExtPC2d", header: "Extrema_ExtPC2d.hxx",
                    bycopy.} = object

type
  Extrema_ExtPElC* {.importcpp: "Extrema_ExtPElC", header: "Extrema_ExtPElC.hxx",
                    bycopy.} = object

type
  Extrema_ExtPElC2d* {.importcpp: "Extrema_ExtPElC2d",
                      header: "Extrema_ExtPElC2d.hxx", bycopy.} = object


type
  Extrema_ExtPElS* {.importcpp: "Extrema_ExtPElS", header: "Extrema_ExtPElS.hxx",
                    bycopy.} = object




## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a linear
## ! extrusion surface.

type
  Extrema_ExtPExtS* {.importcpp: "Extrema_ExtPExtS",
                     header: "Extrema_ExtPExtS.hxx", bycopy.} = object of Standard_Transient


type
  Handle_Extrema_ExtPExtS* = Handle[Extrema_ExtPExtS]




## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a surface
## ! of revolution.

type
  Extrema_ExtPRevS* {.importcpp: "Extrema_ExtPRevS",
                     header: "Extrema_ExtPRevS.hxx", bycopy.} = object of Standard_Transient

type
  Handle_Extrema_ExtPRevS* = Handle[Extrema_ExtPRevS]


type
  Extrema_ExtPS* {.importcpp: "Extrema_ExtPS", header: "Extrema_ExtPS.hxx", bycopy.} = object


type
  Extrema_ExtSS* {.importcpp: "Extrema_ExtSS", header: "Extrema_ExtSS.hxx", bycopy.} = object


type
  Extrema_FuncExtCS* {.importcpp: "Extrema_FuncExtCS",
                      header: "Extrema_FuncExtCS.hxx", bycopy.} = object of Math_FunctionSetWithDerivatives


type
  Extrema_FuncExtSS* {.importcpp: "Extrema_FuncExtSS",
                      header: "Extrema_FuncExtSS.hxx", bycopy.} = object of Math_FunctionSetWithDerivatives

type
  Extrema_FuncPSDist* {.importcpp: "Extrema_FuncPSDist",
                       header: "Extrema_FuncPSDist.hxx", bycopy.} = object of Math_MultipleVarFunctionWithGradient ##
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
  Extrema_FuncPSNorm* {.importcpp: "Extrema_FuncPSNorm",
                       header: "Extrema_FuncPSNorm.hxx", bycopy.} = object of Math_FunctionSetWithDerivatives

type
  Extrema_GenExtCS* {.importcpp: "Extrema_GenExtCS",
                     header: "Extrema_GenExtCS.hxx", bycopy.} = object ##  disallow copies

type
  Extrema_GenExtPS* {.importcpp: "Extrema_GenExtPS",
                     header: "Extrema_GenExtPS.hxx", bycopy.} = object ##  disallow copies

type
  Extrema_GenExtSS* {.importcpp: "Extrema_GenExtSS",
                     header: "Extrema_GenExtSS.hxx", bycopy.} = object ##  disallow copies

type
  Extrema_GenLocateExtCS* {.importcpp: "Extrema_GenLocateExtCS",
                           header: "Extrema_GenLocateExtCS.hxx", bycopy.} = object

type
  Extrema_GenLocateExtPS* {.importcpp: "Extrema_GenLocateExtPS",
                           header: "Extrema_GenLocateExtPS.hxx", bycopy.} = object ## !
                                                                              ## Constructor.
    ##  State.
    ##  Result.

type
  Extrema_GenLocateExtSS* {.importcpp: "Extrema_GenLocateExtSS",
                           header: "Extrema_GenLocateExtSS.hxx", bycopy.} = object

type
  Extrema_GlobOptFuncCCC0* {.importcpp: "Extrema_GlobOptFuncCCC0",
                            header: "Extrema_GlobOptFuncCC.hxx", bycopy.} = object of Math_MultipleVarFunction

type
  Extrema_GlobOptFuncConicS* {.importcpp: "Extrema_GlobOptFuncConicS",
                              header: "Extrema_GlobOptFuncConicS.hxx", bycopy.} = object of Math_MultipleVarFunction ##
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
  Extrema_GlobOptFuncCQuadric* {.importcpp: "Extrema_GlobOptFuncCQuadric",
                                header: "Extrema_GlobOptFuncCQuadric.hxx", bycopy.} = object of Math_MultipleVarFunction ##
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
  Extrema_GlobOptFuncCS* {.importcpp: "Extrema_GlobOptFuncCS",
                          header: "Extrema_GlobOptFuncCS.hxx", bycopy.} = object of Math_MultipleVarFunctionWithHessian ##
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
  Extrema_POnCurv* {.importcpp: "Extrema_POnCurv", header: "Extrema_POnCurv.hxx",
                    bycopy.} = object ## ! Creation of an indefinite point on curve.

type
  Extrema_POnCurv2d* {.importcpp: "Extrema_POnCurv2d",
                      header: "Extrema_POnCurv2d.hxx", bycopy.} = object ## ! Creation of an indefinite point on curve.

type
  Extrema_POnSurf* {.importcpp: "Extrema_POnSurf", header: "Extrema_POnSurf.hxx",
                    bycopy, pure,inheritable.} = object ## ! Creation of an indefinite point on surface.


type
  Extrema_POnSurfParams* {.importcpp: "Extrema_POnSurfParams",
                          header: "Extrema_POnSurfParams.hxx", bycopy.} = object of Extrema_POnSurf ##
                                                                                             ## !
                                                                                             ## empty
                                                                                             ## constructor



type
  Extrema_Array1OfPOnCurv* = NCollection_Array1[Extrema_POnCurv]
type
  Extrema_HArray1OfPOnCurv* {.importcpp: "Extrema_HArray1OfPOnCurv",
                             header: "Extrema_HArray1OfPOnCurv.hxx", bycopy.} = object of Extrema_Array1OfPOnCurv

type
  Extrema_Array1OfPOnCurv2d* = NCollection_Array1[Extrema_POnCurv2d]

type
  Extrema_HArray1OfPOnCurv2d* {.importcpp: "Extrema_HArray1OfPOnCurv2d",
                               header: "Extrema_HArray1OfPOnCurv2d.hxx", bycopy.} = object of Extrema_Array1OfPOnCurv2d


type
  Extrema_Array1OfPOnSurf* = NCollection_Array1[Extrema_POnSurf]


type
  Extrema_HArray1OfPOnSurf* {.importcpp: "Extrema_HArray1OfPOnSurf",
                             header: "Extrema_HArray1OfPOnSurf.hxx", bycopy.} = object of Extrema_Array1OfPOnSurf
type
  Extrema_Array2OfPOnCurv* = NCollection_Array2[Extrema_POnCurv]


type
  Extrema_HArray2OfPOnCurv* {.importcpp: "Extrema_HArray2OfPOnCurv",
                             header: "Extrema_HArray2OfPOnCurv.hxx", bycopy.} = object of Extrema_Array2OfPOnCurv
type
  Extrema_Array2OfPOnCurv2d* = NCollection_Array2[Extrema_POnCurv2d]


type
  Extrema_HArray2OfPOnCurv2d* {.importcpp: "Extrema_HArray2OfPOnCurv2d",
                               header: "Extrema_HArray2OfPOnCurv2d.hxx", bycopy.} = object of Extrema_Array2OfPOnCurv2d
type
  Extrema_Array2OfPOnSurf* = NCollection_Array2[Extrema_POnSurf]

type
  Extrema_HArray2OfPOnSurf* {.importcpp: "Extrema_HArray2OfPOnSurf",
                             header: "Extrema_HArray2OfPOnSurf.hxx", bycopy.} = object of Extrema_Array2OfPOnSurf

type
  Extrema_LocateExtCC* {.importcpp: "Extrema_LocateExtCC",
                        header: "Extrema_LocateExtCC.hxx", bycopy.} = object ## !
                                                                        ## Calculates the distance with a close point. The
                                                                        ## ! close point is defined by a
                                                                        ## parameter value on each
                                                                        ## ! curve.
                                                                        ## ! The function
                                                                        ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                        ## ! extremun when
                                                                        ## gradient(f)=0. The
                                                                        ## algorithm searches
                                                                        ## ! the zero near the close point.

type
  Extrema_LocateExtCC2d* {.importcpp: "Extrema_LocateExtCC2d",
                          header: "Extrema_LocateExtCC2d.hxx", bycopy.} = object ## !
                                                                            ## Calculates the
                                                                            ## distance with a
                                                                            ## close
                                                                            ## point. The
                                                                            ## !
                                                                            ## close
                                                                            ## point is
                                                                            ## defined by a
                                                                            ## parameter
                                                                            ## value on each
                                                                            ## !
                                                                            ## curve.
                                                                            ## ! The
                                                                            ## function
                                                                            ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                            ## !
                                                                            ## extremun when
                                                                            ## gradient(f)=0. The
                                                                            ## algorithm
                                                                            ## searches
                                                                            ## ! the zero near the
                                                                            ## close
                                                                            ## point.

type
  Extrema_LocateExtPC* {.importcpp: "Extrema_LocateExtPC",
                        header: "Extrema_LocateExtPC.hxx", bycopy.} = object


type
  Extrema_LocateExtPC2d* {.importcpp: "Extrema_LocateExtPC2d",
                          header: "Extrema_LocateExtPC2d.hxx", bycopy.} = object

type
  Extrema_LocECC* {.importcpp: "Extrema_LocECC", header: "Extrema_LocECC.hxx", bycopy.} = object ##
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
                                                                                         ## searches
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## zero
                                                                                         ## near
                                                                                         ## the
                                                                                         ## close
                                                                                         ## point.

type
  Extrema_LocECC2d* {.importcpp: "Extrema_LocECC2d",
                     header: "Extrema_LocECC2d.hxx", bycopy.} = object ## ! Calculates the distance with a close point. The
                                                                  ## ! close point is defined by a parameter value on each
                                                                  ## ! curve.
                                                                  ## ! The function
                                                                  ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                  ## ! extremun when gradient(f)=0. The algorithm searches
                                                                  ## ! the zero near the close point.

type
  Extrema_LocEPCOfLocateExtPC* {.importcpp: "Extrema_LocEPCOfLocateExtPC",
                                header: "Extrema_LocEPCOfLocateExtPC.hxx", bycopy.} = object


type
  Extrema_LocEPCOfLocateExtPC2d* {.importcpp: "Extrema_LocEPCOfLocateExtPC2d",
                                  header: "Extrema_LocEPCOfLocateExtPC2d.hxx",
                                  bycopy.} = object

type
  Extrema_PCFOfEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx",
                                        bycopy.} = object of Math_FunctionWithDerivative


type
  Extrema_PCFOfEPCOfELPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d",
      header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx", bycopy.} = object of Math_FunctionWithDerivative

type
  Extrema_PCFOfEPCOfExtPC* {.importcpp: "Extrema_PCFOfEPCOfExtPC",
                            header: "Extrema_PCFOfEPCOfExtPC.hxx", bycopy.} = object of Math_FunctionWithDerivative

type
  Extrema_PCFOfEPCOfExtPC2d* {.importcpp: "Extrema_PCFOfEPCOfExtPC2d",
                              header: "Extrema_PCFOfEPCOfExtPC2d.hxx", bycopy.} = object of Math_FunctionWithDerivative

type
  Extrema_PCLocFOfLocEPCOfLocateExtPC* {.importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx",
                                        bycopy.} = object of Math_FunctionWithDerivative


type
  Extrema_PCLocFOfLocEPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d",
      header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx", bycopy.} = object of Math_FunctionWithDerivative













type
  Extrema_Array2OfPOnSurfParams* = NCollection_Array2[Extrema_POnSurfParams]

type
  Extrema_UBTreeOfSphere* = NCollection_UBTree[cint, Bnd_Sphere]
  Extrema_UBTreeFillerOfSphere* = NCollection_UBTreeFiller[cint, Bnd_Sphere]
  Extrema_HUBTreeOfSphere* = NCollection_Handle[Extrema_UBTreeOfSphere]

type
  Extrema_SequenceOfPOnCurv* = NCollection_Sequence[Extrema_POnCurv]

type
  Extrema_SequenceOfPOnCurv2d* = NCollection_Sequence[Extrema_POnCurv2d]



type
  Extrema_SequenceOfPOnSurf* = NCollection_Sequence[Extrema_POnSurf]


  ExtremaHArray2OfPOnSurfParams* {.importcpp: "Extrema_HArray2OfPOnSurfParams",
                                  header: "Extrema_HArray2OfPOnSurfParams.hxx",
                                  bycopy.} = object of ExtremaArray2OfPOnSurfParams
