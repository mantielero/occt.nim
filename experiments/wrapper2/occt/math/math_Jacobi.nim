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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Matrix,
  ../Standard/Standard_Integer, math_Vector, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Matrix"
type
  math_Jacobi* {.importcpp: "math_Jacobi", header: "math_Jacobi.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Given
                                                                                ## a
                                                                                ## Real
                                                                                ## n
                                                                                ## X
                                                                                ## n
                                                                                ## matrix
                                                                                ## A,
                                                                                ## this
                                                                                ## constructor
                                                                                ## computes
                                                                                ## all
                                                                                ## its
                                                                                ##
                                                                                ## !
                                                                                ## eigenvalues
                                                                                ## and
                                                                                ## eigenvectors
                                                                                ## using
                                                                                ## the
                                                                                ## Jacobi
                                                                                ## method.
                                                                                ##
                                                                                ## !
                                                                                ## The
                                                                                ## exception
                                                                                ## NotSquare
                                                                                ## is
                                                                                ## raised
                                                                                ## if
                                                                                ## the
                                                                                ## matrix
                                                                                ## is
                                                                                ## not
                                                                                ## square.
                                                                                ##
                                                                                ## !
                                                                                ## No
                                                                                ## verification
                                                                                ## that
                                                                                ## the
                                                                                ## matrix
                                                                                ## A
                                                                                ## is
                                                                                ## really
                                                                                ## symmetric
                                                                                ## is
                                                                                ## done.


proc constructmath_Jacobi*(A: math_Matrix): math_Jacobi {.constructor,
    importcpp: "math_Jacobi(@)", header: "math_Jacobi.hxx".}
proc IsDone*(this: math_Jacobi): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_Jacobi.hxx".}
proc Values*(this: math_Jacobi): math_Vector {.noSideEffect, importcpp: "Values",
    header: "math_Jacobi.hxx".}
proc Value*(this: math_Jacobi; Num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_Jacobi.hxx".}
proc Vectors*(this: math_Jacobi): math_Matrix {.noSideEffect, importcpp: "Vectors",
    header: "math_Jacobi.hxx".}
proc Vector*(this: math_Jacobi; Num: Standard_Integer; V: var math_Vector) {.
    noSideEffect, importcpp: "Vector", header: "math_Jacobi.hxx".}
proc Dump*(this: math_Jacobi; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Jacobi.hxx".}