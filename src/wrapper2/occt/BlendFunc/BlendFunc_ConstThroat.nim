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
proc value*(this: var BlendFuncConstThroat; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_ConstThroat.hxx".}
proc derivatives*(this: var BlendFuncConstThroat; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_ConstThroat.hxx".}
proc set*(this: var BlendFuncConstThroat; param: StandardReal) {.importcpp: "Set",
    header: "BlendFunc_ConstThroat.hxx".}
proc isSolution*(this: var BlendFuncConstThroat; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_ConstThroat.hxx".}
proc pointOnS1*(this: BlendFuncConstThroat): GpPnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_ConstThroat.hxx".}
proc pointOnS2*(this: BlendFuncConstThroat): GpPnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_ConstThroat.hxx".}
proc isTangencyPoint*(this: BlendFuncConstThroat): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ConstThroat.hxx".}
proc tangentOnS1*(this: BlendFuncConstThroat): GpVec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_ConstThroat.hxx".}
proc tangent2dOnS1*(this: BlendFuncConstThroat): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ConstThroat.hxx".}
proc tangentOnS2*(this: BlendFuncConstThroat): GpVec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_ConstThroat.hxx".}
proc tangent2dOnS2*(this: BlendFuncConstThroat): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ConstThroat.hxx".}
proc tangent*(this: BlendFuncConstThroat; u1: StandardReal; v1: StandardReal;
             u2: StandardReal; v2: StandardReal; tgFirst: var GpVec; tgLast: var GpVec;
             normFirst: var GpVec; normLast: var GpVec) {.noSideEffect,
    importcpp: "Tangent", header: "BlendFunc_ConstThroat.hxx".}
proc set*(this: var BlendFuncConstThroat; aThroat: StandardReal; a3: StandardReal;
         choix: StandardInteger) {.importcpp: "Set",
                                 header: "BlendFunc_ConstThroat.hxx".}
proc getSectionSize*(this: BlendFuncConstThroat): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_ConstThroat.hxx".}

