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

discard "forward decl of Standard_DimensionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of math_MultipleVarFunctionWithGradient"


proc newMathFRPR*(theFunction: MathMultipleVarFunctionWithGradient;
                 theTolerance: cfloat; theNbIterations: cint = 200;
                 theZEPS: cfloat = 1.0e-12): MathFRPR {.cdecl, constructor,
    importcpp: "math_FRPR(@)", header: "math_FRPR.hxx".}
proc destroyMathFRPR*(this: var MathFRPR) {.cdecl, importcpp: "#.~math_FRPR()",
                                        header: "math_FRPR.hxx".}
proc perform*(this: var MathFRPR;
             theFunction: var MathMultipleVarFunctionWithGradient;
             theStartingPoint: MathVector) {.cdecl, importcpp: "Perform",
    header: "math_FRPR.hxx".}
proc isSolutionReached*(this: var MathFRPR;
                       theFunction: var MathMultipleVarFunctionWithGradient): bool {.
    cdecl, importcpp: "IsSolutionReached", header: "math_FRPR.hxx".}
proc isDone*(this: MathFRPR): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                 header: "math_FRPR.hxx".}
proc location*(this: MathFRPR): MathVector {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_FRPR.hxx".}
proc location*(this: MathFRPR; loc: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_FRPR.hxx".}
proc minimum*(this: MathFRPR): cfloat {.noSideEffect, cdecl, importcpp: "Minimum",
                                    header: "math_FRPR.hxx".}
proc gradient*(this: MathFRPR): MathVector {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "math_FRPR.hxx".}
proc gradient*(this: MathFRPR; grad: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "math_FRPR.hxx".}
proc nbIterations*(this: MathFRPR): cint {.noSideEffect, cdecl,
                                       importcpp: "NbIterations", header: "math_FRPR.hxx".}
proc dump*(this: MathFRPR; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_FRPR.hxx".}
