# PROVIDES: BRepBlendChamfer BRepBlendChamfInv BRepBlendChAsym BRepBlendChAsymInv BRepBlendConstRad BRepBlendConstRadInv BRepBlendConstThroat BRepBlendConstThroatInv BRepBlendConstThroatWithPenetration BRepBlendConstThroatWithPenetrationInv BRepBlendCSCircular BRepBlendCSConstRad BRepBlendEvolRad BRepBlendEvolRadInv BRepBlendRuled BRepBlendRuledInv BRepBlendBlendTool BRepBlendCSWalking BRepBlendExtremity BRepBlendHCurve2dTool BRepBlendHCurveTool BRepBlendPointOnRst BRepBlendRstRstLineBuilder BRepBlendSurfRstLineBuilder BRepBlendWalking
# DEPENDS:  NCollectionSequence[Handle[BRepBlendLine]]  NCollectionSequence[BRepBlendPointOnRst]  Handle[BRepBlendAppFunc]  Handle[BRepBlendAppFuncRoot]  Handle[BRepBlendAppFuncRst]  Handle[BRepBlendAppFuncRstRst] BRepBlendAppFuncRoot ApproxSweepFunction BRepBlendAppFuncRoot BRepBlendAppFuncRoot AppBlendApprox AppBlendApprox BlendCurvPointFuncInv  Handle[BRepBlendLine] StandardTransient BlendRstRstFunction BlendRstRstFunction BlendSurfCurvFuncInv BlendSurfCurvFuncInv BlendSurfPointFuncInv BlendSurfPointFuncInv BlendSurfRstFunction BlendSurfRstFunction

import tkgeomalgo/appblend/appblend_types
import tkfillet/brepblend/brepblend_types
import tkfillet/blend/blend_types
import tkgeombase/approx/approx_types
import tkbrep/brep/brep_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  BRepBlendChamfer* = BlendFuncChamfer

  BRepBlendChamfInv* = BlendFuncChamfInv

  BRepBlendChAsym* = BlendFuncChAsym

  BRepBlendChAsymInv* = BlendFuncChAsymInv

  BRepBlendConstRad* = BlendFuncConstRad

  BRepBlendConstRadInv* = BlendFuncConstRadInv

  BRepBlendConstThroat* = BlendFuncConstThroat

  BRepBlendConstThroatInv* = BlendFuncConstThroatInv

  BRepBlendConstThroatWithPenetration* = BlendFuncConstThroatWithPenetration

  BRepBlendConstThroatWithPenetrationInv* = BlendFuncConstThroatWithPenetrationInv

  BRepBlendCSCircular* = BlendFuncCSCircular

  BRepBlendCSConstRad* = BlendFuncCSConstRad

  BRepBlendEvolRad* = BlendFuncEvolRad

  BRepBlendEvolRadInv* = BlendFuncEvolRadInv

  BRepBlendRuled* = BlendFuncRuled

  BRepBlendRuledInv* = BlendFuncRuledInv

  BRepBlendBlendTool* {.importcpp: "BRepBlend_BlendTool",
                       header: "BRepBlend_BlendTool.hxx", bycopy.} = object 

  BRepBlendCSWalking* {.importcpp: "BRepBlend_CSWalking",
                       header: "BRepBlend_CSWalking.hxx", bycopy.} = object

  BRepBlendExtremity* {.importcpp: "BRepBlend_Extremity",
                       header: "BRepBlend_Extremity.hxx", bycopy.} = object

  BRepBlendHCurve2dTool* {.importcpp: "BRepBlend_HCurve2dTool",
                          header: "BRepBlend_HCurve2dTool.hxx", bycopy.} = object

  BRepBlendHCurveTool* {.importcpp: "BRepBlend_HCurveTool",
                        header: "BRepBlend_HCurveTool.hxx", bycopy.} = object

  BRepBlendPointOnRst* {.importcpp: "BRepBlend_PointOnRst",
                        header: "BRepBlend_PointOnRst.hxx", bycopy.} = object 

  BRepBlendRstRstLineBuilder* {.importcpp: "BRepBlend_RstRstLineBuilder",
                               header: "BRepBlend_RstRstLineBuilder.hxx", bycopy.} = object

  BRepBlendSurfRstLineBuilder* {.importcpp: "BRepBlend_SurfRstLineBuilder",
                                header: "BRepBlend_SurfRstLineBuilder.hxx", bycopy.} = object
                                header: "BRepBlend_SurfRstLineBuilder.hxx", bycopy.} = object

  BRepBlendWalking* {.importcpp: "BRepBlend_Walking",
                     header: "BRepBlend_Walking.hxx", bycopy.} = object

  BRepBlendSequenceOfLine* = NCollectionSequence[Handle[BRepBlendLine]]

  BRepBlendSequenceOfPointOnRst* = NCollectionSequence[BRepBlendPointOnRst]

  HandleBRepBlendAppFunc* = Handle[BRepBlendAppFunc]

  HandleBRepBlendAppFuncRoot* = Handle[BRepBlendAppFuncRoot]

  HandleBRepBlendAppFuncRst* = Handle[BRepBlendAppFuncRst]

  HandleBRepBlendAppFuncRstRst* = Handle[BRepBlendAppFuncRstRst]

  BRepBlendAppFunc* {.importcpp: "BRepBlend_AppFunc",
                     header: "BRepBlend_AppFunc.hxx", bycopy.} = object of BRepBlendAppFuncRoot

  BRepBlendAppFuncRoot* {.importcpp: "BRepBlend_AppFuncRoot",
                         header: "BRepBlend_AppFuncRoot.hxx", bycopy.} = object of ApproxSweepFunction 

  BRepBlendAppFuncRst* {.importcpp: "BRepBlend_AppFuncRst",
                        header: "BRepBlend_AppFuncRst.hxx", bycopy.} = object of BRepBlendAppFuncRoot

  BRepBlendAppFuncRstRst* {.importcpp: "BRepBlend_AppFuncRstRst",
                           header: "BRepBlend_AppFuncRstRst.hxx", bycopy.} = object of BRepBlendAppFuncRoot

  BRepBlendAppSurf* {.importcpp: "BRepBlend_AppSurf",
                     header: "BRepBlend_AppSurf.hxx", bycopy.} = object of AppBlendApprox

  BRepBlendAppSurface* {.importcpp: "BRepBlend_AppSurface",
                        header: "BRepBlend_AppSurface.hxx", bycopy.} = object of AppBlendApprox 

  BRepBlendCurvPointRadInv* {.importcpp: "BRepBlend_CurvPointRadInv",
                             header: "BRepBlend_CurvPointRadInv.hxx", bycopy.} = object of BlendCurvPointFuncInv

  HandleBRepBlendLine* = Handle[BRepBlendLine]

  BRepBlendLine* {.importcpp: "BRepBlend_Line", header: "BRepBlend_Line.hxx", bycopy.} = object of StandardTransient

  BRepBlendRstRstConstRad* {.importcpp: "BRepBlend_RstRstConstRad",
                            header: "BRepBlend_RstRstConstRad.hxx", bycopy.} = object of BlendRstRstFunction

  BRepBlendRstRstEvolRad* {.importcpp: "BRepBlend_RstRstEvolRad",
                           header: "BRepBlend_RstRstEvolRad.hxx", bycopy.} = object of BlendRstRstFunction

  BRepBlendSurfCurvConstRadInv* {.importcpp: "BRepBlend_SurfCurvConstRadInv",
                                 header: "BRepBlend_SurfCurvConstRadInv.hxx",
                                 bycopy.} = object of BlendSurfCurvFuncInv

  BRepBlendSurfCurvEvolRadInv* {.importcpp: "BRepBlend_SurfCurvEvolRadInv",
                                header: "BRepBlend_SurfCurvEvolRadInv.hxx", bycopy.} = object of BlendSurfCurvFuncInv

  BRepBlendSurfPointConstRadInv* {.importcpp: "BRepBlend_SurfPointConstRadInv",
                                  header: "BRepBlend_SurfPointConstRadInv.hxx",
                                  bycopy.} = object of BlendSurfPointFuncInv

  BRepBlendSurfPointEvolRadInv* {.importcpp: "BRepBlend_SurfPointEvolRadInv",
                                 header: "BRepBlend_SurfPointEvolRadInv.hxx",
                                 bycopy.} = object of BlendSurfPointFuncInv

  BRepBlendSurfRstConstRad* {.importcpp: "BRepBlend_SurfRstConstRad",
                             header: "BRepBlend_SurfRstConstRad.hxx", bycopy.} = object of BlendSurfRstFunction

                             header: "BRepBlend_SurfRstConstRad.hxx", bycopy.} = object of BlendSurfRstFunction
  BRepBlendSurfRstEvolRad* {.importcpp: "BRepBlend_SurfRstEvolRad",
                            header: "BRepBlend_SurfRstEvolRad.hxx", bycopy.} = object of BlendSurfRstFunction


