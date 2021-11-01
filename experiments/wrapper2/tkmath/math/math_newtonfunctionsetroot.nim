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


proc newMathNewtonFunctionSetRoot*(theFunction: var MathFunctionSetWithDerivatives;
                                  theXTolerance: MathVector;
                                  theFTolerance: cfloat;
                                  tehNbIterations: cint = 100): MathNewtonFunctionSetRoot {.
    cdecl, constructor, importcpp: "math_NewtonFunctionSetRoot(@)", dynlib: tkmath.}
proc newMathNewtonFunctionSetRoot*(theFunction: var MathFunctionSetWithDerivatives;
                                  theFTolerance: cfloat;
                                  theNbIterations: cint = 100): MathNewtonFunctionSetRoot {.
    cdecl, constructor, importcpp: "math_NewtonFunctionSetRoot(@)", dynlib: tkmath.}
proc destroyMathNewtonFunctionSetRoot*(this: var MathNewtonFunctionSetRoot) {.cdecl,
    importcpp: "#.~math_NewtonFunctionSetRoot()", dynlib: tkmath.}
proc setTolerance*(this: var MathNewtonFunctionSetRoot; xTol: MathVector) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkmath.}
proc perform*(this: var MathNewtonFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector) {.cdecl, importcpp: "Perform",
    dynlib: tkmath.}
proc perform*(this: var MathNewtonFunctionSetRoot;
             theFunction: var MathFunctionSetWithDerivatives;
             theStartingPoint: MathVector; theInfBound: MathVector;
             theSupBound: MathVector) {.cdecl, importcpp: "Perform", dynlib: tkmath.}
proc isSolutionReached*(this: var MathNewtonFunctionSetRoot;
                       f: var MathFunctionSetWithDerivatives): bool {.cdecl,
    importcpp: "IsSolutionReached", dynlib: tkmath.}
proc isDone*(this: MathNewtonFunctionSetRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc root*(this: MathNewtonFunctionSetRoot): MathVector {.noSideEffect, cdecl,
    importcpp: "Root", dynlib: tkmath.}
proc root*(this: MathNewtonFunctionSetRoot; root: var MathVector) {.noSideEffect,
    cdecl, importcpp: "Root", dynlib: tkmath.}
proc stateNumber*(this: MathNewtonFunctionSetRoot): cint {.noSideEffect, cdecl,
    importcpp: "StateNumber", dynlib: tkmath.}
proc derivative*(this: MathNewtonFunctionSetRoot): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Derivative", dynlib: tkmath.}
proc derivative*(this: MathNewtonFunctionSetRoot; der: var MathMatrix) {.noSideEffect,
    cdecl, importcpp: "Derivative", dynlib: tkmath.}
proc functionSetErrors*(this: MathNewtonFunctionSetRoot): MathVector {.noSideEffect,
    cdecl, importcpp: "FunctionSetErrors", dynlib: tkmath.}
proc functionSetErrors*(this: MathNewtonFunctionSetRoot; err: var MathVector) {.
    noSideEffect, cdecl, importcpp: "FunctionSetErrors", dynlib: tkmath.}
proc nbIterations*(this: MathNewtonFunctionSetRoot): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", dynlib: tkmath.}
proc dump*(this: MathNewtonFunctionSetRoot; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", dynlib: tkmath.}