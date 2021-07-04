##  Created on: 1996-01-22
##  Created by: Laurent PAINNOT
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
  ../Standard/Standard_Handle, ../Adaptor3d/Adaptor3d_CurvePtr,
  ../Adaptor3d/Adaptor3d_SurfacePtr, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../TColStd/TColStd_SequenceOfReal, Extrema_SequenceOfPOnCurv,
  Extrema_SequenceOfPOnSurf, ../Standard/Standard_Boolean,
  ../math/math_FunctionSetWithDerivatives, ../Standard/Standard_Integer,
  ../math/math_Vector

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of math_Matrix"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_FuncExtCS* {.importcpp: "Extrema_FuncExtCS",
                      header: "Extrema_FuncExtCS.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructExtrema_FuncExtCS*(): Extrema_FuncExtCS {.constructor,
    importcpp: "Extrema_FuncExtCS(@)", header: "Extrema_FuncExtCS.hxx".}
proc constructExtrema_FuncExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface): Extrema_FuncExtCS {.
    constructor, importcpp: "Extrema_FuncExtCS(@)", header: "Extrema_FuncExtCS.hxx".}
proc Initialize*(this: var Extrema_FuncExtCS; C: Adaptor3d_Curve; S: Adaptor3d_Surface) {.
    importcpp: "Initialize", header: "Extrema_FuncExtCS.hxx".}
proc NbVariables*(this: Extrema_FuncExtCS): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_FuncExtCS.hxx".}
proc NbEquations*(this: Extrema_FuncExtCS): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_FuncExtCS.hxx".}
proc Value*(this: var Extrema_FuncExtCS; UV: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_FuncExtCS.hxx".}
proc Derivatives*(this: var Extrema_FuncExtCS; UV: math_Vector; DF: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Extrema_FuncExtCS.hxx".}
proc Values*(this: var Extrema_FuncExtCS; UV: math_Vector; F: var math_Vector;
            DF: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_FuncExtCS.hxx".}
proc GetStateNumber*(this: var Extrema_FuncExtCS): Standard_Integer {.
    importcpp: "GetStateNumber", header: "Extrema_FuncExtCS.hxx".}
proc NbExt*(this: Extrema_FuncExtCS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_FuncExtCS.hxx".}
proc SquareDistance*(this: Extrema_FuncExtCS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_FuncExtCS.hxx".}
proc PointOnCurve*(this: Extrema_FuncExtCS; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "PointOnCurve", header: "Extrema_FuncExtCS.hxx".}
proc PointOnSurface*(this: Extrema_FuncExtCS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "PointOnSurface", header: "Extrema_FuncExtCS.hxx".}