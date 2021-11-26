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


proc constructBlendFuncConstThroat*(s1: Handle[Adaptor3dHSurface];
                                   s2: Handle[Adaptor3dHSurface];
                                   c: Handle[Adaptor3dHCurve]): BlendFuncConstThroat {.
    constructor, importcpp: "BlendFunc_ConstThroat(@)",
    header: "BlendFunc_ConstThroat.hxx".}
proc value*(this: var BlendFuncConstThroat; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_ConstThroat.hxx".}
proc derivatives*(this: var BlendFuncConstThroat; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_ConstThroat.hxx".}
proc set*(this: var BlendFuncConstThroat; param: cfloat) {.importcpp: "Set",
    header: "BlendFunc_ConstThroat.hxx".}
proc isSolution*(this: var BlendFuncConstThroat; sol: MathVector; tol: cfloat): bool {.
    importcpp: "IsSolution", header: "BlendFunc_ConstThroat.hxx".}
proc pointOnS1*(this: BlendFuncConstThroat): Pnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_ConstThroat.hxx".}
proc pointOnS2*(this: BlendFuncConstThroat): Pnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_ConstThroat.hxx".}
proc isTangencyPoint*(this: BlendFuncConstThroat): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ConstThroat.hxx".}
proc tangentOnS1*(this: BlendFuncConstThroat): Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_ConstThroat.hxx".}
proc tangent2dOnS1*(this: BlendFuncConstThroat): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ConstThroat.hxx".}
proc tangentOnS2*(this: BlendFuncConstThroat): Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_ConstThroat.hxx".}
proc tangent2dOnS2*(this: BlendFuncConstThroat): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ConstThroat.hxx".}
proc tangent*(this: BlendFuncConstThroat; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_ConstThroat.hxx".}
proc set*(this: var BlendFuncConstThroat; aThroat: cfloat; a3: cfloat; choix: cint) {.
    importcpp: "Set", header: "BlendFunc_ConstThroat.hxx".}
proc getSectionSize*(this: BlendFuncConstThroat): cfloat {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_ConstThroat.hxx".}

























