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

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_FunctionWithDerivative"
type
  MathFunctionRoot* {.importcpp: "math_FunctionRoot",
                     header: "math_FunctionRoot.hxx", bycopy.} = object ## ! The
                                                                   ## Newton-Raphson method is done to find the root of the function F
                                                                   ## ! from the initial guess Guess.The tolerance required on
                                                                   ## ! the root is given by Tolerance. Iterations are stopped if
                                                                   ## ! the expected solution does not stay in the range A..B.
                                                                   ## ! The solution is found when abs(Xi - Xi-1) <= Tolerance;
                                                                   ## ! The maximum number of iterations allowed is given by NbIterations.


proc constructMathFunctionRoot*(f: var MathFunctionWithDerivative; guess: float;
                               tolerance: float; nbIterations: int = 100): MathFunctionRoot {.
    constructor, importcpp: "math_FunctionRoot(@)", header: "math_FunctionRoot.hxx".}
proc constructMathFunctionRoot*(f: var MathFunctionWithDerivative; guess: float;
                               tolerance: float; a: float; b: float;
                               nbIterations: int = 100): MathFunctionRoot {.
    constructor, importcpp: "math_FunctionRoot(@)", header: "math_FunctionRoot.hxx".}
proc isDone*(this: MathFunctionRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_FunctionRoot.hxx".}
proc root*(this: MathFunctionRoot): float {.noSideEffect, importcpp: "Root",
                                        header: "math_FunctionRoot.hxx".}
proc derivative*(this: MathFunctionRoot): float {.noSideEffect,
    importcpp: "Derivative", header: "math_FunctionRoot.hxx".}
proc value*(this: MathFunctionRoot): float {.noSideEffect, importcpp: "Value",
    header: "math_FunctionRoot.hxx".}
proc nbIterations*(this: MathFunctionRoot): int {.noSideEffect,
    importcpp: "NbIterations", header: "math_FunctionRoot.hxx".}
proc dump*(this: MathFunctionRoot; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionRoot.hxx".}
