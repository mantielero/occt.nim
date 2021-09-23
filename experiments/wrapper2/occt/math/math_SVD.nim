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
  math_Vector, ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_Matrix"
type
  math_SVD* {.importcpp: "math_SVD", header: "math_SVD.hxx", bycopy.} = object ## ! Given as input an n X m matrix A with n < m, n = m or n > m
                                                                       ## ! this
                                                                       ## constructor performs the Singular Value
                                                                       ## Decomposition.


proc constructmath_SVD*(A: math_Matrix): math_SVD {.constructor,
    importcpp: "math_SVD(@)", header: "math_SVD.hxx".}
proc IsDone*(this: math_SVD): Standard_Boolean {.noSideEffect, importcpp: "IsDone",
    header: "math_SVD.hxx".}
proc Solve*(this: var math_SVD; B: math_Vector; X: var math_Vector;
           Eps: Standard_Real = 1.0e-6) {.importcpp: "Solve", header: "math_SVD.hxx".}
proc PseudoInverse*(this: var math_SVD; Inv: var math_Matrix;
                   Eps: Standard_Real = 1.0e-6) {.importcpp: "PseudoInverse",
    header: "math_SVD.hxx".}
proc Dump*(this: math_SVD; o: var Standard_OStream) {.noSideEffect, importcpp: "Dump",
    header: "math_SVD.hxx".}