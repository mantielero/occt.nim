import ../math/math_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types





##  Created on: 1996-06-04
##  Created by: Stagiaire Xuan Trang PHAMPHU
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



proc newBlendFuncCorde*(s: Handle[Adaptor3dHSurface];
                       cGuide: Handle[Adaptor3dHCurve]): BlendFuncCorde {.cdecl,
    constructor, importcpp: "BlendFunc_Corde(@)", header: "BlendFunc_Corde.hxx".}
proc setParam*(this: var BlendFuncCorde; param: cfloat) {.cdecl, importcpp: "SetParam",
    header: "BlendFunc_Corde.hxx".}
proc setDist*(this: var BlendFuncCorde; dist: cfloat) {.cdecl, importcpp: "SetDist",
    header: "BlendFunc_Corde.hxx".}
proc value*(this: var BlendFuncCorde; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_Corde.hxx".}
proc derivatives*(this: var BlendFuncCorde; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_Corde.hxx".}
proc pointOnS*(this: BlendFuncCorde): PntObj {.noSideEffect, cdecl,
                                        importcpp: "PointOnS", header: "BlendFunc_Corde.hxx".}
proc pointOnGuide*(this: BlendFuncCorde): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnGuide", header: "BlendFunc_Corde.hxx".}
proc nPlan*(this: BlendFuncCorde): VecObj {.noSideEffect, cdecl, importcpp: "NPlan",
                                     header: "BlendFunc_Corde.hxx".}
proc isTangencyPoint*(this: BlendFuncCorde): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Corde.hxx".}
proc tangentOnS*(this: BlendFuncCorde): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "BlendFunc_Corde.hxx".}
proc tangent2dOnS*(this: BlendFuncCorde): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS", header: "BlendFunc_Corde.hxx".}
proc derFguide*(this: var BlendFuncCorde; sol: MathVector; derF: var Vec2dObj) {.cdecl,
    importcpp: "DerFguide", header: "BlendFunc_Corde.hxx".}
proc isSolution*(this: var BlendFuncCorde; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", header: "BlendFunc_Corde.hxx".}


