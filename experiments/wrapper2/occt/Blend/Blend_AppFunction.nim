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
  ../Standard/Standard_Handle, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ../math/math_Vector,
  ../Standard/Standard_Real, ../TColStd/TColStd_Array1OfReal,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of Blend_Point"
type
  Blend_AppFunction* {.importcpp: "Blend_AppFunction",
                      header: "Blend_AppFunction.hxx", bycopy.} = object of math_FunctionSetWithDerivatives ##
                                                                                                     ## !
                                                                                                     ## returns
                                                                                                     ## the
                                                                                                     ## number
                                                                                                     ## of
                                                                                                     ## variables
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## function.


proc NbVariables*(this: Blend_AppFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_AppFunction.hxx".}
proc NbEquations*(this: Blend_AppFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_AppFunction.hxx".}
proc Value*(this: var Blend_AppFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Blend_AppFunction.hxx".}
proc Derivatives*(this: var Blend_AppFunction; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Blend_AppFunction.hxx".}
proc Values*(this: var Blend_AppFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Blend_AppFunction.hxx".}
proc Set*(this: var Blend_AppFunction; Param: Standard_Real) {.importcpp: "Set",
    header: "Blend_AppFunction.hxx".}
proc Set*(this: var Blend_AppFunction; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "Set", header: "Blend_AppFunction.hxx".}
proc GetTolerance*(this: Blend_AppFunction; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "Blend_AppFunction.hxx".}
proc GetBounds*(this: Blend_AppFunction; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "Blend_AppFunction.hxx".}
proc IsSolution*(this: var Blend_AppFunction; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "Blend_AppFunction.hxx".}
proc GetMinimalDistance*(this: Blend_AppFunction): Standard_Real {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_AppFunction.hxx".}
proc Pnt1*(this: Blend_AppFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt1",
    header: "Blend_AppFunction.hxx".}
proc Pnt2*(this: Blend_AppFunction): gp_Pnt {.noSideEffect, importcpp: "Pnt2",
    header: "Blend_AppFunction.hxx".}
proc IsRational*(this: Blend_AppFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Blend_AppFunction.hxx".}
proc GetSectionSize*(this: Blend_AppFunction): Standard_Real {.noSideEffect,
    importcpp: "GetSectionSize", header: "Blend_AppFunction.hxx".}
proc GetMinimalWeight*(this: Blend_AppFunction; Weigths: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "Blend_AppFunction.hxx".}
proc NbIntervals*(this: Blend_AppFunction; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Blend_AppFunction.hxx".}
proc Intervals*(this: Blend_AppFunction; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Blend_AppFunction.hxx".}
proc GetShape*(this: var Blend_AppFunction; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.importcpp: "GetShape",
    header: "Blend_AppFunction.hxx".}
proc GetTolerance*(this: Blend_AppFunction; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var math_Vector; Tol1D: var math_Vector) {.noSideEffect,
    importcpp: "GetTolerance", header: "Blend_AppFunction.hxx".}
proc Knots*(this: var Blend_AppFunction; TKnots: var TColStd_Array1OfReal) {.
    importcpp: "Knots", header: "Blend_AppFunction.hxx".}
proc Mults*(this: var Blend_AppFunction; TMults: var TColStd_Array1OfInteger) {.
    importcpp: "Mults", header: "Blend_AppFunction.hxx".}
proc Section*(this: var Blend_AppFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_AppFunction.hxx".}
proc Section*(this: var Blend_AppFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.importcpp: "Section",
    header: "Blend_AppFunction.hxx".}
proc Section*(this: var Blend_AppFunction; P: Blend_Point;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             D2Poles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
             DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_AppFunction.hxx".}
proc Resolution*(this: Blend_AppFunction; IC2d: Standard_Integer; Tol: Standard_Real;
                TolU: var Standard_Real; TolV: var Standard_Real) {.noSideEffect,
    importcpp: "Resolution", header: "Blend_AppFunction.hxx".}
proc Parameter*(this: Blend_AppFunction; P: Blend_Point): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "Blend_AppFunction.hxx".}