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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, math_Vector, ../Standard/Standard_Real,
  math_IntegerVector, math_Matrix, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_FunctionSetWithDerivatives"
discard "forward decl of math_Matrix"
type
  math_NewtonFunctionSetRoot* {.importcpp: "math_NewtonFunctionSetRoot",
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


proc constructmath_NewtonFunctionSetRoot*(
    theFunction: var math_FunctionSetWithDerivatives; theXTolerance: math_Vector;
    theFTolerance: Standard_Real; tehNbIterations: Standard_Integer = 100): math_NewtonFunctionSetRoot {.
    constructor, importcpp: "math_NewtonFunctionSetRoot(@)",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc constructmath_NewtonFunctionSetRoot*(
    theFunction: var math_FunctionSetWithDerivatives; theFTolerance: Standard_Real;
    theNbIterations: Standard_Integer = 100): math_NewtonFunctionSetRoot {.
    constructor, importcpp: "math_NewtonFunctionSetRoot(@)",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc destroymath_NewtonFunctionSetRoot*(this: var math_NewtonFunctionSetRoot) {.
    importcpp: "#.~math_NewtonFunctionSetRoot()",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc SetTolerance*(this: var math_NewtonFunctionSetRoot; XTol: math_Vector) {.
    importcpp: "SetTolerance", header: "math_NewtonFunctionSetRoot.hxx".}
proc Perform*(this: var math_NewtonFunctionSetRoot;
             theFunction: var math_FunctionSetWithDerivatives;
             theStartingPoint: math_Vector) {.importcpp: "Perform",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc Perform*(this: var math_NewtonFunctionSetRoot;
             theFunction: var math_FunctionSetWithDerivatives;
             theStartingPoint: math_Vector; theInfBound: math_Vector;
             theSupBound: math_Vector) {.importcpp: "Perform",
                                       header: "math_NewtonFunctionSetRoot.hxx".}
proc IsSolutionReached*(this: var math_NewtonFunctionSetRoot;
                       F: var math_FunctionSetWithDerivatives): Standard_Boolean {.
    importcpp: "IsSolutionReached", header: "math_NewtonFunctionSetRoot.hxx".}
proc IsDone*(this: math_NewtonFunctionSetRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_NewtonFunctionSetRoot.hxx".}
proc Root*(this: math_NewtonFunctionSetRoot): math_Vector {.noSideEffect,
    importcpp: "Root", header: "math_NewtonFunctionSetRoot.hxx".}
proc Root*(this: math_NewtonFunctionSetRoot; Root: var math_Vector) {.noSideEffect,
    importcpp: "Root", header: "math_NewtonFunctionSetRoot.hxx".}
proc StateNumber*(this: math_NewtonFunctionSetRoot): Standard_Integer {.
    noSideEffect, importcpp: "StateNumber",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc Derivative*(this: math_NewtonFunctionSetRoot): math_Matrix {.noSideEffect,
    importcpp: "Derivative", header: "math_NewtonFunctionSetRoot.hxx".}
proc Derivative*(this: math_NewtonFunctionSetRoot; Der: var math_Matrix) {.
    noSideEffect, importcpp: "Derivative", header: "math_NewtonFunctionSetRoot.hxx".}
proc FunctionSetErrors*(this: math_NewtonFunctionSetRoot): math_Vector {.
    noSideEffect, importcpp: "FunctionSetErrors",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc FunctionSetErrors*(this: math_NewtonFunctionSetRoot; Err: var math_Vector) {.
    noSideEffect, importcpp: "FunctionSetErrors",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc NbIterations*(this: math_NewtonFunctionSetRoot): Standard_Integer {.
    noSideEffect, importcpp: "NbIterations",
    header: "math_NewtonFunctionSetRoot.hxx".}
proc Dump*(this: math_NewtonFunctionSetRoot; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_NewtonFunctionSetRoot.hxx".}