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
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfInteger, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  Blend_SurfRstFunction* {.importcpp: "Blend_SurfRstFunction",
                          header: "Blend_SurfRstFunction.hxx", bycopy.} = object of Blend_AppFunction ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## 3
                                                                                               ## (default
                                                                                               ## value).
                                                                                               ## Can
                                                                                               ## be
                                                                                               ## redefined.


proc NbVariables*(this: Blend_SurfRstFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_SurfRstFunction.hxx".}
proc NbEquations*(this: Blend_SurfRstFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_SurfRstFunction.hxx".}
proc Value*(this: var Blend_SurfRstFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Blend_SurfRstFunction.hxx".}
proc Derivatives*(this: var Blend_SurfRstFunction; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Blend_SurfRstFunction.hxx".}
proc Values*(this: var Blend_SurfRstFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Blend_SurfRstFunction.hxx".}
proc Set*(this: var Blend_SurfRstFunction; Param: Standard_Real) {.importcpp: "Set",
    header: "Blend_SurfRstFunction.hxx".}
proc Set*(this: var Blend_SurfRstFunction; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "Blend_SurfRstFunction.hxx".}
proc GetTolerance*(this: Blend_SurfRstFunction; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "Blend_SurfRstFunction.hxx".}
proc GetBounds*(this: Blend_SurfRstFunction; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "Blend_SurfRstFunction.hxx".}
proc IsSolution*(this: var Blend_SurfRstFunction; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "Blend_SurfRstFunction.hxx".}
proc GetMinimalDistance*(this: Blend_SurfRstFunction): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_SurfRstFunction.hxx".}
proc Pnt1*(this: Blend_SurfRstFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt1",
    header: "Blend_SurfRstFunction.hxx".}
proc Pnt2*(this: Blend_SurfRstFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt2",
    header: "Blend_SurfRstFunction.hxx".}
proc PointOnS*(this: Blend_SurfRstFunction): gp_Pnt {.noSideEffect,
    importcpp: "PointOnS", header: "Blend_SurfRstFunction.hxx".}
proc PointOnRst*(this: Blend_SurfRstFunction): gp_Pnt {.noSideEffect,
    importcpp: "PointOnRst", header: "Blend_SurfRstFunction.hxx".}
proc Pnt2dOnS*(this: Blend_SurfRstFunction): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnS", header: "Blend_SurfRstFunction.hxx".}
proc Pnt2dOnRst*(this: Blend_SurfRstFunction): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst", header: "Blend_SurfRstFunction.hxx".}
proc ParameterOnRst*(this: Blend_SurfRstFunction): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnRst", header: "Blend_SurfRstFunction.hxx".}
proc IsTangencyPoint*(this: Blend_SurfRstFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_SurfRstFunction.hxx".}
proc TangentOnS*(this: Blend_SurfRstFunction): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "Blend_SurfRstFunction.hxx".}
proc Tangent2dOnS*(this: Blend_SurfRstFunction): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS", header: "Blend_SurfRstFunction.hxx".}
proc TangentOnRst*(this: Blend_SurfRstFunction): gp_Vec {.noSideEffect,
    importcpp: "TangentOnRst", header: "Blend_SurfRstFunction.hxx".}
proc Tangent2dOnRst*(this: Blend_SurfRstFunction): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst", header: "Blend_SurfRstFunction.hxx".}
proc Decroch*(this: Blend_SurfRstFunction; Sol: math_Vector; NS: var gp_Vec;
             TgS: var gp_Vec): Standard_Boolean {.noSideEffect, importcpp: "Decroch",
    header: "Blend_SurfRstFunction.hxx".}
proc IsRational*(this: Blend_SurfRstFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Blend_SurfRstFunction.hxx".}
proc GetSectionSize*(this: Blend_SurfRstFunction): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "Blend_SurfRstFunction.hxx".}
proc GetMinimalWeight*(this: Blend_SurfRstFunction;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "Blend_SurfRstFunction.hxx".}
proc NbIntervals*(this: Blend_SurfRstFunction; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Blend_SurfRstFunction.hxx".}
proc Intervals*(this: Blend_SurfRstFunction; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Blend_SurfRstFunction.hxx".}
proc GetShape*(this: var Blend_SurfRstFunction; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "Blend_SurfRstFunction.hxx".}
proc GetTolerance*(this: Blend_SurfRstFunction; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "Blend_SurfRstFunction.hxx".}
proc Knots*(this: var Blend_SurfRstFunction; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "Blend_SurfRstFunction.hxx".}
proc Mults*(this: var Blend_SurfRstFunction; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "Blend_SurfRstFunction.hxx".}
proc Section*(this: var Blend_SurfRstFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_SurfRstFunction.hxx".}
proc Section*(this: var Blend_SurfRstFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_SurfRstFunction.hxx".}
proc Section*(this: var Blend_SurfRstFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "Blend_SurfRstFunction.hxx".}