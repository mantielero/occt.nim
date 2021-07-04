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
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_Matrix"
type
  math_GaussLeastSquare* {.importcpp: "math_GaussLeastSquare",
                          header: "math_GaussLeastSquare.hxx", bycopy.} = object ## !
                                                                            ## Given an
                                                                            ## input n X m
                                                                            ## matrix A with n >= m this
                                                                            ## constructor
                                                                            ## !
                                                                            ## performs the LU
                                                                            ## decomposition with
                                                                            ## partial
                                                                            ## pivoting
                                                                            ## !
                                                                            ## (interchange of
                                                                            ## rows) of the
                                                                            ## matrix AA =
                                                                            ## A.Transposed() * A;
                                                                            ## ! This LU
                                                                            ## decomposition is
                                                                            ## stored
                                                                            ## internally and may be used
                                                                            ## ! to do
                                                                            ## subsequent
                                                                            ## calculation.
                                                                            ## ! If the
                                                                            ## largest
                                                                            ## pivot
                                                                            ## found is less than
                                                                            ## MinPivot the
                                                                            ## matrix <A>
                                                                            ## ! is
                                                                            ## considered as
                                                                            ## singular.


proc constructmath_GaussLeastSquare*(A: math_Matrix;
                                    MinPivot: Standard_Real = 1.0e-20): math_GaussLeastSquare {.
    constructor, importcpp: "math_GaussLeastSquare(@)",
    header: "math_GaussLeastSquare.hxx".}
proc IsDone*(this: math_GaussLeastSquare): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_GaussLeastSquare.hxx".}
proc Solve*(this: math_GaussLeastSquare; B: math_Vector; X: var math_Vector) {.
    noSideEffect, importcpp: "Solve", header: "math_GaussLeastSquare.hxx".}
proc Dump*(this: math_GaussLeastSquare; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_GaussLeastSquare.hxx".}