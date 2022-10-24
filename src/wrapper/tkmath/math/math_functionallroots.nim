import math_types

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


proc newMathFunctionAllRoots*(f: var MathFunctionWithDerivative;
                             s: MathFunctionSample; epsX: cfloat; epsF: cfloat;
                             epsNul: cfloat): MathFunctionAllRoots {.cdecl,
    constructor, importcpp: "math_FunctionAllRoots(@)", header: "math_FunctionAllRoots.hxx".}
proc isDone*(this: MathFunctionAllRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_FunctionAllRoots.hxx".}
proc nbIntervals*(this: MathFunctionAllRoots): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "math_FunctionAllRoots.hxx".}
proc getInterval*(this: MathFunctionAllRoots; index: cint; a: var cfloat; b: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "math_FunctionAllRoots.hxx".}
proc getIntervalState*(this: MathFunctionAllRoots; index: cint; iFirst: var cint;
                      iLast: var cint) {.noSideEffect, cdecl,
                                      importcpp: "GetIntervalState",
                                      header: "math_FunctionAllRoots.hxx".}
proc nbPoints*(this: MathFunctionAllRoots): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", header: "math_FunctionAllRoots.hxx".}
proc getPoint*(this: MathFunctionAllRoots; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "GetPoint", header: "math_FunctionAllRoots.hxx".}
proc getPointState*(this: MathFunctionAllRoots; index: cint): cint {.noSideEffect,
    cdecl, importcpp: "GetPointState", header: "math_FunctionAllRoots.hxx".}
proc dump*(this: MathFunctionAllRoots; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_FunctionAllRoots.hxx".}
