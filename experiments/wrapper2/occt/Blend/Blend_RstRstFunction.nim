##  Created by: Jacques  GOUSSARD Author:    Laurent    BOURESCHE --
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
  ../Standard/Standard_Handle, Blend_AppFunction, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector, ../Standard/Standard_Real,
  Blend_DecrochStatus, ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  Blend_RstRstFunction* {.importcpp: "Blend_RstRstFunction",
                         header: "Blend_RstRstFunction.hxx", bycopy.} = object of Blend_AppFunction ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## 2
                                                                                             ## (default
                                                                                             ## value).
                                                                                             ## Can
                                                                                             ## be
                                                                                             ## redefined.


proc NbVariables*(this: Blend_RstRstFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_RstRstFunction.hxx".}
proc NbEquations*(this: Blend_RstRstFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_RstRstFunction.hxx".}
proc Value*(this: var Blend_RstRstFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Blend_RstRstFunction.hxx".}
proc Derivatives*(this: var Blend_RstRstFunction; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Blend_RstRstFunction.hxx".}
proc Values*(this: var Blend_RstRstFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Blend_RstRstFunction.hxx".}
proc Set*(this: var Blend_RstRstFunction; Param: Standard_Real) {.importcpp: "Set",
    header: "Blend_RstRstFunction.hxx".}
proc Set*(this: var Blend_RstRstFunction; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "Blend_RstRstFunction.hxx".}
proc GetTolerance*(this: Blend_RstRstFunction; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "Blend_RstRstFunction.hxx".}
proc GetBounds*(this: Blend_RstRstFunction; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "Blend_RstRstFunction.hxx".}
proc IsSolution*(this: var Blend_RstRstFunction; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "Blend_RstRstFunction.hxx".}
proc GetMinimalDistance*(this: Blend_RstRstFunction): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_RstRstFunction.hxx".}
proc Pnt1*(this: Blend_RstRstFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt1",
    header: "Blend_RstRstFunction.hxx".}
proc Pnt2*(this: Blend_RstRstFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt2",
    header: "Blend_RstRstFunction.hxx".}
proc PointOnRst1*(this: Blend_RstRstFunction): gp_Pnt {.noSideEffect,
    importcpp: "PointOnRst1", header: "Blend_RstRstFunction.hxx".}
proc PointOnRst2*(this: Blend_RstRstFunction): gp_Pnt {.noSideEffect,
    importcpp: "PointOnRst2", header: "Blend_RstRstFunction.hxx".}
proc Pnt2dOnRst1*(this: Blend_RstRstFunction): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst1", header: "Blend_RstRstFunction.hxx".}
proc Pnt2dOnRst2*(this: Blend_RstRstFunction): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst2", header: "Blend_RstRstFunction.hxx".}
proc ParameterOnRst1*(this: Blend_RstRstFunction): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnRst1", header: "Blend_RstRstFunction.hxx".}
proc ParameterOnRst2*(this: Blend_RstRstFunction): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnRst2", header: "Blend_RstRstFunction.hxx".}
proc IsTangencyPoint*(this: Blend_RstRstFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_RstRstFunction.hxx".}
proc TangentOnRst1*(this: Blend_RstRstFunction): gp_Vec {.noSideEffect,
    importcpp: "TangentOnRst1", header: "Blend_RstRstFunction.hxx".}
proc Tangent2dOnRst1*(this: Blend_RstRstFunction): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst1", header: "Blend_RstRstFunction.hxx".}
proc TangentOnRst2*(this: Blend_RstRstFunction): gp_Vec {.noSideEffect,
    importcpp: "TangentOnRst2", header: "Blend_RstRstFunction.hxx".}
proc Tangent2dOnRst2*(this: Blend_RstRstFunction): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst2", header: "Blend_RstRstFunction.hxx".}
proc Decroch*(this: Blend_RstRstFunction; Sol: math_Vector; NRst1: var gp_Vec;
             TgRst1: var gp_Vec; NRst2: var gp_Vec; TgRst2: var gp_Vec): Blend_DecrochStatus {.
    noSideEffect, importcpp: "Decroch", header: "Blend_RstRstFunction.hxx".}
proc IsRational*(this: Blend_RstRstFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Blend_RstRstFunction.hxx".}
proc GetSectionSize*(this: Blend_RstRstFunction): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "Blend_RstRstFunction.hxx".}
proc GetMinimalWeight*(this: Blend_RstRstFunction;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "Blend_RstRstFunction.hxx".}
proc NbIntervals*(this: Blend_RstRstFunction; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Blend_RstRstFunction.hxx".}
proc Intervals*(this: Blend_RstRstFunction; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Blend_RstRstFunction.hxx".}
proc GetShape*(this: var Blend_RstRstFunction; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "Blend_RstRstFunction.hxx".}
proc GetTolerance*(this: Blend_RstRstFunction; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "Blend_RstRstFunction.hxx".}
proc Knots*(this: var Blend_RstRstFunction; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "Blend_RstRstFunction.hxx".}
proc Mults*(this: var Blend_RstRstFunction; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "Blend_RstRstFunction.hxx".}
proc Section*(this: var Blend_RstRstFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "Blend_RstRstFunction.hxx".}
proc Section*(this: var Blend_RstRstFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_RstRstFunction.hxx".}
proc Section*(this: var Blend_RstRstFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_RstRstFunction.hxx".}