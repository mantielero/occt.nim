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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"
type
  MathHouseholder* {.importcpp: "math_Householder", header: "math_Householder.hxx",
                    bycopy.} = object ## ! Given an input matrix A with n>= m, given an input matrix B
                                   ## ! this constructor performs the least square resolution of
                                   ## ! the set of linear equations A.X = B for each column of B.
                                   ## ! If a column norm is less than EPS, the resolution can't
                                   ## ! be done.
                                   ## ! Exception DimensionError is raised if the row number of B
                                   ## ! is different from the A row number.
                                   ## ! This method is used internally for each constructor
                                   ## ! above and can't be used directly.


proc constructMathHouseholder*(a: MathMatrix; b: MathMatrix; eps: cfloat = 1.0e-20): MathHouseholder {.
    constructor, importcpp: "math_Householder(@)", header: "math_Householder.hxx".}
proc constructMathHouseholder*(a: MathMatrix; b: MathMatrix; lowerArow: cint;
                              upperArow: cint; lowerAcol: cint; upperAcol: cint;
                              eps: cfloat = 1.0e-20): MathHouseholder {.constructor,
    importcpp: "math_Householder(@)", header: "math_Householder.hxx".}
proc constructMathHouseholder*(a: MathMatrix; b: MathVector; eps: cfloat = 1.0e-20): MathHouseholder {.
    constructor, importcpp: "math_Householder(@)", header: "math_Householder.hxx".}
proc isDone*(this: MathHouseholder): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "math_Householder.hxx".}
proc value*(this: MathHouseholder; sol: var MathVector; index: cint = 1) {.noSideEffect,
    importcpp: "Value", header: "math_Householder.hxx".}
proc allValues*(this: MathHouseholder): MathMatrix {.noSideEffect,
    importcpp: "AllValues", header: "math_Householder.hxx".}
proc dump*(this: MathHouseholder; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Householder.hxx".}

























