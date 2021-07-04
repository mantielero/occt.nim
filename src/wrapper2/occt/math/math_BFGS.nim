##  Created on: 1991-05-14
##  Created by: Laurent PAINNOT
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Status,
  math_Vector, ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  math_BFGS* {.importcpp: "math_BFGS", header: "math_BFGS.hxx", bycopy.} = object ## !
                                                                          ## Initializes the
                                                                          ## computation of the
                                                                          ## minimum of a
                                                                          ## function with
                                                                          ## !
                                                                          ## NbVariables.
                                                                          ## !
                                                                          ## Tolerance, ZEPS and
                                                                          ## NbIterations are
                                                                          ## described in the method
                                                                          ## Perform.
                                                                          ## !
                                                                          ## Warning:
                                                                          ## ! A call to the
                                                                          ## Perform method must be made after this
                                                                          ## !
                                                                          ## initialization to
                                                                          ## effectively
                                                                          ## compute the
                                                                          ## minimum of the
                                                                          ## !
                                                                          ## function F.


proc constructmath_BFGS*(NbVariables: Standard_Integer;
                        Tolerance: Standard_Real = 1.0e-8;
                        NbIterations: Standard_Integer = 200;
                        ZEPS: Standard_Real = 1.0e-12): math_BFGS {.constructor,
    importcpp: "math_BFGS(@)", header: "math_BFGS.hxx".}
proc destroymath_BFGS*(this: var math_BFGS) {.importcpp: "#.~math_BFGS()",
    header: "math_BFGS.hxx".}
proc SetBoundary*(this: var math_BFGS; theLeftBorder: math_Vector;
                 theRightBorder: math_Vector) {.importcpp: "SetBoundary",
    header: "math_BFGS.hxx".}
proc Perform*(this: var math_BFGS; F: var math_MultipleVarFunctionWithGradient;
             StartingPoint: math_Vector) {.importcpp: "Perform",
    header: "math_BFGS.hxx".}
proc IsSolutionReached*(this: math_BFGS;
                       F: var math_MultipleVarFunctionWithGradient): Standard_Boolean {.
    noSideEffect, importcpp: "IsSolutionReached", header: "math_BFGS.hxx".}
proc IsDone*(this: math_BFGS): Standard_Boolean {.noSideEffect, importcpp: "IsDone",
    header: "math_BFGS.hxx".}
proc Location*(this: math_BFGS): math_Vector {.noSideEffect, importcpp: "Location",
    header: "math_BFGS.hxx".}
proc Location*(this: math_BFGS; Loc: var math_Vector) {.noSideEffect,
    importcpp: "Location", header: "math_BFGS.hxx".}
proc Minimum*(this: math_BFGS): Standard_Real {.noSideEffect, importcpp: "Minimum",
    header: "math_BFGS.hxx".}
proc Gradient*(this: math_BFGS): math_Vector {.noSideEffect, importcpp: "Gradient",
    header: "math_BFGS.hxx".}
proc Gradient*(this: math_BFGS; Grad: var math_Vector) {.noSideEffect,
    importcpp: "Gradient", header: "math_BFGS.hxx".}
proc NbIterations*(this: math_BFGS): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_BFGS.hxx".}
proc Dump*(this: math_BFGS; o: var Standard_OStream) {.noSideEffect, importcpp: "Dump",
    header: "math_BFGS.hxx".}