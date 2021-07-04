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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, ../gp/gp_Vec,
  ../gp/gp_Vec2d, ../Standard/Standard_Integer, BlendFunc_SectionShape,
  ../Convert/Convert_ParameterisationType, ../Blend/Blend_CSFunction,
  ../math/math_Vector, ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BlendFunc_CSConstRad* {.importcpp: "BlendFunc_CSConstRad",
                         header: "BlendFunc_CSConstRad.hxx", bycopy.} = object of Blend_CSFunction


proc constructBlendFunc_CSConstRad*(S: handle[Adaptor3d_HSurface];
                                   C: handle[Adaptor3d_HCurve];
                                   CGuide: handle[Adaptor3d_HCurve]): BlendFunc_CSConstRad {.
    constructor, importcpp: "BlendFunc_CSConstRad(@)",
    header: "BlendFunc_CSConstRad.hxx".}
proc NbEquations*(this: BlendFunc_CSConstRad): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_CSConstRad.hxx".}
proc Value*(this: var BlendFunc_CSConstRad; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_CSConstRad.hxx".}
proc Derivatives*(this: var BlendFunc_CSConstRad; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_CSConstRad.hxx".}
proc Values*(this: var BlendFunc_CSConstRad; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_CSConstRad.hxx".}
proc Set*(this: var BlendFunc_CSConstRad; Param: Standard_Real) {.importcpp: "Set",
    header: "BlendFunc_CSConstRad.hxx".}
proc Set*(this: var BlendFunc_CSConstRad; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "BlendFunc_CSConstRad.hxx".}
proc GetTolerance*(this: BlendFunc_CSConstRad; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_CSConstRad.hxx".}
proc GetBounds*(this: BlendFunc_CSConstRad; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_CSConstRad.hxx".}
proc IsSolution*(this: var BlendFunc_CSConstRad; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_CSConstRad.hxx".}
proc PointOnS*(this: BlendFunc_CSConstRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS", header: "BlendFunc_CSConstRad.hxx".}
proc PointOnC*(this: BlendFunc_CSConstRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnC", header: "BlendFunc_CSConstRad.hxx".}
proc Pnt2d*(this: BlendFunc_CSConstRad): gp_Pnt2d {.noSideEffect, importcpp: "Pnt2d",
    header: "BlendFunc_CSConstRad.hxx".}
proc ParameterOnC*(this: BlendFunc_CSConstRad): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnC", header: "BlendFunc_CSConstRad.hxx".}
proc IsTangencyPoint*(this: BlendFunc_CSConstRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_CSConstRad.hxx".}
proc TangentOnS*(this: BlendFunc_CSConstRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BlendFunc_CSConstRad.hxx".}
proc Tangent2d*(this: BlendFunc_CSConstRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2d", header: "BlendFunc_CSConstRad.hxx".}
proc TangentOnC*(this: BlendFunc_CSConstRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnC", header: "BlendFunc_CSConstRad.hxx".}
proc Tangent*(this: BlendFunc_CSConstRad; U: Standard_Real; V: Standard_Real;
             TgS: var gp_Vec; NormS: var gp_Vec) {.noSideEffect, importcpp: "Tangent",
    header: "BlendFunc_CSConstRad.hxx".}
proc Set*(this: var BlendFunc_CSConstRad; Radius: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BlendFunc_CSConstRad.hxx".}
proc Set*(this: var BlendFunc_CSConstRad; TypeSection: BlendFunc_SectionShape) {.
    importcpp: "Set", header: "BlendFunc_CSConstRad.hxx".}
proc Section*(this: var BlendFunc_CSConstRad; Param: Standard_Real; U: Standard_Real;
             V: Standard_Real; W: Standard_Real; Pdeb: var Standard_Real;
             Pfin: var Standard_Real; C: var gp_Circ) {.importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc Section*(this: var BlendFunc_CSConstRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_CSConstRad.hxx".}
proc GetSection*(this: var BlendFunc_CSConstRad; Param: Standard_Real;
                U: Standard_Real; V: Standard_Real; W: Standard_Real;
                tabP: var TColgp_Array1OfPnt; tabV: var TColgp_Array1OfVec): Standard_Boolean {.
    importcpp: "GetSection", header: "BlendFunc_CSConstRad.hxx".}
proc IsRational*(this: BlendFunc_CSConstRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_CSConstRad.hxx".}
proc GetSectionSize*(this: BlendFunc_CSConstRad): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_CSConstRad.hxx".}
proc GetMinimalWeight*(this: BlendFunc_CSConstRad;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BlendFunc_CSConstRad.hxx".}
proc NbIntervals*(this: BlendFunc_CSConstRad; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_CSConstRad.hxx".}
proc Intervals*(this: BlendFunc_CSConstRad; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BlendFunc_CSConstRad.hxx".}
proc GetShape*(this: var BlendFunc_CSConstRad; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BlendFunc_CSConstRad.hxx".}
proc GetTolerance*(this: BlendFunc_CSConstRad; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_CSConstRad.hxx".}
proc Knots*(this: var BlendFunc_CSConstRad; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_CSConstRad.hxx".}
proc Mults*(this: var BlendFunc_CSConstRad; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_CSConstRad.hxx".}
proc Section*(this: var BlendFunc_CSConstRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BlendFunc_CSConstRad.hxx".}
proc Section*(this: var BlendFunc_CSConstRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc Resolution*(this: BlendFunc_CSConstRad; IC2d: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "BlendFunc_CSConstRad.hxx".}