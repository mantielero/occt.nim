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
type
  MathFunctionSetRoot* {.importcpp: "math_FunctionSetRoot",
                        header: "math_FunctionSetRoot.hxx", bycopy.} = object ## ! is used in a
                                                                         ## sub-class to
                                                                         ## initialize
                                                                         ## correctly all the fields
                                                                         ## ! of this class.
                                                                         ## ! The range (1,
                                                                         ## F.NbVariables()) must be
                                                                         ## especially
                                                                         ## !
                                                                         ## respected for all vectors and matrix
                                                                         ## declarations.


proc constructMathFunctionSetRoot*(f: var MathFunctionSetWithDerivatives;
                                  tolerance: MathVector; nbIterations: int = 100): MathFunctionSetRoot {.
    constructor, importcpp: "math_FunctionSetRoot(@)",
    header: "math_FunctionSetRoot.hxx".}
proc constructMathFunctionSetRoot*(f: var MathFunctionSetWithDerivatives;
                                  nbIterations: int = 100): MathFunctionSetRoot {.
    constructor, importcpp: "math_FunctionSetRoot(@)",
    header: "math_FunctionSetRoot.hxx".}
proc destroyMathFunctionSetRoot*(this: var MathFunctionSetRoot) {.
    importcpp: "#.~math_FunctionSetRoot()", header: "math_FunctionSetRoot.hxx".}
proc setTolerance*(this: var MathFunctionSetRoot; tolerance: MathVector) {.
    importcpp: "SetTolerance", header: "math_FunctionSetRoot.hxx".}
proc isSolutionReached*(this: var MathFunctionSetRoot;
                       f: var MathFunctionSetWithDerivatives): bool {.
    importcpp: "IsSolutionReached", header: "math_FunctionSetRoot.hxx".}
proc perform*(this: var MathFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector; theStopOnDivergent: bool = false) {.
    importcpp: "Perform", header: "math_FunctionSetRoot.hxx".}
proc perform*(this: var MathFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector; theInfBound: MathVector;
             theSupBound: MathVector; theStopOnDivergent: bool = false) {.
    importcpp: "Perform", header: "math_FunctionSetRoot.hxx".}
proc isDone*(this: MathFunctionSetRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_FunctionSetRoot.hxx".}
proc nbIterations*(this: MathFunctionSetRoot): int {.noSideEffect,
    importcpp: "NbIterations", header: "math_FunctionSetRoot.hxx".}
proc stateNumber*(this: MathFunctionSetRoot): int {.noSideEffect,
    importcpp: "StateNumber", header: "math_FunctionSetRoot.hxx".}
proc root*(this: MathFunctionSetRoot): MathVector {.noSideEffect, importcpp: "Root",
    header: "math_FunctionSetRoot.hxx".}
proc root*(this: MathFunctionSetRoot; root: var MathVector) {.noSideEffect,
    importcpp: "Root", header: "math_FunctionSetRoot.hxx".}
proc derivative*(this: MathFunctionSetRoot): MathMatrix {.noSideEffect,
    importcpp: "Derivative", header: "math_FunctionSetRoot.hxx".}
proc derivative*(this: MathFunctionSetRoot; der: var MathMatrix) {.noSideEffect,
    importcpp: "Derivative", header: "math_FunctionSetRoot.hxx".}
proc functionSetErrors*(this: MathFunctionSetRoot): MathVector {.noSideEffect,
    importcpp: "FunctionSetErrors", header: "math_FunctionSetRoot.hxx".}
proc functionSetErrors*(this: MathFunctionSetRoot; err: var MathVector) {.
    noSideEffect, importcpp: "FunctionSetErrors",
    header: "math_FunctionSetRoot.hxx".}
proc dump*(this: MathFunctionSetRoot; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionSetRoot.hxx".}
proc isDivergent*(this: MathFunctionSetRoot): bool {.noSideEffect,
    importcpp: "IsDivergent", header: "math_FunctionSetRoot.hxx".}
