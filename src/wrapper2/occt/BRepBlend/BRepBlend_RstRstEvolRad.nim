##  Created on: 1997-02-06
##  Created by: Laurent BOURESCHE
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
  ../Convert/Convert_ParameterisationType, ../Blend/Blend_RstRstFunction,
  ../math/math_Vector, ../Blend/Blend_DecrochStatus,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
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
  BRepBlend_RstRstEvolRad* {.importcpp: "BRepBlend_RstRstEvolRad",
                            header: "BRepBlend_RstRstEvolRad.hxx", bycopy.} = object of Blend_RstRstFunction


proc constructBRepBlend_RstRstEvolRad*(Surf1: handle[Adaptor3d_HSurface];
                                      Rst1: handle[Adaptor2d_HCurve2d];
                                      Surf2: handle[Adaptor3d_HSurface];
                                      Rst2: handle[Adaptor2d_HCurve2d];
                                      CGuide: handle[Adaptor3d_HCurve];
                                      Evol: handle[Law_Function]): BRepBlend_RstRstEvolRad {.
    constructor, importcpp: "BRepBlend_RstRstEvolRad(@)",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc NbVariables*(this: BRepBlend_RstRstEvolRad): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "BRepBlend_RstRstEvolRad.hxx".}
proc NbEquations*(this: BRepBlend_RstRstEvolRad): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Value*(this: var BRepBlend_RstRstEvolRad; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Derivatives*(this: var BRepBlend_RstRstEvolRad; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc Values*(this: var BRepBlend_RstRstEvolRad; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_RstRstEvolRad; SurfRef1: handle[Adaptor3d_HSurface];
         RstRef1: handle[Adaptor2d_HCurve2d];
         SurfRef2: handle[Adaptor3d_HSurface]; RstRef2: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_RstRstEvolRad; Param: Standard_Real) {.importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_RstRstEvolRad; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetTolerance*(this: BRepBlend_RstRstEvolRad; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetBounds*(this: BRepBlend_RstRstEvolRad; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc IsSolution*(this: var BRepBlend_RstRstEvolRad; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetMinimalDistance*(this: BRepBlend_RstRstEvolRad): Standard_Real {.
    noSideEffect, importcpp: "GetMinimalDistance",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc PointOnRst1*(this: BRepBlend_RstRstEvolRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc PointOnRst2*(this: BRepBlend_RstRstEvolRad): gp_Pnt {.noSideEffect,
    importcpp: "PointOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Pnt2dOnRst1*(this: BRepBlend_RstRstEvolRad): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Pnt2dOnRst2*(this: BRepBlend_RstRstEvolRad): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc ParameterOnRst1*(this: BRepBlend_RstRstEvolRad): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc ParameterOnRst2*(this: BRepBlend_RstRstEvolRad): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc IsTangencyPoint*(this: BRepBlend_RstRstEvolRad): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangencyPoint",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc TangentOnRst1*(this: BRepBlend_RstRstEvolRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Tangent2dOnRst1*(this: BRepBlend_RstRstEvolRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc TangentOnRst2*(this: BRepBlend_RstRstEvolRad): gp_Vec {.noSideEffect,
    importcpp: "TangentOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Tangent2dOnRst2*(this: BRepBlend_RstRstEvolRad): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Decroch*(this: BRepBlend_RstRstEvolRad; Sol: math_Vector; NRst1: var gp_Vec;
             TgRst1: var gp_Vec; NRst2: var gp_Vec; TgRst2: var gp_Vec): Blend_DecrochStatus {.
    noSideEffect, importcpp: "Decroch", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_RstRstEvolRad; Choix: Standard_Integer) {.
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Set*(this: var BRepBlend_RstRstEvolRad; TypeSection: BlendFunc_SectionShape) {.
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc CenterCircleRst1Rst2*(this: BRepBlend_RstRstEvolRad; PtRst1: gp_Pnt;
                          PtRst2: gp_Pnt; np: gp_Vec; Center: var gp_Pnt;
                          VdMed: var gp_Vec): Standard_Boolean {.noSideEffect,
    importcpp: "CenterCircleRst1Rst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_RstRstEvolRad; Param: Standard_Real;
             U: Standard_Real; V: Standard_Real; Pdeb: var Standard_Real;
             Pfin: var Standard_Real; C: var gp_Circ) {.importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc IsRational*(this: BRepBlend_RstRstEvolRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetSectionSize*(this: BRepBlend_RstRstEvolRad): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetMinimalWeight*(this: BRepBlend_RstRstEvolRad;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_RstRstEvolRad.hxx".}
proc NbIntervals*(this: BRepBlend_RstRstEvolRad; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Intervals*(this: BRepBlend_RstRstEvolRad; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetShape*(this: var BRepBlend_RstRstEvolRad; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc GetTolerance*(this: BRepBlend_RstRstEvolRad; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Knots*(this: var BRepBlend_RstRstEvolRad; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Mults*(this: var BRepBlend_RstRstEvolRad; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_RstRstEvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_RstRstEvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc Section*(this: var BRepBlend_RstRstEvolRad; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "BRepBlend_RstRstEvolRad.hxx".}
proc Resolution*(this: BRepBlend_RstRstEvolRad; IC2d: Standard_Integer;
                Tol: Standard_Real; TolU: var Standard_Real; TolV: var Standard_Real) {.
    noSideEffect, importcpp: "Resolution", header: "BRepBlend_RstRstEvolRad.hxx".}