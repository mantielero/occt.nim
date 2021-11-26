##  Created by: Julia GERASIMOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  BlendFuncConstThroat* {.importcpp: "BlendFunc_ConstThroat",
                         header: "BlendFunc_ConstThroat.hxx", bycopy.} = object of BlendFuncGenChamfer


proc newBlendFuncConstThroat*(s1: Handle[Adaptor3dHSurface];
                             s2: Handle[Adaptor3dHSurface];
                             c: Handle[Adaptor3dHCurve]): BlendFuncConstThroat {.
    cdecl, constructor, importcpp: "BlendFunc_ConstThroat(@)", dynlib: tkfillet.}
proc value*(this: var BlendFuncConstThroat; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BlendFuncConstThroat; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc set*(this: var BlendFuncConstThroat; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc isSolution*(this: var BlendFuncConstThroat; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", dynlib: tkfillet.}
proc pointOnS1*(this: BlendFuncConstThroat): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS1", dynlib: tkfillet.}
proc pointOnS2*(this: BlendFuncConstThroat): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS2", dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendFuncConstThroat): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS1*(this: BlendFuncConstThroat): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", dynlib: tkfillet.}
proc tangent2dOnS1*(this: BlendFuncConstThroat): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", dynlib: tkfillet.}
proc tangentOnS2*(this: BlendFuncConstThroat): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", dynlib: tkfillet.}
proc tangent2dOnS2*(this: BlendFuncConstThroat): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", dynlib: tkfillet.}
proc tangent*(this: BlendFuncConstThroat; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, cdecl, importcpp: "Tangent", dynlib: tkfillet.}
proc set*(this: var BlendFuncConstThroat; aThroat: cfloat; a3: cfloat; choix: cint) {.
    cdecl, importcpp: "Set", dynlib: tkfillet.}
proc getSectionSize*(this: BlendFuncConstThroat): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", dynlib: tkfillet.}