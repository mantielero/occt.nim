import math_types

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


proc newMathFunctionRoots*(f: var MathFunctionWithDerivative; a: cfloat; b: cfloat;
                          nbSample: cint; epsX: cfloat = 0.0; epsF: cfloat = 0.0;
                          epsNull: cfloat = 0.0; k: cfloat = 0.0): MathFunctionRoots {.
    cdecl, constructor, importcpp: "math_FunctionRoots(@)", header: "math_FunctionRoots.hxx".}
proc isDone*(this: MathFunctionRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_FunctionRoots.hxx".}
proc isAllNull*(this: MathFunctionRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsAllNull", header: "math_FunctionRoots.hxx".}
proc nbSolutions*(this: MathFunctionRoots): cint {.noSideEffect, cdecl,
    importcpp: "NbSolutions", header: "math_FunctionRoots.hxx".}
proc value*(this: MathFunctionRoots; nieme: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_FunctionRoots.hxx".}
proc stateNumber*(this: MathFunctionRoots; nieme: cint): cint {.noSideEffect, cdecl,
    importcpp: "StateNumber", header: "math_FunctionRoots.hxx".}
proc dump*(this: MathFunctionRoots; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_FunctionRoots.hxx".}
