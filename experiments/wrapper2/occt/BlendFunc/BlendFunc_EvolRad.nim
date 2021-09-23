##  Created on: 1993-12-20
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
  ../gp/gp_Vec, ../gp/gp_Vec2d, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../math/math_Vector, ../math/math_Matrix,
  BlendFunc_Tensor, BlendFunc_SectionShape,
  ../Convert/Convert_ParameterisationType, ../Blend/Blend_Function,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BlendFunc_EvolRad* {.importcpp: "BlendFunc_EvolRad",
                      header: "BlendFunc_EvolRad.hxx", bycopy.} = object of Blend_Function


proc constructBlendFunc_EvolRad*(S1: handle[Adaptor3d_HSurface];
                                S2: handle[Adaptor3d_HSurface];
                                C: handle[Adaptor3d_HCurve];
                                Law: handle[Law_Function]): BlendFunc_EvolRad {.
    constructor, importcpp: "BlendFunc_EvolRad(@)", header: "BlendFunc_EvolRad.hxx".}
proc NbEquations*(this: BlendFunc_EvolRad): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_EvolRad.hxx".}
proc Value*(this: var BlendFunc_EvolRad; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_EvolRad.hxx".}
proc Derivatives*(this: var BlendFunc_EvolRad; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_EvolRad.hxx".}
proc Values*(this: var BlendFunc_EvolRad; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_EvolRad.hxx".}
proc Set*(this: var BlendFunc_EvolRad; Param: Standard_Real) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc Set*(this: var BlendFunc_EvolRad; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc GetTolerance*(this: BlendFunc_EvolRad; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_EvolRad.hxx".}
proc GetBounds*(this: BlendFunc_EvolRad; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_EvolRad.hxx".}
proc IsSolution*(this: var BlendFunc_EvolRad; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_EvolRad.hxx".}
proc GetMinimalDistance*(this: BlendFunc_EvolRad): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_EvolRad.hxx".}
proc PointOnS1*(this: BlendFunc_EvolRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_EvolRad.hxx".}
proc PointOnS2*(this: BlendFunc_EvolRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_EvolRad.hxx".}
proc IsTangencyPoint*(this: BlendFunc_EvolRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_EvolRad.hxx".}
proc TangentOnS1*(this: BlendFunc_EvolRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_EvolRad.hxx".}
proc Tangent2dOnS1*(this: BlendFunc_EvolRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_EvolRad.hxx".}
proc TangentOnS2*(this: BlendFunc_EvolRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_EvolRad.hxx".}
proc Tangent2dOnS2*(this: BlendFunc_EvolRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_EvolRad.hxx".}
proc Tangent*(this: BlendFunc_EvolRad; U1: Standard_Real; V1: Standard_Real;
             U2: Standard_Real; V2: Standard_Real; TgFirst: var gp_Vec;
             TgLast: var gp_Vec; NormFirst: var gp_Vec; NormLast: var gp_Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_EvolRad.hxx".}
proc TwistOnS1*(this: BlendFunc_EvolRad): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "BlendFunc_EvolRad.hxx".}
proc TwistOnS2*(this: BlendFunc_EvolRad): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "BlendFunc_EvolRad.hxx".}
proc Set*(this: var BlendFunc_EvolRad; Choix: Standard_Integer) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc Set*(this: var BlendFunc_EvolRad; TypeSection: BlendFunc_SectionShape) {.
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc Section*(this: var BlendFunc_EvolRad; Param: Standard_Real; U1: Standard_Real;
             V1: Standard_Real; U2: Standard_Real; V2: Standard_Real;
             Pdeb: var Standard_Real; Pfin: var Standard_Real; C: var gp_Circ) {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc IsRational*(this: BlendFunc_EvolRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_EvolRad.hxx".}
proc GetSectionSize*(this: BlendFunc_EvolRad): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_EvolRad.hxx".}
proc GetMinimalWeight*(this: BlendFunc_EvolRad; Weigths: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_EvolRad.hxx".}
proc NbIntervals*(this: BlendFunc_EvolRad; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_EvolRad.hxx".}
proc Intervals*(this: BlendFunc_EvolRad; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_EvolRad.hxx".}
proc GetShape*(this: var BlendFunc_EvolRad; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BlendFunc_EvolRad.hxx".}
proc GetTolerance*(this: BlendFunc_EvolRad; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_EvolRad.hxx".}
proc Knots*(this: var BlendFunc_EvolRad; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_EvolRad.hxx".}
proc Mults*(this: var BlendFunc_EvolRad; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_EvolRad.hxx".}
proc Section*(this: var BlendFunc_EvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc Section*(this: var BlendFunc_EvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc Section*(this: var BlendFunc_EvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BlendFunc_EvolRad.hxx".}
proc Resolution*(this: BlendFunc_EvolRad; IC2d: Standard_Integer; Tol: Standard_Real;
                TolU: var Standard_Real; TolV: var Standard_Real) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_EvolRad.hxx".}