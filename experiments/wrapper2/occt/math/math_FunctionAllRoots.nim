##  Created on: 1991-07-17
##  Created by: Isabelle GRIGNON
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NumericError"
discard "forward decl of math_FunctionWithDerivative"
discard "forward decl of math_FunctionSample"
type
  MathFunctionAllRoots* {.importcpp: "math_FunctionAllRoots",
                         header: "math_FunctionAllRoots.hxx", bycopy.} = object ## ! The
                                                                           ## algorithm uses the
                                                                           ## sample to find
                                                                           ## intervals on which
                                                                           ## ! the
                                                                           ## function is null. An
                                                                           ## interval is found if, for at least
                                                                           ## ! two
                                                                           ## consecutive
                                                                           ## points of the
                                                                           ## sample, Ui and Ui+1, we get
                                                                           ## !
                                                                           ## |F(Ui)|<=EpsNul and
                                                                           ## |F(Ui+1)|<=EpsNul. The real
                                                                           ## bounds of
                                                                           ## ! an
                                                                           ## interval are
                                                                           ## computed with the
                                                                           ## FunctionRoots.
                                                                           ## !
                                                                           ## algorithm.
                                                                           ## !
                                                                           ## Between two
                                                                           ## intervals, the roots of the
                                                                           ## function F are
                                                                           ## !
                                                                           ## calculated using the
                                                                           ## FunctionRoots
                                                                           ## algorithm.


proc constructMathFunctionAllRoots*(f: var MathFunctionWithDerivative;
                                   s: MathFunctionSample; epsX: float; epsF: float;
                                   epsNul: float): MathFunctionAllRoots {.
    constructor, importcpp: "math_FunctionAllRoots(@)",
    header: "math_FunctionAllRoots.hxx".}
proc isDone*(this: MathFunctionAllRoots): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_FunctionAllRoots.hxx".}
proc nbIntervals*(this: MathFunctionAllRoots): int {.noSideEffect,
    importcpp: "NbIntervals", header: "math_FunctionAllRoots.hxx".}
proc getInterval*(this: MathFunctionAllRoots; index: int; a: var float; b: var float) {.
    noSideEffect, importcpp: "GetInterval", header: "math_FunctionAllRoots.hxx".}
proc getIntervalState*(this: MathFunctionAllRoots; index: int; iFirst: var int;
                      iLast: var int) {.noSideEffect, importcpp: "GetIntervalState",
                                     header: "math_FunctionAllRoots.hxx".}
proc nbPoints*(this: MathFunctionAllRoots): int {.noSideEffect,
    importcpp: "NbPoints", header: "math_FunctionAllRoots.hxx".}
proc getPoint*(this: MathFunctionAllRoots; index: int): float {.noSideEffect,
    importcpp: "GetPoint", header: "math_FunctionAllRoots.hxx".}
proc getPointState*(this: MathFunctionAllRoots; index: int): int {.noSideEffect,
    importcpp: "GetPointState", header: "math_FunctionAllRoots.hxx".}
proc dump*(this: MathFunctionAllRoots; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionAllRoots.hxx".}
