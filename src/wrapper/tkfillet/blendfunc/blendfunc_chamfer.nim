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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin"
discard "forward decl of Blend_Point"
type
  BlendFuncChamfer* {.importcpp: "BlendFunc_Chamfer",
                     header: "BlendFunc_Chamfer.hxx", bycopy.} = object of BlendFuncGenChamfer


proc newBlendFuncChamfer*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         cg: Handle[Adaptor3dHCurve]): BlendFuncChamfer {.cdecl,
    constructor, importcpp: "BlendFunc_Chamfer(@)", dynlib: tkfillet.}
proc value*(this: var BlendFuncChamfer; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BlendFuncChamfer; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc set*(this: var BlendFuncChamfer; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc isSolution*(this: var BlendFuncChamfer; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", dynlib: tkfillet.}
proc pointOnS1*(this: BlendFuncChamfer): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS1", dynlib: tkfillet.}
proc pointOnS2*(this: BlendFuncChamfer): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS2", dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendFuncChamfer): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS1*(this: BlendFuncChamfer): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", dynlib: tkfillet.}
proc tangent2dOnS1*(this: BlendFuncChamfer): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", dynlib: tkfillet.}
proc tangentOnS2*(this: BlendFuncChamfer): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", dynlib: tkfillet.}
proc tangent2dOnS2*(this: BlendFuncChamfer): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", dynlib: tkfillet.}
proc tangent*(this: BlendFuncChamfer; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, cdecl, importcpp: "Tangent", dynlib: tkfillet.}
proc set*(this: var BlendFuncChamfer; dist1: cfloat; dist2: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getSectionSize*(this: BlendFuncChamfer): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", dynlib: tkfillet.}