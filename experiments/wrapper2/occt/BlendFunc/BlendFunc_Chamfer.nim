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


proc constructBlendFuncChamfer*(s1: Handle[Adaptor3dHSurface];
                               s2: Handle[Adaptor3dHSurface];
                               cg: Handle[Adaptor3dHCurve]): BlendFuncChamfer {.
    constructor, importcpp: "BlendFunc_Chamfer(@)", header: "BlendFunc_Chamfer.hxx".}
proc value*(this: var BlendFuncChamfer; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_Chamfer.hxx".}
proc derivatives*(this: var BlendFuncChamfer; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_Chamfer.hxx".}
proc set*(this: var BlendFuncChamfer; param: float) {.importcpp: "Set",
    header: "BlendFunc_Chamfer.hxx".}
proc isSolution*(this: var BlendFuncChamfer; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "BlendFunc_Chamfer.hxx".}
proc pointOnS1*(this: BlendFuncChamfer): Pnt {.noSideEffect, importcpp: "PointOnS1",
    header: "BlendFunc_Chamfer.hxx".}
proc pointOnS2*(this: BlendFuncChamfer): Pnt {.noSideEffect, importcpp: "PointOnS2",
    header: "BlendFunc_Chamfer.hxx".}
proc isTangencyPoint*(this: BlendFuncChamfer): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Chamfer.hxx".}
proc tangentOnS1*(this: BlendFuncChamfer): Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_Chamfer.hxx".}
proc tangent2dOnS1*(this: BlendFuncChamfer): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_Chamfer.hxx".}
proc tangentOnS2*(this: BlendFuncChamfer): Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_Chamfer.hxx".}
proc tangent2dOnS2*(this: BlendFuncChamfer): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_Chamfer.hxx".}
proc tangent*(this: BlendFuncChamfer; u1: float; v1: float; u2: float; v2: float;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_Chamfer.hxx".}
proc set*(this: var BlendFuncChamfer; dist1: float; dist2: float; choix: int) {.
    importcpp: "Set", header: "BlendFunc_Chamfer.hxx".}
proc getSectionSize*(this: BlendFuncChamfer): float {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_Chamfer.hxx".}
