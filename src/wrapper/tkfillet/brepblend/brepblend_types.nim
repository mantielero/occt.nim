# PROVIDES: HandleBRepBlendAppFunc HandleBRepBlendAppFuncRoot HandleBRepBlendAppFuncRst HandleBRepBlendAppFuncRstRst BRepBlendBlendTool BRepBlendCSWalking BRepBlendExtremity BRepBlendHCurve2dTool BRepBlendHCurveTool BRepBlendPointOnRst BRepBlendRstRstLineBuilder BRepBlendSurfRstLineBuilder BRepBlendWalking
# DEPENDS: BRepBlendAppFuncRoot ApproxSweepFunction BRepBlendAppFuncRoot BRepBlendAppFuncRoot AppBlendApprox AppBlendApprox BlendCurvPointFuncInv StandardTransient BlendRstRstFunction BlendRstRstFunction BlendSurfCurvFuncInv BlendSurfCurvFuncInv BlendSurfPointFuncInv BlendSurfPointFuncInv BlendSurfRstFunction BlendSurfRstFunction

type
  HandleBRepBlendAppFunc* = Handle[BRepBlendAppFunc]
## ! Function to approximate by AppSurface
## ! for Surface/Surface contact.

type
  HandleBRepBlendAppFuncRoot* = Handle[BRepBlendAppFuncRoot]
## ! Function to approximate by AppSurface

type
  HandleBRepBlendAppFuncRst* = Handle[BRepBlendAppFuncRst]
## ! Function  to approximate by AppSurface  for Curve/Surface contact.

type
  HandleBRepBlendAppFuncRstRst* = Handle[BRepBlendAppFuncRstRst]
## ! Function to approximate by AppSurface for Edge/Face (Curve/Curve contact).

type
  BRepBlendBlendTool* {.importcpp: "BRepBlend_BlendTool",
                       header: "BRepBlend_BlendTool.hxx", bycopy.} = object ## ! Projects the point P on the arc C.
                                                                       ## ! If the methods returns
                                                                       ## Standard_True, the
                                                                       ## projection is
                                                                       ## !
                                                                       ## successful, and Paramproj is the parameter on the arc
                                                                       ## ! of the projected point, Dist is the distance between
                                                                       ## ! P and the curve..
                                                                       ## ! If the method returns
                                                                       ## Standard_False, Param proj and Dist
                                                                       ## ! are not
                                                                       ## significant.

type
  BRepBlendCSWalking* {.importcpp: "BRepBlend_CSWalking",
                       header: "BRepBlend_CSWalking.hxx", bycopy.} = object

type
  BRepBlendExtremity* {.importcpp: "BRepBlend_Extremity",
                       header: "BRepBlend_Extremity.hxx", bycopy.} = object

type
  BRepBlendHCurve2dTool* {.importcpp: "BRepBlend_HCurve2dTool",
                          header: "BRepBlend_HCurve2dTool.hxx", bycopy.} = object

type
  BRepBlendHCurveTool* {.importcpp: "BRepBlend_HCurveTool",
                        header: "BRepBlend_HCurveTool.hxx", bycopy.} = object

type
  BRepBlendPointOnRst* {.importcpp: "BRepBlend_PointOnRst",
                        header: "BRepBlend_PointOnRst.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor.

type
  BRepBlendRstRstLineBuilder* {.importcpp: "BRepBlend_RstRstLineBuilder",
                               header: "BRepBlend_RstRstLineBuilder.hxx", bycopy.} = object

type
  BRepBlendSurfRstLineBuilder* {.importcpp: "BRepBlend_SurfRstLineBuilder",
                                header: "BRepBlend_SurfRstLineBuilder.hxx", bycopy.} = object

                                header: "BRepBlend_SurfRstLineBuilder.hxx", bycopy.} = object
type
  BRepBlendWalking* {.importcpp: "BRepBlend_Walking",
                     header: "BRepBlend_Walking.hxx", bycopy.} = object


type
  BRepBlendAppFunc* {.importcpp: "BRepBlend_AppFunc",
                     header: "BRepBlend_AppFunc.hxx", bycopy.} = object of BRepBlendAppFuncRoot

type
  BRepBlendAppFuncRoot* {.importcpp: "BRepBlend_AppFuncRoot",
                         header: "BRepBlend_AppFuncRoot.hxx", bycopy.} = object of ApproxSweepFunction ##
                                                                                                ## !
                                                                                                ## compute
                                                                                                ## the
                                                                                                ## section
                                                                                                ## for
                                                                                                ## v
                                                                                                ## =
                                                                                                ## param

type
  BRepBlendAppFuncRst* {.importcpp: "BRepBlend_AppFuncRst",
                        header: "BRepBlend_AppFuncRst.hxx", bycopy.} = object of BRepBlendAppFuncRoot

type
  BRepBlendAppFuncRstRst* {.importcpp: "BRepBlend_AppFuncRstRst",
                           header: "BRepBlend_AppFuncRstRst.hxx", bycopy.} = object of BRepBlendAppFuncRoot

type
  BRepBlendAppSurf* {.importcpp: "BRepBlend_AppSurf",
                     header: "BRepBlend_AppSurf.hxx", bycopy.} = object of AppBlendApprox

type
  BRepBlendAppSurface* {.importcpp: "BRepBlend_AppSurface",
                        header: "BRepBlend_AppSurface.hxx", bycopy.} = object of AppBlendApprox ##
                                                                                         ## !
                                                                                         ## Approximation
                                                                                         ## of
                                                                                         ## the
                                                                                         ## new
                                                                                         ## Surface
                                                                                         ## (and
                                                                                         ##
                                                                                         ## !
                                                                                         ## eventually
                                                                                         ## the
                                                                                         ## 2d
                                                                                         ## Curves
                                                                                         ## on
                                                                                         ## the
                                                                                         ## support
                                                                                         ##
                                                                                         ## !
                                                                                         ## surfaces).
                                                                                         ##
                                                                                         ## !
                                                                                         ## Normaly
                                                                                         ## the
                                                                                         ## 2d
                                                                                         ## curve
                                                                                         ## are
                                                                                         ##
                                                                                         ## !
                                                                                         ## approximated
                                                                                         ## with
                                                                                         ## an
                                                                                         ## tolerance
                                                                                         ## given
                                                                                         ## by
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## resolution
                                                                                         ## on
                                                                                         ## support
                                                                                         ## surfaces,
                                                                                         ## but
                                                                                         ## if
                                                                                         ## this
                                                                                         ##
                                                                                         ## !
                                                                                         ## tolerance
                                                                                         ## is
                                                                                         ## too
                                                                                         ## large
                                                                                         ## Tol2d
                                                                                         ## is
                                                                                         ## used.

type
  BRepBlendCurvPointRadInv* {.importcpp: "BRepBlend_CurvPointRadInv",
                             header: "BRepBlend_CurvPointRadInv.hxx", bycopy.} = object of BlendCurvPointFuncInv

type
  HandleBRepBlendLine* = Handle[BRepBlendLine]
  BRepBlendLine* {.importcpp: "BRepBlend_Line", header: "BRepBlend_Line.hxx", bycopy.} = object of StandardTransient

type
  BRepBlendRstRstConstRad* {.importcpp: "BRepBlend_RstRstConstRad",
                            header: "BRepBlend_RstRstConstRad.hxx", bycopy.} = object of BlendRstRstFunction

type
  BRepBlendRstRstEvolRad* {.importcpp: "BRepBlend_RstRstEvolRad",
                           header: "BRepBlend_RstRstEvolRad.hxx", bycopy.} = object of BlendRstRstFunction

type
  BRepBlendSurfCurvConstRadInv* {.importcpp: "BRepBlend_SurfCurvConstRadInv",
                                 header: "BRepBlend_SurfCurvConstRadInv.hxx",
                                 bycopy.} = object of BlendSurfCurvFuncInv

type
  BRepBlendSurfCurvEvolRadInv* {.importcpp: "BRepBlend_SurfCurvEvolRadInv",
                                header: "BRepBlend_SurfCurvEvolRadInv.hxx", bycopy.} = object of BlendSurfCurvFuncInv

type
  BRepBlendSurfPointConstRadInv* {.importcpp: "BRepBlend_SurfPointConstRadInv",
                                  header: "BRepBlend_SurfPointConstRadInv.hxx",
                                  bycopy.} = object of BlendSurfPointFuncInv

type
  BRepBlendSurfPointEvolRadInv* {.importcpp: "BRepBlend_SurfPointEvolRadInv",
                                 header: "BRepBlend_SurfPointEvolRadInv.hxx",
                                 bycopy.} = object of BlendSurfPointFuncInv

type
  BRepBlendSurfRstConstRad* {.importcpp: "BRepBlend_SurfRstConstRad",
                             header: "BRepBlend_SurfRstConstRad.hxx", bycopy.} = object of BlendSurfRstFunction

type
  BRepBlendSurfRstEvolRad* {.importcpp: "BRepBlend_SurfRstEvolRad",
                            header: "BRepBlend_SurfRstEvolRad.hxx", bycopy.} = object of BlendSurfRstFunction

