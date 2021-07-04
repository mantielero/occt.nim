##  Created on: 1991-08-22
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
  ../Standard/Standard_Handle, math_Matrix, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, math_Vector, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_NotSquare"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_Matrix"
type
  math_Crout* {.importcpp: "math_Crout", header: "math_Crout.hxx", bycopy.} = object ## !
                                                                             ## Given an
                                                                             ## input
                                                                             ## matrix A,
                                                                             ## this
                                                                             ## algorithm
                                                                             ## inverts A by the
                                                                             ## !
                                                                             ## Crout
                                                                             ## algorithm. The
                                                                             ## user can
                                                                             ## give
                                                                             ## only the
                                                                             ## inferior
                                                                             ## !
                                                                             ## triangle for the
                                                                             ## implementation.
                                                                             ## ! A can be
                                                                             ## decomposed
                                                                             ## like
                                                                             ## this:
                                                                             ## ! A = L * D *
                                                                             ## T(L)
                                                                             ## where L is
                                                                             ## triangular
                                                                             ## inferior and D is
                                                                             ## !
                                                                             ## diagonal.
                                                                             ## ! If one
                                                                             ## element of A is
                                                                             ## less
                                                                             ## than
                                                                             ## MinPivot, A is
                                                                             ## !
                                                                             ## considered as
                                                                             ## singular.
                                                                             ## !
                                                                             ## Exception
                                                                             ## NotSquare is
                                                                             ## raised if A is not a
                                                                             ## square
                                                                             ## matrix.


proc constructmath_Crout*(A: math_Matrix; MinPivot: Standard_Real = 1.0e-20): math_Crout {.
    constructor, importcpp: "math_Crout(@)", header: "math_Crout.hxx".}
proc IsDone*(this: math_Crout): Standard_Boolean {.noSideEffect, importcpp: "IsDone",
    header: "math_Crout.hxx".}
proc Solve*(this: math_Crout; B: math_Vector; X: var math_Vector) {.noSideEffect,
    importcpp: "Solve", header: "math_Crout.hxx".}
proc Inverse*(this: math_Crout): math_Matrix {.noSideEffect, importcpp: "Inverse",
    header: "math_Crout.hxx".}
proc Invert*(this: math_Crout; Inv: var math_Matrix) {.noSideEffect,
    importcpp: "Invert", header: "math_Crout.hxx".}
proc Determinant*(this: math_Crout): Standard_Real {.noSideEffect,
    importcpp: "Determinant", header: "math_Crout.hxx".}
proc Dump*(this: math_Crout; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Crout.hxx".}