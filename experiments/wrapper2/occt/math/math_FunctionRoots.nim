##  Created on: 1991-05-13
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

discard "forward decl of Standard_RangeError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of math_FunctionWithDerivative"
type
  MathFunctionRoots* {.importcpp: "math_FunctionRoots",
                      header: "math_FunctionRoots.hxx", bycopy.} = object ## ! Calculates all the real roots of a function F-K within the range
                                                                     ## ! A..B. whithout conditions on A and B
                                                                     ## ! A solution X is found when
                                                                     ## ! abs(Xi - Xi-1) <= Epsx and
                                                                     ## abs(F(Xi)-K) <= EpsF.
                                                                     ## ! The function is considered as null between A and B if
                                                                     ## ! abs(F-K) <= EpsNull within this range.


proc constructMathFunctionRoots*(f: var MathFunctionWithDerivative; a: float;
                                b: float; nbSample: int; epsX: float = 0.0;
                                epsF: float = 0.0; epsNull: float = 0.0; k: float = 0.0): MathFunctionRoots {.
    constructor, importcpp: "math_FunctionRoots(@)",
    header: "math_FunctionRoots.hxx".}
proc isDone*(this: MathFunctionRoots): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_FunctionRoots.hxx".}
proc isAllNull*(this: MathFunctionRoots): bool {.noSideEffect,
    importcpp: "IsAllNull", header: "math_FunctionRoots.hxx".}
proc nbSolutions*(this: MathFunctionRoots): int {.noSideEffect,
    importcpp: "NbSolutions", header: "math_FunctionRoots.hxx".}
proc value*(this: MathFunctionRoots; nieme: int): float {.noSideEffect,
    importcpp: "Value", header: "math_FunctionRoots.hxx".}
proc stateNumber*(this: MathFunctionRoots; nieme: int): int {.noSideEffect,
    importcpp: "StateNumber", header: "math_FunctionRoots.hxx".}
proc dump*(this: MathFunctionRoots; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionRoots.hxx".}
