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
  BlendFuncConstThroatWithPenetration* {.importcpp: "BlendFunc_ConstThroatWithPenetration", header: "BlendFunc_ConstThroatWithPenetration.hxx",
                                        bycopy.} = object of BlendFuncConstThroat


proc constructBlendFuncConstThroatWithPenetration*(s1: Handle[Adaptor3dHSurface];
    s2: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve]): BlendFuncConstThroatWithPenetration {.
    constructor, importcpp: "BlendFunc_ConstThroatWithPenetration(@)",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc value*(this: var BlendFuncConstThroatWithPenetration; x: MathVector;
           f: var MathVector): StandardBoolean {.importcpp: "Value",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc derivatives*(this: var BlendFuncConstThroatWithPenetration; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc isSolution*(this: var BlendFuncConstThroatWithPenetration; sol: MathVector;
                tol: StandardReal): StandardBoolean {.importcpp: "IsSolution",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangentOnS1*(this: BlendFuncConstThroatWithPenetration): GpVec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangent2dOnS1*(this: BlendFuncConstThroatWithPenetration): GpVec2d {.
    noSideEffect, importcpp: "Tangent2dOnS1",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangentOnS2*(this: BlendFuncConstThroatWithPenetration): GpVec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangent2dOnS2*(this: BlendFuncConstThroatWithPenetration): GpVec2d {.
    noSideEffect, importcpp: "Tangent2dOnS2",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc getSectionSize*(this: BlendFuncConstThroatWithPenetration): StandardReal {.
    noSideEffect, importcpp: "GetSectionSize",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}

