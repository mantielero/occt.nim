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
  MathNewtonFunctionSetRoot* {.importcpp: "math_NewtonFunctionSetRoot",
                              header: "math_NewtonFunctionSetRoot.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Initialize
                                                                                     ## correctly
                                                                                     ## all
                                                                                     ## the
                                                                                     ## fields
                                                                                     ## of
                                                                                     ## this
                                                                                     ## class.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## range
                                                                                     ## (1,
                                                                                     ## F.NbVariables())
                                                                                     ## must
                                                                                     ## be
                                                                                     ## especially
                                                                                     ## respected
                                                                                     ## for
                                                                                     ##
                                                                                     ## !
                                                                                     ## all
                                                                                     ## vectors
                                                                                     ## and
                                                                                     ## matrix
                                                                                     ## declarations.


proc constructMathNewtonFunctionSetRoot*(theFunction: var MathFunctionSetWithDerivatives;
                                        theXTolerance: MathVector;
                                        theFTolerance: cfloat;
                                        tehNbIterations: cint = 100): MathNewtonFunctionSetRoot {.
    constructor, importcpp: "math_NewtonFunctionSetRoot(@)",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc constructMathNewtonFunctionSetRoot*(theFunction: var MathFunctionSetWithDerivatives;
                                        theFTolerance: cfloat;
                                        theNbIterations: cint = 100): MathNewtonFunctionSetRoot {.
    constructor, importcpp: "math_NewtonFunctionSetRoot(@)",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc destroyMathNewtonFunctionSetRoot*(this: var MathNewtonFunctionSetRoot) {.
    importcpp: "#.~math_NewtonFunctionSetRoot()",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc setTolerance*(this: var MathNewtonFunctionSetRoot; xTol: MathVector) {.
    importcpp: "SetTolerance", header: "math_NewtonFunctionSetRoot.hxx".}
proc perform*(this: var MathNewtonFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector) {.importcpp: "Perform",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc perform*(this: var MathNewtonFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector; theInfBound: MathVector;
             theSupBound: MathVector) {.importcpp: "Perform",
                                      header: "math_NewtonFunctionSetRoot.hxx".}
proc isSolutionReached*(this: var MathNewtonFunctionSetRoot;
                       f: var MathFunctionSetWithDerivatives): bool {.
    importcpp: "IsSolutionReached", header: "math_NewtonFunctionSetRoot.hxx".}
proc isDone*(this: MathNewtonFunctionSetRoot): bool {.noSideEffect,
    importcpp: "IsDone", header: "math_NewtonFunctionSetRoot.hxx".}
proc root*(this: MathNewtonFunctionSetRoot): MathVector {.noSideEffect,
    importcpp: "Root", header: "math_NewtonFunctionSetRoot.hxx".}
proc root*(this: MathNewtonFunctionSetRoot; root: var MathVector) {.noSideEffect,
    importcpp: "Root", header: "math_NewtonFunctionSetRoot.hxx".}
proc stateNumber*(this: MathNewtonFunctionSetRoot): cint {.noSideEffect,
    importcpp: "StateNumber", header: "math_NewtonFunctionSetRoot.hxx".}
proc derivative*(this: MathNewtonFunctionSetRoot): MathMatrix {.noSideEffect,
    importcpp: "Derivative", header: "math_NewtonFunctionSetRoot.hxx".}
proc derivative*(this: MathNewtonFunctionSetRoot; der: var MathMatrix) {.noSideEffect,
    importcpp: "Derivative", header: "math_NewtonFunctionSetRoot.hxx".}
proc functionSetErrors*(this: MathNewtonFunctionSetRoot): MathVector {.noSideEffect,
    importcpp: "FunctionSetErrors", header: "math_NewtonFunctionSetRoot.hxx".}
proc functionSetErrors*(this: MathNewtonFunctionSetRoot; err: var MathVector) {.
    noSideEffect, importcpp: "FunctionSetErrors",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc nbIterations*(this: MathNewtonFunctionSetRoot): cint {.noSideEffect,
    importcpp: "NbIterations", header: "math_NewtonFunctionSetRoot.hxx".}
proc dump*(this: MathNewtonFunctionSetRoot; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_NewtonFunctionSetRoot.hxx".}

























