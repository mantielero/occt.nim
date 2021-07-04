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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../gp/gp_Vec, ../gp/gp_Vec2d,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  BlendFunc_Corde* {.importcpp: "BlendFunc_Corde", header: "BlendFunc_Corde.hxx",
                    bycopy.} = object


proc constructBlendFunc_Corde*(S: handle[Adaptor3d_HSurface];
                              CGuide: handle[Adaptor3d_HCurve]): BlendFunc_Corde {.
    constructor, importcpp: "BlendFunc_Corde(@)", header: "BlendFunc_Corde.hxx".}
proc SetParam*(this: var BlendFunc_Corde; Param: Standard_Real) {.
    importcpp: "SetParam", header: "BlendFunc_Corde.hxx".}
proc SetDist*(this: var BlendFunc_Corde; Dist: Standard_Real) {.importcpp: "SetDist",
    header: "BlendFunc_Corde.hxx".}
proc Value*(this: var BlendFunc_Corde; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_Corde.hxx".}
proc Derivatives*(this: var BlendFunc_Corde; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_Corde.hxx".}
proc PointOnS*(this: BlendFunc_Corde): gp_Pnt {.noSideEffect, importcpp: "PointOnS",
    header: "BlendFunc_Corde.hxx".}
proc PointOnGuide*(this: BlendFunc_Corde): gp_Pnt {.noSideEffect,
    importcpp: "PointOnGuide", header: "BlendFunc_Corde.hxx".}
proc NPlan*(this: BlendFunc_Corde): gp_Vec {.noSideEffect, importcpp: "NPlan",
    header: "BlendFunc_Corde.hxx".}
proc IsTangencyPoint*(this: BlendFunc_Corde): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Corde.hxx".}
proc TangentOnS*(this: BlendFunc_Corde): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BlendFunc_Corde.hxx".}
proc Tangent2dOnS*(this: BlendFunc_Corde): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS", header: "BlendFunc_Corde.hxx".}
proc DerFguide*(this: var BlendFunc_Corde; Sol: math_Vector; DerF: var gp_Vec2d) {.
    importcpp: "DerFguide", header: "BlendFunc_Corde.hxx".}
proc IsSolution*(this: var BlendFunc_Corde; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_Corde.hxx".}