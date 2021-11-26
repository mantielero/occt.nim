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

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_NotSquare"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_Matrix"
type
  MathCrout* {.importcpp: "math_Crout", header: "math_Crout.hxx", bycopy.} = object ## !
                                                                            ## Given an
                                                                            ## input
                                                                            ## matrix A, this
                                                                            ## algorithm
                                                                            ## inverts A by the
                                                                            ## !
                                                                            ## Crout
                                                                            ## algorithm. The user can give only the
                                                                            ## inferior
                                                                            ## !
                                                                            ## triangle for the
                                                                            ## implementation.
                                                                            ## ! A can be
                                                                            ## decomposed like
                                                                            ## this:
                                                                            ## ! A = L * D * T(L)
                                                                            ## where L is
                                                                            ## triangular
                                                                            ## inferior and D is
                                                                            ## !
                                                                            ## diagonal.
                                                                            ## ! If one
                                                                            ## element of A is less than
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


proc constructMathCrout*(a: MathMatrix; minPivot: cfloat = 1.0e-20): MathCrout {.
    constructor, importcpp: "math_Crout(@)", header: "math_Crout.hxx".}
proc isDone*(this: MathCrout): bool {.noSideEffect, importcpp: "IsDone",
                                  header: "math_Crout.hxx".}
proc solve*(this: MathCrout; b: MathVector; x: var MathVector) {.noSideEffect,
    importcpp: "Solve", header: "math_Crout.hxx".}
proc inverse*(this: MathCrout): MathMatrix {.noSideEffect, importcpp: "Inverse",
    header: "math_Crout.hxx".}
proc invert*(this: MathCrout; inv: var MathMatrix) {.noSideEffect, importcpp: "Invert",
    header: "math_Crout.hxx".}
proc determinant*(this: MathCrout): cfloat {.noSideEffect, importcpp: "Determinant",
    header: "math_Crout.hxx".}
proc dump*(this: MathCrout; o: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "math_Crout.hxx".}

























