##  Created on: 1991-07-24
##  Created by: Michel CHAUVAT
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc, ../gp/gp_Pnt,
  ../Adaptor3d/Adaptor3d_SurfacePtr, ../Standard/Standard_Real,
  ../TColStd/TColStd_SequenceOfReal, Extrema_SequenceOfPOnSurf,
  ../Standard/Standard_Boolean, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../math/math_Vector

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of math_Matrix"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_FuncPSNorm* {.importcpp: "Extrema_FuncPSNorm",
                       header: "Extrema_FuncPSNorm.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructExtrema_FuncPSNorm*(): Extrema_FuncPSNorm {.constructor,
    importcpp: "Extrema_FuncPSNorm(@)", header: "Extrema_FuncPSNorm.hxx".}
proc constructExtrema_FuncPSNorm*(P: gp_Pnt; S: Adaptor3d_Surface): Extrema_FuncPSNorm {.
    constructor, importcpp: "Extrema_FuncPSNorm(@)",
    header: "Extrema_FuncPSNorm.hxx".}
proc Initialize*(this: var Extrema_FuncPSNorm; S: Adaptor3d_Surface) {.
    importcpp: "Initialize", header: "Extrema_FuncPSNorm.hxx".}
proc SetPoint*(this: var Extrema_FuncPSNorm; P: gp_Pnt) {.importcpp: "SetPoint",
    header: "Extrema_FuncPSNorm.hxx".}
proc NbVariables*(this: Extrema_FuncPSNorm): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_FuncPSNorm.hxx".}
proc NbEquations*(this: Extrema_FuncPSNorm): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_FuncPSNorm.hxx".}
proc Value*(this: var Extrema_FuncPSNorm; UV: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_FuncPSNorm.hxx".}
proc Derivatives*(this: var Extrema_FuncPSNorm; UV: math_Vector; DF: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Extrema_FuncPSNorm.hxx".}
proc Values*(this: var Extrema_FuncPSNorm; UV: math_Vector; F: var math_Vector;
            DF: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_FuncPSNorm.hxx".}
proc GetStateNumber*(this: var Extrema_FuncPSNorm): Standard_Integer {.
    importcpp: "GetStateNumber", header: "Extrema_FuncPSNorm.hxx".}
proc NbExt*(this: Extrema_FuncPSNorm): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_FuncPSNorm.hxx".}
proc SquareDistance*(this: Extrema_FuncPSNorm; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_FuncPSNorm.hxx".}
proc Point*(this: Extrema_FuncPSNorm; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "Point", header: "Extrema_FuncPSNorm.hxx".}