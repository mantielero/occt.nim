import math_types
import ../../tkernel/message/message_types
import ../../tkernel/message/message_progressrange
import ../../tkernel/standard/standard_types
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

discard "forward decl of math_NotSquare"
discard "forward decl of Standard_DimensionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Matrix"


proc newMathGauss*(a: MathMatrix; minPivot: cfloat = 1.0e-20;
                  theProgress: MessageProgressRange = newMessageProgressRange()): MathGauss {.
    cdecl, constructor, importcpp: "math_Gauss(@)", header: "math_Gauss.hxx".}
proc isDone*(this: MathGauss): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                  header: "math_Gauss.hxx".}
proc solve*(this: MathGauss; b: MathVector; x: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Solve", header: "math_Gauss.hxx".}
proc solve*(this: MathGauss; b: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Solve", header: "math_Gauss.hxx".}
proc determinant*(this: MathGauss): cfloat {.noSideEffect, cdecl,
    importcpp: "Determinant", header: "math_Gauss.hxx".}
proc invert*(this: MathGauss; inv: var MathMatrix) {.noSideEffect, cdecl,
    importcpp: "Invert", header: "math_Gauss.hxx".}
proc dump*(this: MathGauss; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_Gauss.hxx".}
proc `<<`*(o: var StandardOStream; mG: MathGauss): var StandardOStream {.cdecl,
    importcpp: "(# << #)", header: "math_Gauss.hxx".}
