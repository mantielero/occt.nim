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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Vector,
  math_Matrix, ../Standard/Standard_Integer, math_IntegerVector,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_FunctionSetWithDerivatives"
discard "forward decl of math_Matrix"
type
  math_FunctionSetRoot* {.importcpp: "math_FunctionSetRoot",
                         header: "math_FunctionSetRoot.hxx", bycopy.} = object ## ! is used in a
                                                                          ## sub-class to
                                                                          ## initialize
                                                                          ## correctly all the fields
                                                                          ## ! of this class.
                                                                          ## ! The range (1,
                                                                          ## F.NbVariables()) must be
                                                                          ## especially
                                                                          ## !
                                                                          ## respected for all
                                                                          ## vectors and matrix
                                                                          ## declarations.


proc constructmath_FunctionSetRoot*(F: var math_FunctionSetWithDerivatives;
                                   Tolerance: math_Vector;
                                   NbIterations: Standard_Integer = 100): math_FunctionSetRoot {.
    constructor, importcpp: "math_FunctionSetRoot(@)",
    header: "math_FunctionSetRoot.hxx".}
proc constructmath_FunctionSetRoot*(F: var math_FunctionSetWithDerivatives;
                                   NbIterations: Standard_Integer = 100): math_FunctionSetRoot {.
    constructor, importcpp: "math_FunctionSetRoot(@)",
    header: "math_FunctionSetRoot.hxx".}
proc destroymath_FunctionSetRoot*(this: var math_FunctionSetRoot) {.
    importcpp: "#.~math_FunctionSetRoot()", header: "math_FunctionSetRoot.hxx".}
proc SetTolerance*(this: var math_FunctionSetRoot; Tolerance: math_Vector) {.
    importcpp: "SetTolerance", header: "math_FunctionSetRoot.hxx".}
proc IsSolutionReached*(this: var math_FunctionSetRoot;
                       F: var math_FunctionSetWithDerivatives): Standard_Boolean {.
    importcpp: "IsSolutionReached", header: "math_FunctionSetRoot.hxx".}
proc Perform*(this: var math_FunctionSetRoot;
             theFunction: var math_FunctionSetWithDerivatives;
             theStartingPoint: math_Vector;
             theStopOnDivergent: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "math_FunctionSetRoot.hxx".}
proc Perform*(this: var math_FunctionSetRoot;
             theFunction: var math_FunctionSetWithDerivatives;
             theStartingPoint: math_Vector; theInfBound: math_Vector;
             theSupBound: math_Vector;
             theStopOnDivergent: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "math_FunctionSetRoot.hxx".}
proc IsDone*(this: math_FunctionSetRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_FunctionSetRoot.hxx".}
proc NbIterations*(this: math_FunctionSetRoot): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_FunctionSetRoot.hxx".}
proc StateNumber*(this: math_FunctionSetRoot): Standard_Integer {.noSideEffect,
    importcpp: "StateNumber", header: "math_FunctionSetRoot.hxx".}
proc Root*(this: math_FunctionSetRoot): math_Vector {.noSideEffect,
    importcpp: "Root", header: "math_FunctionSetRoot.hxx".}
proc Root*(this: math_FunctionSetRoot; Root: var math_Vector) {.noSideEffect,
    importcpp: "Root", header: "math_FunctionSetRoot.hxx".}
proc Derivative*(this: math_FunctionSetRoot): math_Matrix {.noSideEffect,
    importcpp: "Derivative", header: "math_FunctionSetRoot.hxx".}
proc Derivative*(this: math_FunctionSetRoot; Der: var math_Matrix) {.noSideEffect,
    importcpp: "Derivative", header: "math_FunctionSetRoot.hxx".}
proc FunctionSetErrors*(this: math_FunctionSetRoot): math_Vector {.noSideEffect,
    importcpp: "FunctionSetErrors", header: "math_FunctionSetRoot.hxx".}
proc FunctionSetErrors*(this: math_FunctionSetRoot; Err: var math_Vector) {.
    noSideEffect, importcpp: "FunctionSetErrors",
    header: "math_FunctionSetRoot.hxx".}
proc Dump*(this: math_FunctionSetRoot; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionSetRoot.hxx".}
proc IsDivergent*(this: math_FunctionSetRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDivergent", header: "math_FunctionSetRoot.hxx".}