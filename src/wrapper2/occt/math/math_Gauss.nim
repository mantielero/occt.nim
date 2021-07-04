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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Matrix,
  math_IntegerVector, ../Standard/Standard_Real, math_Vector,
  ../Standard/Standard_OStream, ../Message/Message_ProgressRange

discard "forward decl of math_NotSquare"
discard "forward decl of Standard_DimensionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Matrix"
type
  math_Gauss* {.importcpp: "math_Gauss", header: "math_Gauss.hxx", bycopy.} = object ## !
                                                                             ## Given an
                                                                             ## input n X n
                                                                             ## matrix A
                                                                             ## this
                                                                             ## constructor
                                                                             ## performs its LU
                                                                             ## !
                                                                             ## decomposition
                                                                             ## with
                                                                             ## partial
                                                                             ## pivoting
                                                                             ## (interchange of
                                                                             ## rows).
                                                                             ## !
                                                                             ## This LU
                                                                             ## decomposition is
                                                                             ## stored
                                                                             ## internally and may be
                                                                             ## used to
                                                                             ## ! do
                                                                             ## subsequent
                                                                             ## calculation.
                                                                             ## ! If the
                                                                             ## largest
                                                                             ## pivot
                                                                             ## found is
                                                                             ## less
                                                                             ## than
                                                                             ## MinPivot the
                                                                             ## matrix A is
                                                                             ## !
                                                                             ## considered as
                                                                             ## singular.
                                                                             ## !
                                                                             ## Exception
                                                                             ## NotSquare is
                                                                             ## raised if A is not a
                                                                             ## square
                                                                             ## matrix.


proc constructmath_Gauss*(A: math_Matrix; MinPivot: Standard_Real = 1.0e-20;
    theProgress: Message_ProgressRange = Message_ProgressRange()): math_Gauss {.
    constructor, importcpp: "math_Gauss(@)", header: "math_Gauss.hxx".}
proc IsDone*(this: math_Gauss): Standard_Boolean {.noSideEffect, importcpp: "IsDone",
    header: "math_Gauss.hxx".}
proc Solve*(this: math_Gauss; B: math_Vector; X: var math_Vector) {.noSideEffect,
    importcpp: "Solve", header: "math_Gauss.hxx".}
proc Solve*(this: math_Gauss; B: var math_Vector) {.noSideEffect, importcpp: "Solve",
    header: "math_Gauss.hxx".}
proc Determinant*(this: math_Gauss): Standard_Real {.noSideEffect,
    importcpp: "Determinant", header: "math_Gauss.hxx".}
proc Invert*(this: math_Gauss; Inv: var math_Matrix) {.noSideEffect,
    importcpp: "Invert", header: "math_Gauss.hxx".}
proc Dump*(this: math_Gauss; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Gauss.hxx".}
proc `<<`*(o: var Standard_OStream; mG: math_Gauss): var Standard_OStream {.
    importcpp: "(# << #)", header: "math_Gauss.hxx".}