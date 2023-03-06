import ../../tkmath/math/math_types
import ../../tkernel/ncollection/ncollection_types
type
  BlendDecrochStatus* {.size: sizeof(cint), importcpp: "Blend_DecrochStatus",
                       header: "Blend_DecrochStatus.hxx".} = enum
    BlendNoDecroch, BlendDecrochRst1, BlendDecrochRst2, BlendDecrochBoth

  BlendStatus* {.size: sizeof(cint), importcpp: "Blend_Status",
                header: "Blend_Status.hxx".} = enum
    BlendStepTooLarge, BlendStepTooSmall, BlendBackward, BlendSamePoints,
    BlendOnRst1, BlendOnRst2, BlendOnRst12, BlendOK

  BlendPoint* {.importcpp: "Blend_Point", header: "Blend_Point.hxx", bycopy.} = object

  BlendSequenceOfPoint* = NCollectionSequence[BlendPoint]

  BlendAppFunction* {.importcpp: "Blend_AppFunction",
                     header: "Blend_AppFunction.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 

  BlendCSFunction* {.importcpp: "Blend_CSFunction", header: "Blend_CSFunction.hxx",
                    bycopy.} = object of BlendAppFunction 

  BlendCurvPointFuncInv* {.importcpp: "Blend_CurvPointFuncInv",
                          header: "Blend_CurvPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 

  BlendFuncInv* {.importcpp: "Blend_FuncInv", header: "Blend_FuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 

  BlendFunction* {.importcpp: "Blend_Function", header: "Blend_Function.hxx", bycopy.} = object of BlendAppFunction 

  BlendRstRstFunction* {.importcpp: "Blend_RstRstFunction",
                        header: "Blend_RstRstFunction.hxx", bycopy.} = object of BlendAppFunction 

  BlendSurfCurvFuncInv* {.importcpp: "Blend_SurfCurvFuncInv",
                         header: "Blend_SurfCurvFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 

  BlendSurfPointFuncInv* {.importcpp: "Blend_SurfPointFuncInv",
                          header: "Blend_SurfPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 
                          #header: "Blend_SurfPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 

                          #header: "Blend_SurfPointFuncInv.hxx", bycopy.} = object of MathFunctionSetWithDerivatives 
  BlendSurfRstFunction* {.importcpp: "Blend_SurfRstFunction",
                         header: "Blend_SurfRstFunction.hxx", bycopy.} = object of BlendAppFunction 

