import math_types
import ../standard/standard_types
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


proc newMathFunctionRoot*(f: var MathFunctionWithDerivative; guess: cfloat;
                         tolerance: cfloat; nbIterations: cint = 100): MathFunctionRoot {.
    cdecl, constructor, importcpp: "math_FunctionRoot(@)", header: "math_FunctionRoot.hxx".}
proc newMathFunctionRoot*(f: var MathFunctionWithDerivative; guess: cfloat;
                         tolerance: cfloat; a: cfloat; b: cfloat;
                         nbIterations: cint = 100): MathFunctionRoot {.cdecl,
    constructor, importcpp: "math_FunctionRoot(@)", header: "math_FunctionRoot.hxx".}
proc isDone*(this: MathFunctionRoot): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "math_FunctionRoot.hxx".}
proc root*(this: MathFunctionRoot): cfloat {.noSideEffect, cdecl, importcpp: "Root",
    header: "math_FunctionRoot.hxx".}
proc derivative*(this: MathFunctionRoot): cfloat {.noSideEffect, cdecl,
    importcpp: "Derivative", header: "math_FunctionRoot.hxx".}
proc value*(this: MathFunctionRoot): cfloat {.noSideEffect, cdecl, importcpp: "Value",
    header: "math_FunctionRoot.hxx".}
proc nbIterations*(this: MathFunctionRoot): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", header: "math_FunctionRoot.hxx".}
proc dump*(this: MathFunctionRoot; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_FunctionRoot.hxx".}
