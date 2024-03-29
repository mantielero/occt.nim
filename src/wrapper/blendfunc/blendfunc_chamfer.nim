import ../math/math_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types





##  Created on: 1996-06-06
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



proc newBlendFuncChamfer*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         cg: Handle[Adaptor3dHCurve]): BlendFuncChamfer {.cdecl,
    constructor, importcpp: "BlendFunc_Chamfer(@)", header: "BlendFunc_Chamfer.hxx".}
proc value*(this: var BlendFuncChamfer; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_Chamfer.hxx".}
proc derivatives*(this: var BlendFuncChamfer; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_Chamfer.hxx".}
proc set*(this: var BlendFuncChamfer; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_Chamfer.hxx".}
proc isSolution*(this: var BlendFuncChamfer; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", header: "BlendFunc_Chamfer.hxx".}
proc pointOnS1*(this: BlendFuncChamfer): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "BlendFunc_Chamfer.hxx".}
proc pointOnS2*(this: BlendFuncChamfer): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "BlendFunc_Chamfer.hxx".}
proc isTangencyPoint*(this: BlendFuncChamfer): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Chamfer.hxx".}
proc tangentOnS1*(this: BlendFuncChamfer): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", header: "BlendFunc_Chamfer.hxx".}
proc tangent2dOnS1*(this: BlendFuncChamfer): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_Chamfer.hxx".}
proc tangentOnS2*(this: BlendFuncChamfer): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", header: "BlendFunc_Chamfer.hxx".}
proc tangent2dOnS2*(this: BlendFuncChamfer): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_Chamfer.hxx".}
proc tangent*(this: BlendFuncChamfer; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var gp_Vec; tgLast: var gp_Vec; normFirst: var gp_Vec; normLast: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "Tangent", header: "BlendFunc_Chamfer.hxx".}
proc set*(this: var BlendFuncChamfer; dist1: cfloat; dist2: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BlendFunc_Chamfer.hxx".}
proc getSectionSize*(this: BlendFuncChamfer): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_Chamfer.hxx".}


