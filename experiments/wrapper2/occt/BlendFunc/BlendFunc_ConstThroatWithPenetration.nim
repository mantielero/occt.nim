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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, BlendFunc_ConstThroat, ../Standard/Standard_Boolean,
  ../math/math_Vector, ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin"
discard "forward decl of Blend_Point"
type
  BlendFunc_ConstThroatWithPenetration* {.
      importcpp: "BlendFunc_ConstThroatWithPenetration",
      header: "BlendFunc_ConstThroatWithPenetration.hxx", bycopy.} = object of BlendFunc_ConstThroat


proc constructBlendFunc_ConstThroatWithPenetration*(
    S1: handle[Adaptor3d_HSurface]; S2: handle[Adaptor3d_HSurface];
    C: handle[Adaptor3d_HCurve]): BlendFunc_ConstThroatWithPenetration {.
    constructor, importcpp: "BlendFunc_ConstThroatWithPenetration(@)",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc Value*(this: var BlendFunc_ConstThroatWithPenetration; X: math_Vector;
           F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc Derivatives*(this: var BlendFunc_ConstThroatWithPenetration; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc IsSolution*(this: var BlendFunc_ConstThroatWithPenetration; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc TangentOnS1*(this: BlendFunc_ConstThroatWithPenetration): gp_Vec {.
    noSideEffect, importcpp: "TangentOnS1",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc Tangent2dOnS1*(this: BlendFunc_ConstThroatWithPenetration): gp_Vec2d {.
    noSideEffect, importcpp: "Tangent2dOnS1",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc TangentOnS2*(this: BlendFunc_ConstThroatWithPenetration): gp_Vec {.
    noSideEffect, importcpp: "TangentOnS2",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc Tangent2dOnS2*(this: BlendFunc_ConstThroatWithPenetration): gp_Vec2d {.
    noSideEffect, importcpp: "Tangent2dOnS2",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc GetSectionSize*(this: BlendFunc_ConstThroatWithPenetration): Standard_Real {.
    noSideEffect, importcpp: "GetSectionSize",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}