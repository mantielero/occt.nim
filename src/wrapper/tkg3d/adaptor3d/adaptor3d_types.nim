# PROVIDES: Adaptor3dCurveOnSurfacePtr Adaptor3dCurvePtr Adaptor3dSurfacePtr Adaptor3dCurve Adaptor3dHSurfaceTool Adaptor3dSurface
# DEPENDS:  Handle[Adaptor3dHCurve]  Handle[Adaptor3dHSurface]  Handle[Adaptor3dTopolTool] Adaptor3dCurve Adaptor3dCurve StandardTransient  Handle[Adaptor3dHCurveOnSurface] Adaptor3dHCurve  Handle[Adaptor3dHIsoCurve] Adaptor3dHCurve StandardTransient  Handle[Adaptor3dHVertex] StandardTransient MathFunctionWithDerivative StandardTransient

import tkg3d/adaptor3d/adaptor3d_types
import tkmath/math/math_types
import tkernel/standard/standard_types
type
  Adaptor3dCurveOnSurfacePtr* = ptr Adaptor3dCurveOnSurface

  Adaptor3dCurvePtr* = ptr Adaptor3dCurve

  Adaptor3dSurfacePtr* = ptr Adaptor3dSurface

  Adaptor3dCurve* {.importcpp: "Adaptor3d_Curve", header: "Adaptor3d_Curve.hxx",
                   bycopy.} = object of RootObj

  Adaptor3dHSurfaceTool* {.importcpp: "Adaptor3d_HSurfaceTool",
                          header: "Adaptor3d_HSurfaceTool.hxx", bycopy.} = object

  Adaptor3dSurface* {.importcpp: "Adaptor3d_Surface",
                     header: "Adaptor3d_Surface.hxx", bycopy.} = object of RootObj

  HandleAdaptor3dHCurve* = Handle[Adaptor3dHCurve]

  HandleAdaptor3dHSurface* = Handle[Adaptor3dHSurface]

  HandleAdaptor3dTopolTool* = Handle[Adaptor3dTopolTool]

  Adaptor3dCurveOnSurface* {.importcpp: "Adaptor3d_CurveOnSurface",
                            header: "Adaptor3d_CurveOnSurface.hxx", bycopy.} = object of Adaptor3dCurve

  Adaptor3dIsoCurve* {.importcpp: "Adaptor3d_IsoCurve",
                      header: "Adaptor3d_IsoCurve.hxx", bycopy.} = object of Adaptor3dCurve 

  Adaptor3dHCurve* {.importcpp: "Adaptor3d_HCurve", header: "Adaptor3d_HCurve.hxx",
                    bycopy.} = object of StandardTransient 

  HandleAdaptor3dHCurveOnSurface* = Handle[Adaptor3dHCurveOnSurface]

  Adaptor3dHCurveOnSurface* {.importcpp: "Adaptor3d_HCurveOnSurface",
                             header: "Adaptor3d_HCurveOnSurface.hxx", bycopy.} = object of Adaptor3dHCurve 

  HandleAdaptor3dHIsoCurve* = Handle[Adaptor3dHIsoCurve]

  Adaptor3dHIsoCurve* {.importcpp: "Adaptor3d_HIsoCurve",
                       header: "Adaptor3d_HIsoCurve.hxx", bycopy.} = object of Adaptor3dHCurve 

  Adaptor3dHSurface* {.importcpp: "Adaptor3d_HSurface",
                      header: "Adaptor3d_HSurface.hxx", bycopy.} = object of StandardTransient 

  HandleAdaptor3dHVertex* = Handle[Adaptor3dHVertex]

  Adaptor3dHVertex* {.importcpp: "Adaptor3d_HVertex",
                     header: "Adaptor3d_HVertex.hxx", bycopy.} = object of StandardTransient

  Adaptor3dInterFunc* {.importcpp: "Adaptor3d_InterFunc",
                       header: "Adaptor3d_InterFunc.hxx", bycopy.} = object of MathFunctionWithDerivative 

                       header: "Adaptor3d_InterFunc.hxx", bycopy.} = object of MathFunctionWithDerivative 
  Adaptor3dTopolTool* {.importcpp: "Adaptor3d_TopolTool",
                       header: "Adaptor3d_TopolTool.hxx", bycopy.} = object of StandardTransient


