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
  MathSVD* {.importcpp: "math_SVD", header: "math_SVD.hxx", bycopy.} = object ## ! Given as input an n X m matrix A with n < m, n = m or n > m
                                                                      ## ! this
                                                                      ## constructor performs the Singular Value
                                                                      ## Decomposition.


proc newMathSVD*(a: MathMatrix): MathSVD {.cdecl, constructor,
                                       importcpp: "math_SVD(@)", dynlib: tkmath.}
proc isDone*(this: MathSVD): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                dynlib: tkmath.}
proc solve*(this: var MathSVD; b: MathVector; x: var MathVector; eps: cfloat = 1.0e-6) {.
    cdecl, importcpp: "Solve", dynlib: tkmath.}
proc pseudoInverse*(this: var MathSVD; inv: var MathMatrix; eps: cfloat = 1.0e-6) {.cdecl,
    importcpp: "PseudoInverse", dynlib: tkmath.}
proc dump*(this: MathSVD; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}