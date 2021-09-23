##  Created on: 1997-07-28
##  Created by: Jerome LEMONIER
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Adaptor3d/Adaptor3d_CurveOnSurface,
  ../gp/gp_Pnt, ../gp/gp_Pnt2d, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../gp/gp_Vec, ../gp/gp_Vec2d,
  ../Standard/Standard_Integer, ../BlendFunc/BlendFunc_SectionShape,
  ../Convert/Convert_ParameterisationType, ../Blend/Blend_SurfRstFunction,
  ../math/math_Vector, ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BRepBlend_SurfRstEvolRad* {.importcpp: "BRepBlend_SurfRstEvolRad",
                             header: "BRepBlend_SurfRstEvolRad.hxx", bycopy.} = object of Blend_SurfRstFunction


proc constructBRepBlend_SurfRstEvolRad*(Surf: handle[Adaptor3d_HSurface];
                                       SurfRst: handle[Adaptor3d_HSurface];
                                       Rst: handle[Adaptor2d_HCurve2d];
                                       CGuide: handle[Adaptor3d_HCurve];
                                       Evol: handle[Law_Function]): BRepBlend_SurfRstEvolRad {.
    constructor, importcpp: "BRepBlend_SurfRstEvolRad(@)",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc NbVariables*(this: BRepBlend_SurfRstEvolRad): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc NbEquations*(this: BRepBlend_SurfRstEvolRad): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Value*(this: var BRepBlend_SurfRstEvolRad; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Derivatives*(this: var BRepBlend_SurfRstEvolRad; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Values*(this: var BRepBlend_SurfRstEvolRad; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_SurfRstEvolRad; SurfRef: handle[Adaptor3d_HSurface];
         RstRef: handle[Adaptor2d_HCurve2d]) {.importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_SurfRstEvolRad; Param: Standard_Real) {.
    importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_SurfRstEvolRad; First: Standard_Real;
         Last: Standard_Real) {.importcpp: "Set",
                              header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetTolerance*(this: BRepBlend_SurfRstEvolRad; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetBounds*(this: BRepBlend_SurfRstEvolRad; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc IsSolution*(this: var BRepBlend_SurfRstEvolRad; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetMinimalDistance*(this: BRepBlend_SurfRstEvolRad): Standard_Real {.
    noSideEffect, importcpp: "GetMinimalDistance",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc PointOnS*(this: BRepBlend_SurfRstEvolRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc PointOnRst*(this: BRepBlend_SurfRstEvolRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Pnt2dOnS*(this: BRepBlend_SurfRstEvolRad): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Pnt2dOnRst*(this: BRepBlend_SurfRstEvolRad): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc ParameterOnRst*(this: BRepBlend_SurfRstEvolRad): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc IsTangencyPoint*(this: BRepBlend_SurfRstEvolRad): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangencyPoint",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc TangentOnS*(this: BRepBlend_SurfRstEvolRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Tangent2dOnS*(this: BRepBlend_SurfRstEvolRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc TangentOnRst*(this: BRepBlend_SurfRstEvolRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Tangent2dOnRst*(this: BRepBlend_SurfRstEvolRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Decroch*(this: BRepBlend_SurfRstEvolRad; Sol: math_Vector; NS: var gp_Vec;
             TgS: var gp_Vec): Standard_Boolean {.noSideEffect, importcpp: "Decroch",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_SurfRstEvolRad; Choix: Standard_Integer) {.
    importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_SurfRstEvolRad; TypeSection: BlendFunc_SectionShape) {.
    importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_SurfRstEvolRad; Param: Standard_Real;
             U: Standard_Real; V: Standard_Real; W: Standard_Real;
             Pdeb: var Standard_Real; Pfin: var Standard_Real; C: var gp_Circ) {.
    importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc IsRational*(this: BRepBlend_SurfRstEvolRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetSectionSize*(this: BRepBlend_SurfRstEvolRad): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetMinimalWeight*(this: BRepBlend_SurfRstEvolRad;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc NbIntervals*(this: BRepBlend_SurfRstEvolRad; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Intervals*(this: BRepBlend_SurfRstEvolRad; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetShape*(this: var BRepBlend_SurfRstEvolRad; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc GetTolerance*(this: BRepBlend_SurfRstEvolRad; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Knots*(this: var BRepBlend_SurfRstEvolRad; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Mults*(this: var BRepBlend_SurfRstEvolRad; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_SurfRstEvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_SurfRstEvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_SurfRstEvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc Resolution*(this: BRepBlend_SurfRstEvolRad; IC2d: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "BRepBlend_SurfRstEvolRad.hxx".}