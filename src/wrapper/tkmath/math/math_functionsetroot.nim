import math_types

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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_FunctionSetWithDerivatives"
discard "forward decl of math_Matrix"


proc newMathFunctionSetRoot*(f: var MathFunctionSetWithDerivatives;
                            tolerance: MathVector; nbIterations: cint = 100): MathFunctionSetRoot {.
    cdecl, constructor, importcpp: "math_FunctionSetRoot(@)", header: "math_FunctionSetRoot.hxx".}
proc newMathFunctionSetRoot*(f: var MathFunctionSetWithDerivatives;
                            nbIterations: cint = 100): MathFunctionSetRoot {.cdecl,
    constructor, importcpp: "math_FunctionSetRoot(@)", header: "math_FunctionSetRoot.hxx".}
proc destroyMathFunctionSetRoot*(this: var MathFunctionSetRoot) {.cdecl,
    importcpp: "#.~math_FunctionSetRoot()", header: "math_FunctionSetRoot.hxx".}
proc setTolerance*(this: var MathFunctionSetRoot; tolerance: MathVector) {.cdecl,
    importcpp: "SetTolerance", header: "math_FunctionSetRoot.hxx".}
proc isSolutionReached*(this: var MathFunctionSetRoot;
                       f: var MathFunctionSetWithDerivatives): bool {.cdecl,
    importcpp: "IsSolutionReached", header: "math_FunctionSetRoot.hxx".}
proc perform*(this: var MathFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector; theStopOnDivergent: bool = false) {.cdecl,
    importcpp: "Perform", header: "math_FunctionSetRoot.hxx".}
proc perform*(this: var MathFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector; theInfBound: MathVector;
             theSupBound: MathVector; theStopOnDivergent: bool = false) {.cdecl,
    importcpp: "Perform", header: "math_FunctionSetRoot.hxx".}
proc isDone*(this: MathFunctionSetRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_FunctionSetRoot.hxx".}
proc nbIterations*(this: MathFunctionSetRoot): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", header: "math_FunctionSetRoot.hxx".}
proc stateNumber*(this: MathFunctionSetRoot): cint {.noSideEffect, cdecl,
    importcpp: "StateNumber", header: "math_FunctionSetRoot.hxx".}
proc root*(this: MathFunctionSetRoot): MathVector {.noSideEffect, cdecl,
    importcpp: "Root", header: "math_FunctionSetRoot.hxx".}
proc root*(this: MathFunctionSetRoot; root: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Root", header: "math_FunctionSetRoot.hxx".}
proc derivative*(this: MathFunctionSetRoot): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Derivative", header: "math_FunctionSetRoot.hxx".}
proc derivative*(this: MathFunctionSetRoot; der: var MathMatrix) {.noSideEffect, cdecl,
    importcpp: "Derivative", header: "math_FunctionSetRoot.hxx".}
proc functionSetErrors*(this: MathFunctionSetRoot): MathVector {.noSideEffect, cdecl,
    importcpp: "FunctionSetErrors", header: "math_FunctionSetRoot.hxx".}
proc functionSetErrors*(this: MathFunctionSetRoot; err: var MathVector) {.
    noSideEffect, cdecl, importcpp: "FunctionSetErrors", header: "math_FunctionSetRoot.hxx".}
proc dump*(this: MathFunctionSetRoot; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_FunctionSetRoot.hxx".}
proc isDivergent*(this: MathFunctionSetRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsDivergent", header: "math_FunctionSetRoot.hxx".}
