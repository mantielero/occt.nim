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
  MathNewtonFunctionRoot* {.importcpp: "math_NewtonFunctionRoot",
                           header: "math_NewtonFunctionRoot.hxx", bycopy.} = object ## !
                                                                               ## The
                                                                               ## Newton
                                                                               ## method
                                                                               ## is
                                                                               ## done
                                                                               ## to
                                                                               ## find
                                                                               ## the
                                                                               ## root
                                                                               ## of
                                                                               ## the
                                                                               ## function F
                                                                               ## !
                                                                               ## from
                                                                               ## the
                                                                               ## initial
                                                                               ## guess
                                                                               ## Guess.
                                                                               ## !
                                                                               ## The
                                                                               ## tolerance
                                                                               ## required
                                                                               ## on
                                                                               ## the
                                                                               ## root
                                                                               ## is
                                                                               ## given
                                                                               ## by
                                                                               ## Tolerance.
                                                                               ## !
                                                                               ## The
                                                                               ## solution
                                                                               ## is
                                                                               ## found
                                                                               ## when :
                                                                               ## !
                                                                               ## abs(Xi -
                                                                               ## Xi-1)
                                                                               ## <=
                                                                               ## EpsX
                                                                               ## and
                                                                               ## abs(F(Xi))<=
                                                                               ## EpsF
                                                                               ## !
                                                                               ## The
                                                                               ## maximum
                                                                               ## number
                                                                               ## of
                                                                               ## iterations
                                                                               ## allowed
                                                                               ## is
                                                                               ## given
                                                                               ## by
                                                                               ## NbIterations.


proc constructMathNewtonFunctionRoot*(f: var MathFunctionWithDerivative;
                                     guess: cfloat; epsX: cfloat; epsF: cfloat;
                                     nbIterations: cint = 100): MathNewtonFunctionRoot {.
    constructor, importcpp: "math_NewtonFunctionRoot(@)",
    header: "math_NewtonFunctionRoot.hxx".}
proc constructMathNewtonFunctionRoot*(f: var MathFunctionWithDerivative;
                                     guess: cfloat; epsX: cfloat; epsF: cfloat;
                                     a: cfloat; b: cfloat; nbIterations: cint = 100): MathNewtonFunctionRoot {.
    constructor, importcpp: "math_NewtonFunctionRoot(@)",
    header: "math_NewtonFunctionRoot.hxx".}
proc constructMathNewtonFunctionRoot*(a: cfloat; b: cfloat; epsX: cfloat; epsF: cfloat;
                                     nbIterations: cint = 100): MathNewtonFunctionRoot {.
    constructor, importcpp: "math_NewtonFunctionRoot(@)",
    header: "math_NewtonFunctionRoot.hxx".}
proc perform*(this: var MathNewtonFunctionRoot; f: var MathFunctionWithDerivative;
             guess: cfloat) {.importcpp: "Perform",
                            header: "math_NewtonFunctionRoot.hxx".}
proc isDone*(this: MathNewtonFunctionRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_NewtonFunctionRoot.hxx".}
proc root*(this: MathNewtonFunctionRoot): cfloat {.noSideEffect, importcpp: "Root",
    header: "math_NewtonFunctionRoot.hxx".}
proc derivative*(this: MathNewtonFunctionRoot): cfloat {.noSideEffect,
    importcpp: "Derivative", header: "math_NewtonFunctionRoot.hxx".}
proc value*(this: MathNewtonFunctionRoot): cfloat {.noSideEffect, importcpp: "Value",
    header: "math_NewtonFunctionRoot.hxx".}
proc nbIterations*(this: MathNewtonFunctionRoot): cint {.noSideEffect,
    importcpp: "NbIterations", header: "math_NewtonFunctionRoot.hxx".}
proc dump*(this: MathNewtonFunctionRoot; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_NewtonFunctionRoot.hxx".}

























