# PROVIDES: BlendPoint
# DEPENDS: MathFunctionSetWithDerivatives BlendAppFunction MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives BlendAppFunction BlendAppFunction MathFunctionSetWithDerivatives MathFunctionSetWithDerivatives BlendAppFunction

type
  BlendPoint* {.importcpp: "Blend_Point", header: "Blend_Point.hxx", bycopy.} = object

type
  BlendAppFunction* {.importcpp: "Blend_AppFunction",
                     header: "Blend_AppFunction.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                   ## !
                                                                                                   ## returns
                                                                                                   ## the
                                                                                                   ## number
                                                                                                   ## of
                                                                                                   ## variables
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## function.

type
  BlendCSFunction* {.importcpp: "Blend_CSFunction", header: "Blend_CSFunction.hxx",
                    bycopy.} = object of BlendAppFunction ## ! Returns 3 (default value). Can be redefined.

type
  BlendCurvPointFuncInv* {.importcpp: "Blend_CurvPointFuncInv",
                          header: "Blend_CurvPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## 3.

type
  BlendFuncInv* {.importcpp: "Blend_FuncInv", header: "Blend_FuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## 4.

type
  BlendFunction* {.importcpp: "Blend_Function", header: "Blend_Function.hxx", bycopy.} = object of BlendAppFunction ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## 4.

type
  BlendRstRstFunction* {.importcpp: "Blend_RstRstFunction",
                        header: "Blend_RstRstFunction.hxx", bycopy.} = object of BlendAppFunction ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## 2
                                                                                           ## (default
                                                                                           ## value).
                                                                                           ## Can
                                                                                           ## be
                                                                                           ## redefined.

type
  BlendSurfCurvFuncInv* {.importcpp: "Blend_SurfCurvFuncInv",
                         header: "Blend_SurfCurvFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## 3.

type
  BlendSurfPointFuncInv* {.importcpp: "Blend_SurfPointFuncInv",
                          header: "Blend_SurfPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## 3.

                                                                                                             ## 3.
type
  BlendSurfRstFunction* {.importcpp: "Blend_SurfRstFunction",
                         header: "Blend_SurfRstFunction.hxx", bycopy.} = object of BlendAppFunction ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## 3
                                                                                             ## (default
                                                                                             ## value).
                                                                                             ## Can
                                                                                             ## be
                                                                                             ## redefined.


