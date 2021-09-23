##  Created on: 1993-09-13
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
  ../Standard/Standard_Handle, Blend_AppFunction, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  Blend_CSFunction* {.importcpp: "Blend_CSFunction",
                     header: "Blend_CSFunction.hxx", bycopy.} = object of Blend_AppFunction ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## 3
                                                                                     ## (default
                                                                                     ## value).
                                                                                     ## Can
                                                                                     ## be
                                                                                     ## redefined.


proc NbVariables*(this: Blend_CSFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_CSFunction.hxx".}
proc NbEquations*(this: Blend_CSFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_CSFunction.hxx".}
proc Value*(this: var Blend_CSFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Blend_CSFunction.hxx".}
proc Derivatives*(this: var Blend_CSFunction; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Blend_CSFunction.hxx".}
proc Values*(this: var Blend_CSFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Blend_CSFunction.hxx".}
proc Set*(this: var Blend_CSFunction; Param: Standard_Real) {.importcpp: "Set",
    header: "Blend_CSFunction.hxx".}
proc Set*(this: var Blend_CSFunction; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "Blend_CSFunction.hxx".}
proc GetTolerance*(this: Blend_CSFunction; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "Blend_CSFunction.hxx".}
proc GetBounds*(this: Blend_CSFunction; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "Blend_CSFunction.hxx".}
proc IsSolution*(this: var Blend_CSFunction; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "Blend_CSFunction.hxx".}
proc GetMinimalDistance*(this: Blend_CSFunction): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_CSFunction.hxx".}
proc Pnt1*(this: Blend_CSFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt1",
    header: "Blend_CSFunction.hxx".}
proc Pnt2*(this: Blend_CSFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt2",
    header: "Blend_CSFunction.hxx".}
proc PointOnS*(this: Blend_CSFunction): gp_Pnt {.noSideEffect, importcpp: "PointOnS",
    header: "Blend_CSFunction.hxx".}
proc PointOnC*(this: Blend_CSFunction): gp_Pnt {.noSideEffect, importcpp: "PointOnC",
    header: "Blend_CSFunction.hxx".}
proc Pnt2d*(this: Blend_CSFunction): gp_Pnt2d {.noSideEffect, importcpp: "Pnt2d",
    header: "Blend_CSFunction.hxx".}
proc ParameterOnC*(this: Blend_CSFunction): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnC", header: "Blend_CSFunction.hxx".}
proc IsTangencyPoint*(this: Blend_CSFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_CSFunction.hxx".}
proc TangentOnS*(this: Blend_CSFunction): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "Blend_CSFunction.hxx".}
proc Tangent2d*(this: Blend_CSFunction): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2d", header: "Blend_CSFunction.hxx".}
proc TangentOnC*(this: Blend_CSFunction): gp_Vec {.noSideEffect,
    importcpp: "TangentOnC", header: "Blend_CSFunction.hxx".}
proc Tangent*(this: Blend_CSFunction; U: Standard_Real; V: Standard_Real;
             TgS: var gp_Vec; NormS: var gp_Vec) {.noSideEffect, importcpp: "Tangent",
    header: "Blend_CSFunction.hxx".}
proc GetShape*(this: var Blend_CSFunction; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "Blend_CSFunction.hxx".}
proc GetTolerance*(this: Blend_CSFunction; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "Blend_CSFunction.hxx".}
proc Knots*(this: var Blend_CSFunction; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "Blend_CSFunction.hxx".}
proc Mults*(this: var Blend_CSFunction; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "Blend_CSFunction.hxx".}
proc Section*(this: var Blend_CSFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_CSFunction.hxx".}
proc Section*(this: var Blend_CSFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "Blend_CSFunction.hxx".}
proc Section*(this: var Blend_CSFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_CSFunction.hxx".}