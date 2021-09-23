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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Precision/Precision,
  ../Standard/Standard_Boolean, math_Status, math_Vector, math_Matrix,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunctionWithHessian"
type
  math_NewtonMinimum* {.importcpp: "math_NewtonMinimum",
                       header: "math_NewtonMinimum.hxx", bycopy.} = object ## ! The tolerance required on the solution is given by Tolerance.
                                                                      ## ! Iteration are  stopped if
                                                                      ## (!WithSingularity) and H(F(Xi)) is not definite
                                                                      ## ! positive (if the smaller eigenvalue of H < Convexity)
                                                                      ## ! or
                                                                      ## IsConverged() returns True for 2
                                                                      ## successives
                                                                      ## Iterations.
                                                                      ## ! Warning: This
                                                                      ## constructor does not perform
                                                                      ## computation.


proc constructmath_NewtonMinimum*(theFunction: math_MultipleVarFunctionWithHessian;
                                 theTolerance: Standard_Real = Confusion();
                                 theNbIterations: Standard_Integer = 40;
                                 theConvexity: Standard_Real = 1.0e-6;
    theWithSingularity: Standard_Boolean = Standard_True): math_NewtonMinimum {.
    constructor, importcpp: "math_NewtonMinimum(@)",
    header: "math_NewtonMinimum.hxx".}
proc Perform*(this: var math_NewtonMinimum;
             theFunction: var math_MultipleVarFunctionWithHessian;
             theStartingPoint: math_Vector) {.importcpp: "Perform",
    header: "math_NewtonMinimum.hxx".}
proc destroymath_NewtonMinimum*(this: var math_NewtonMinimum) {.
    importcpp: "#.~math_NewtonMinimum()", header: "math_NewtonMinimum.hxx".}
proc IsConverged*(this: math_NewtonMinimum): Standard_Boolean {.noSideEffect,
    importcpp: "IsConverged", header: "math_NewtonMinimum.hxx".}
proc IsDone*(this: math_NewtonMinimum): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_NewtonMinimum.hxx".}
proc IsConvex*(this: math_NewtonMinimum): Standard_Boolean {.noSideEffect,
    importcpp: "IsConvex", header: "math_NewtonMinimum.hxx".}
proc Location*(this: math_NewtonMinimum): math_Vector {.noSideEffect,
    importcpp: "Location", header: "math_NewtonMinimum.hxx".}
proc Location*(this: math_NewtonMinimum; Loc: var math_Vector) {.noSideEffect,
    importcpp: "Location", header: "math_NewtonMinimum.hxx".}
proc SetBoundary*(this: var math_NewtonMinimum; theLeftBorder: math_Vector;
                 theRightBorder: math_Vector) {.importcpp: "SetBoundary",
    header: "math_NewtonMinimum.hxx".}
proc Minimum*(this: math_NewtonMinimum): Standard_Real {.noSideEffect,
    importcpp: "Minimum", header: "math_NewtonMinimum.hxx".}
proc Gradient*(this: math_NewtonMinimum): math_Vector {.noSideEffect,
    importcpp: "Gradient", header: "math_NewtonMinimum.hxx".}
proc Gradient*(this: math_NewtonMinimum; Grad: var math_Vector) {.noSideEffect,
    importcpp: "Gradient", header: "math_NewtonMinimum.hxx".}
proc NbIterations*(this: math_NewtonMinimum): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_NewtonMinimum.hxx".}
proc GetStatus*(this: math_NewtonMinimum): math_Status {.noSideEffect,
    importcpp: "GetStatus", header: "math_NewtonMinimum.hxx".}
proc Dump*(this: math_NewtonMinimum; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_NewtonMinimum.hxx".}