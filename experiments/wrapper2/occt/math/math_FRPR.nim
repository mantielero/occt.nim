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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Vector,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, math_Status,
  ../Standard/Standard_OStream

discard "forward decl of Standard_DimensionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  math_FRPR* {.importcpp: "math_FRPR", header: "math_FRPR.hxx", bycopy.} = object ## !
                                                                          ## Initializes the
                                                                          ## computation of the
                                                                          ## minimum of F.
                                                                          ## !
                                                                          ## Warning:
                                                                          ## constructor does not
                                                                          ## perform
                                                                          ## computations.


proc constructmath_FRPR*(theFunction: math_MultipleVarFunctionWithGradient;
                        theTolerance: Standard_Real;
                        theNbIterations: Standard_Integer = 200;
                        theZEPS: Standard_Real = 1.0e-12): math_FRPR {.constructor,
    importcpp: "math_FRPR(@)", header: "math_FRPR.hxx".}
proc destroymath_FRPR*(this: var math_FRPR) {.importcpp: "#.~math_FRPR()",
    header: "math_FRPR.hxx".}
proc Perform*(this: var math_FRPR;
             theFunction: var math_MultipleVarFunctionWithGradient;
             theStartingPoint: math_Vector) {.importcpp: "Perform",
    header: "math_FRPR.hxx".}
proc IsSolutionReached*(this: var math_FRPR;
                       theFunction: var math_MultipleVarFunctionWithGradient): Standard_Boolean {.
    importcpp: "IsSolutionReached", header: "math_FRPR.hxx".}
proc IsDone*(this: math_FRPR): Standard_Boolean {.noSideEffect, importcpp: "IsDone",
    header: "math_FRPR.hxx".}
proc Location*(this: math_FRPR): math_Vector {.noSideEffect, importcpp: "Location",
    header: "math_FRPR.hxx".}
proc Location*(this: math_FRPR; Loc: var math_Vector) {.noSideEffect,
    importcpp: "Location", header: "math_FRPR.hxx".}
proc Minimum*(this: math_FRPR): Standard_Real {.noSideEffect, importcpp: "Minimum",
    header: "math_FRPR.hxx".}
proc Gradient*(this: math_FRPR): math_Vector {.noSideEffect, importcpp: "Gradient",
    header: "math_FRPR.hxx".}
proc Gradient*(this: math_FRPR; Grad: var math_Vector) {.noSideEffect,
    importcpp: "Gradient", header: "math_FRPR.hxx".}
proc NbIterations*(this: math_FRPR): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_FRPR.hxx".}
proc Dump*(this: math_FRPR; o: var Standard_OStream) {.noSideEffect, importcpp: "Dump",
    header: "math_FRPR.hxx".}