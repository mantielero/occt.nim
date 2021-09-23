##  Created on: 1991-08-07
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
  ../Standard/Standard_Integer, ../Standard/Standard_Real, math_Vector,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"
type
  math_Householder* {.importcpp: "math_Householder",
                     header: "math_Householder.hxx", bycopy.} = object ## ! Given an input matrix A with n>= m, given an input matrix B
                                                                  ## ! this constructor performs the least square resolution of
                                                                  ## ! the set of linear equations A.X = B for each column of B.
                                                                  ## ! If a column norm is less than EPS, the resolution can't
                                                                  ## ! be done.
                                                                  ## ! Exception DimensionError is raised if the row number of B
                                                                  ## ! is different from the A row number.
                                                                  ## ! This method is used internally for each constructor
                                                                  ## ! above and can't be used directly.


proc constructmath_Householder*(A: math_Matrix; B: math_Matrix;
                               EPS: Standard_Real = 1.0e-20): math_Householder {.
    constructor, importcpp: "math_Householder(@)", header: "math_Householder.hxx".}
proc constructmath_Householder*(A: math_Matrix; B: math_Matrix;
                               lowerArow: Standard_Integer;
                               upperArow: Standard_Integer;
                               lowerAcol: Standard_Integer;
                               upperAcol: Standard_Integer;
                               EPS: Standard_Real = 1.0e-20): math_Householder {.
    constructor, importcpp: "math_Householder(@)", header: "math_Householder.hxx".}
proc constructmath_Householder*(A: math_Matrix; B: math_Vector;
                               EPS: Standard_Real = 1.0e-20): math_Householder {.
    constructor, importcpp: "math_Householder(@)", header: "math_Householder.hxx".}
proc IsDone*(this: math_Householder): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_Householder.hxx".}
proc Value*(this: math_Householder; sol: var math_Vector; Index: Standard_Integer = 1) {.
    noSideEffect, importcpp: "Value", header: "math_Householder.hxx".}
proc AllValues*(this: math_Householder): math_Matrix {.noSideEffect,
    importcpp: "AllValues", header: "math_Householder.hxx".}
proc Dump*(this: math_Householder; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Householder.hxx".}