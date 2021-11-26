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


proc newMathFunctionRoots*(f: var MathFunctionWithDerivative; a: cfloat; b: cfloat;
                          nbSample: cint; epsX: cfloat = 0.0; epsF: cfloat = 0.0;
                          epsNull: cfloat = 0.0; k: cfloat = 0.0): MathFunctionRoots {.
    cdecl, constructor, importcpp: "math_FunctionRoots(@)", dynlib: tkmath.}
proc isDone*(this: MathFunctionRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc isAllNull*(this: MathFunctionRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsAllNull", dynlib: tkmath.}
proc nbSolutions*(this: MathFunctionRoots): cint {.noSideEffect, cdecl,
    importcpp: "NbSolutions", dynlib: tkmath.}
proc value*(this: MathFunctionRoots; nieme: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc stateNumber*(this: MathFunctionRoots; nieme: cint): cint {.noSideEffect, cdecl,
    importcpp: "StateNumber", dynlib: tkmath.}
proc dump*(this: MathFunctionRoots; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}