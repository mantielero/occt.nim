##  Created on: 1991-03-14
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_FunctionWithDerivative"
type
  math_FunctionRoot* {.importcpp: "math_FunctionRoot",
                      header: "math_FunctionRoot.hxx", bycopy.} = object ## ! The
                                                                    ## Newton-Raphson method is done to find the root of the function F
                                                                    ## ! from the initial guess Guess.The tolerance required on
                                                                    ## ! the root is given by Tolerance. Iterations are stopped if
                                                                    ## ! the expected solution does not stay in the range A..B.
                                                                    ## ! The solution is found when abs(Xi - Xi-1) <= Tolerance;
                                                                    ## ! The maximum number of iterations allowed is given by
                                                                    ## NbIterations.


proc constructmath_FunctionRoot*(F: var math_FunctionWithDerivative;
                                Guess: Standard_Real; Tolerance: Standard_Real;
                                NbIterations: Standard_Integer = 100): math_FunctionRoot {.
    constructor, importcpp: "math_FunctionRoot(@)", header: "math_FunctionRoot.hxx".}
proc constructmath_FunctionRoot*(F: var math_FunctionWithDerivative;
                                Guess: Standard_Real; Tolerance: Standard_Real;
                                A: Standard_Real; B: Standard_Real;
                                NbIterations: Standard_Integer = 100): math_FunctionRoot {.
    constructor, importcpp: "math_FunctionRoot(@)", header: "math_FunctionRoot.hxx".}
proc IsDone*(this: math_FunctionRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_FunctionRoot.hxx".}
proc Root*(this: math_FunctionRoot): Standard_Real {.noSideEffect, importcpp: "Root",
    header: "math_FunctionRoot.hxx".}
proc Derivative*(this: math_FunctionRoot): Standard_Real {.noSideEffect,
    importcpp: "Derivative", header: "math_FunctionRoot.hxx".}
proc Value*(this: math_FunctionRoot): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_FunctionRoot.hxx".}
proc NbIterations*(this: math_FunctionRoot): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_FunctionRoot.hxx".}
proc Dump*(this: math_FunctionRoot; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionRoot.hxx".}