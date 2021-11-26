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

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Matrix"
type
  MathJacobi* {.importcpp: "math_Jacobi", header: "math_Jacobi.hxx", bycopy.} = object ## !
                                                                               ## Given a
                                                                               ## Real n X n
                                                                               ## matrix
                                                                               ## A,
                                                                               ## this
                                                                               ## constructor
                                                                               ## computes
                                                                               ## all
                                                                               ## its
                                                                               ## !
                                                                               ## eigenvalues
                                                                               ## and
                                                                               ## eigenvectors
                                                                               ## using
                                                                               ## the
                                                                               ## Jacobi
                                                                               ## method.
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
                                                                               ## !
                                                                               ## No
                                                                               ## verification
                                                                               ## that
                                                                               ## the
                                                                               ## matrix A
                                                                               ## is
                                                                               ## really
                                                                               ## symmetric
                                                                               ## is
                                                                               ## done.


proc constructMathJacobi*(a: MathMatrix): MathJacobi {.constructor,
    importcpp: "math_Jacobi(@)", header: "math_Jacobi.hxx".}
proc isDone*(this: MathJacobi): bool {.noSideEffect, importcpp: "IsDone",
                                   header: "math_Jacobi.hxx".}
proc values*(this: MathJacobi): MathVector {.noSideEffect, importcpp: "Values",
    header: "math_Jacobi.hxx".}
proc value*(this: MathJacobi; num: cint): cfloat {.noSideEffect, importcpp: "Value",
    header: "math_Jacobi.hxx".}
proc vectors*(this: MathJacobi): MathMatrix {.noSideEffect, importcpp: "Vectors",
    header: "math_Jacobi.hxx".}
proc vector*(this: MathJacobi; num: cint; v: var MathVector) {.noSideEffect,
    importcpp: "Vector", header: "math_Jacobi.hxx".}
proc dump*(this: MathJacobi; o: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "math_Jacobi.hxx".}

























