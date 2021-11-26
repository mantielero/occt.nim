##  Created on: 1996-02-28
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of math_MultipleVarFunctionWithHessian"
type
  MathNewtonMinimum* {.importcpp: "math_NewtonMinimum",
                      header: "math_NewtonMinimum.hxx", bycopy.} = object ## ! The tolerance required on the solution is given by Tolerance.
                                                                     ## ! Iteration are  stopped if
                                                                     ## (!WithSingularity) and H(F(Xi)) is not definite
                                                                     ## ! positive (if the smaller eigenvalue of H < Convexity)
                                                                     ## ! or
                                                                     ## IsConverged() returns True for 2 successives Iterations.
                                                                     ## ! Warning: This constructor does not perform
                                                                     ## computation.


proc newMathNewtonMinimum*(theFunction: MathMultipleVarFunctionWithHessian;
                          theTolerance: cfloat = confusion();
                          theNbIterations: cint = 40; theConvexity: cfloat = 1.0e-6;
                          theWithSingularity: bool = true): MathNewtonMinimum {.
    cdecl, constructor, importcpp: "math_NewtonMinimum(@)", dynlib: tkmath.}
proc perform*(this: var MathNewtonMinimum;
             theFunction: var MathMultipleVarFunctionWithHessian;
             theStartingPoint: MathVector) {.cdecl, importcpp: "Perform",
    dynlib: tkmath.}
proc destroyMathNewtonMinimum*(this: var MathNewtonMinimum) {.cdecl,
    importcpp: "#.~math_NewtonMinimum()", dynlib: tkmath.}
proc isConverged*(this: MathNewtonMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsConverged", dynlib: tkmath.}
proc isDone*(this: MathNewtonMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc isConvex*(this: MathNewtonMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsConvex", dynlib: tkmath.}
proc location*(this: MathNewtonMinimum): MathVector {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc location*(this: MathNewtonMinimum; loc: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc setBoundary*(this: var MathNewtonMinimum; theLeftBorder: MathVector;
                 theRightBorder: MathVector) {.cdecl, importcpp: "SetBoundary",
    dynlib: tkmath.}
proc minimum*(this: MathNewtonMinimum): cfloat {.noSideEffect, cdecl,
    importcpp: "Minimum", dynlib: tkmath.}
proc gradient*(this: MathNewtonMinimum): MathVector {.noSideEffect, cdecl,
    importcpp: "Gradient", dynlib: tkmath.}
proc gradient*(this: MathNewtonMinimum; grad: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Gradient", dynlib: tkmath.}
proc nbIterations*(this: MathNewtonMinimum): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", dynlib: tkmath.}
proc getStatus*(this: MathNewtonMinimum): MathStatus {.noSideEffect, cdecl,
    importcpp: "GetStatus", dynlib: tkmath.}
proc dump*(this: MathNewtonMinimum; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}