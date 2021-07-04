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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, BlendFunc_Corde, BlendFunc_GenChamfer,
  ../Standard/Standard_Boolean, ../math/math_Vector,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
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
  BlendFunc_Chamfer* {.importcpp: "BlendFunc_Chamfer",
                      header: "BlendFunc_Chamfer.hxx", bycopy.} = object of BlendFunc_GenChamfer


proc constructBlendFunc_Chamfer*(S1: handle[Adaptor3d_HSurface];
                                S2: handle[Adaptor3d_HSurface];
                                CG: handle[Adaptor3d_HCurve]): BlendFunc_Chamfer {.
    constructor, importcpp: "BlendFunc_Chamfer(@)", header: "BlendFunc_Chamfer.hxx".}
proc Value*(this: var BlendFunc_Chamfer; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_Chamfer.hxx".}
proc Derivatives*(this: var BlendFunc_Chamfer; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_Chamfer.hxx".}
proc Set*(this: var BlendFunc_Chamfer; Param: Standard_Real) {.importcpp: "Set",
    header: "BlendFunc_Chamfer.hxx".}
proc IsSolution*(this: var BlendFunc_Chamfer; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_Chamfer.hxx".}
proc PointOnS1*(this: BlendFunc_Chamfer): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_Chamfer.hxx".}
proc PointOnS2*(this: BlendFunc_Chamfer): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_Chamfer.hxx".}
proc IsTangencyPoint*(this: BlendFunc_Chamfer): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Chamfer.hxx".}
proc TangentOnS1*(this: BlendFunc_Chamfer): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_Chamfer.hxx".}
proc Tangent2dOnS1*(this: BlendFunc_Chamfer): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_Chamfer.hxx".}
proc TangentOnS2*(this: BlendFunc_Chamfer): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_Chamfer.hxx".}
proc Tangent2dOnS2*(this: BlendFunc_Chamfer): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_Chamfer.hxx".}
proc Tangent*(this: BlendFunc_Chamfer; U1: Standard_Real; V1: Standard_Real;
             U2: Standard_Real; V2: Standard_Real; TgFirst: var gp_Vec;
             TgLast: var gp_Vec; NormFirst: var gp_Vec; NormLast: var gp_Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_Chamfer.hxx".}
proc Set*(this: var BlendFunc_Chamfer; Dist1: Standard_Real; Dist2: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BlendFunc_Chamfer.hxx".}
proc GetSectionSize*(this: BlendFunc_Chamfer): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_Chamfer.hxx".}