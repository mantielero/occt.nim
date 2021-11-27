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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_Matrix"
type
  MathGaussLeastSquare* {.importcpp: "math_GaussLeastSquare",
                         header: "math_GaussLeastSquare.hxx", bycopy.} = object ## ! Given an input n X m
                                                                           ## matrix A with n >= m this
                                                                           ## constructor
                                                                           ## !
                                                                           ## performs the LU
                                                                           ## decomposition with
                                                                           ## partial
                                                                           ## pivoting
                                                                           ## !
                                                                           ## (interchange of rows) of the
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
                                                                           ## largest pivot found is less than
                                                                           ## MinPivot the
                                                                           ## matrix <A>
                                                                           ## ! is
                                                                           ## considered as
                                                                           ## singular.


proc newMathGaussLeastSquare*(a: MathMatrix; minPivot: cfloat = 1.0e-20): MathGaussLeastSquare {.
    cdecl, constructor, importcpp: "math_GaussLeastSquare(@)", header: "math_GaussLeastSquare.hxx".}
proc isDone*(this: MathGaussLeastSquare): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_GaussLeastSquare.hxx".}
proc solve*(this: MathGaussLeastSquare; b: MathVector; x: var MathVector) {.
    noSideEffect, cdecl, importcpp: "Solve", header: "math_GaussLeastSquare.hxx".}
proc dump*(this: MathGaussLeastSquare; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_GaussLeastSquare.hxx".}