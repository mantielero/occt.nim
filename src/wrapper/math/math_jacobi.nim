import math_types
import ../standard/standard_types
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


proc newMathJacobi*(a: MathMatrix): MathJacobi {.cdecl, constructor,
    importcpp: "math_Jacobi(@)", header: "math_Jacobi.hxx".}
proc isDone*(this: MathJacobi): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                   header: "math_Jacobi.hxx".}
proc values*(this: MathJacobi): MathVector {.noSideEffect, cdecl, importcpp: "Values",
    header: "math_Jacobi.hxx".}
proc value*(this: MathJacobi; num: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_Jacobi.hxx".}
proc vectors*(this: MathJacobi): MathMatrix {.noSideEffect, cdecl,
    importcpp: "Vectors", header: "math_Jacobi.hxx".}
proc vector*(this: MathJacobi; num: cint; v: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Vector", header: "math_Jacobi.hxx".}
proc dump*(this: MathJacobi; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_Jacobi.hxx".}
