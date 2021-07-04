##  Created on: 1993-12-02
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Boolean,
  ../gp/gp_Vec, ../gp/gp_Vec2d, ../Standard/Standard_Real, ../Blend/Blend_Function,
  ../Standard/Standard_Integer, ../math/math_Vector, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColStd/TColStd_Array1OfReal,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
discard "forward decl of gp_Ax1"
type
  BlendFunc_Ruled* {.importcpp: "BlendFunc_Ruled", header: "BlendFunc_Ruled.hxx",
                    bycopy.} = object of Blend_Function


proc constructBlendFunc_Ruled*(S1: handle[Adaptor3d_HSurface];
                              S2: handle[Adaptor3d_HSurface];
                              C: handle[Adaptor3d_HCurve]): BlendFunc_Ruled {.
    constructor, importcpp: "BlendFunc_Ruled(@)", header: "BlendFunc_Ruled.hxx".}
proc NbEquations*(this: BlendFunc_Ruled): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_Ruled.hxx".}
proc Value*(this: var BlendFunc_Ruled; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_Ruled.hxx".}
proc Derivatives*(this: var BlendFunc_Ruled; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_Ruled.hxx".}
proc Values*(this: var BlendFunc_Ruled; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_Ruled.hxx".}
proc Set*(this: var BlendFunc_Ruled; Param: Standard_Real) {.importcpp: "Set",
    header: "BlendFunc_Ruled.hxx".}
proc Set*(this: var BlendFunc_Ruled; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "BlendFunc_Ruled.hxx".}
proc GetTolerance*(this: BlendFunc_Ruled; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_Ruled.hxx".}
proc GetBounds*(this: BlendFunc_Ruled; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_Ruled.hxx".}
proc IsSolution*(this: var BlendFunc_Ruled; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_Ruled.hxx".}
proc GetMinimalDistance*(this: BlendFunc_Ruled): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_Ruled.hxx".}
proc PointOnS1*(this: BlendFunc_Ruled): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_Ruled.hxx".}
proc PointOnS2*(this: BlendFunc_Ruled): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_Ruled.hxx".}
proc IsTangencyPoint*(this: BlendFunc_Ruled): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Ruled.hxx".}
proc TangentOnS1*(this: BlendFunc_Ruled): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_Ruled.hxx".}
proc Tangent2dOnS1*(this: BlendFunc_Ruled): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_Ruled.hxx".}
proc TangentOnS2*(this: BlendFunc_Ruled): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_Ruled.hxx".}
proc Tangent2dOnS2*(this: BlendFunc_Ruled): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_Ruled.hxx".}
proc Tangent*(this: BlendFunc_Ruled; U1: Standard_Real; V1: Standard_Real;
             U2: Standard_Real; V2: Standard_Real; TgFirst: var gp_Vec;
             TgLast: var gp_Vec; NormFirst: var gp_Vec; NormLast: var gp_Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_Ruled.hxx".}
proc GetSection*(this: var BlendFunc_Ruled; Param: Standard_Real; U1: Standard_Real;
                V1: Standard_Real; U2: Standard_Real; V2: Standard_Real;
                tabP: var TColgp_Array1OfPnt; tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "GetSection", header: "BlendFunc_Ruled.hxx".}
proc IsRational*(this: BlendFunc_Ruled): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_Ruled.hxx".}
proc GetSectionSize*(this: BlendFunc_Ruled): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_Ruled.hxx".}
proc GetMinimalWeight*(this: BlendFunc_Ruled; Weigths: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_Ruled.hxx".}
proc NbIntervals*(this: BlendFunc_Ruled; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_Ruled.hxx".}
proc Intervals*(this: BlendFunc_Ruled; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_Ruled.hxx".}
proc GetShape*(this: var BlendFunc_Ruled; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BlendFunc_Ruled.hxx".}
proc GetTolerance*(this: BlendFunc_Ruled; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_Ruled.hxx".}
proc Knots*(this: var BlendFunc_Ruled; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_Ruled.hxx".}
proc Mults*(this: var BlendFunc_Ruled; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_Ruled.hxx".}
proc Section*(this: var BlendFunc_Ruled; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc Section*(this: var BlendFunc_Ruled; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc Section*(this: var BlendFunc_Ruled; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BlendFunc_Ruled.hxx".}
proc AxeRot*(this: var BlendFunc_Ruled; Prm: Standard_Real): gp_Ax1 {.
    importcpp: "AxeRot", header: "BlendFunc_Ruled.hxx".}
proc Resolution*(this: BlendFunc_Ruled; IC2d: Standard_Integer; Tol: Standard_Real;
                TolU: var Standard_Real; TolV: var Standard_Real) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_Ruled.hxx".}