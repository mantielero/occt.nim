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
type
  MathFRPR* {.importcpp: "math_FRPR", header: "math_FRPR.hxx", bycopy.} = object ## !
                                                                         ## Initializes the
                                                                         ## computation of the minimum of F.
                                                                         ## !
                                                                         ## Warning:
                                                                         ## constructor does not perform
                                                                         ## computations.


proc constructMathFRPR*(theFunction: MathMultipleVarFunctionWithGradient;
                       theTolerance: float; theNbIterations: int = 200;
                       theZEPS: float = 1.0e-12): MathFRPR {.constructor,
    importcpp: "math_FRPR(@)", header: "math_FRPR.hxx".}
proc destroyMathFRPR*(this: var MathFRPR) {.importcpp: "#.~math_FRPR()",
                                        header: "math_FRPR.hxx".}
proc perform*(this: var MathFRPR;
             theFunction: var MathMultipleVarFunctionWithGradient;
             theStartingPoint: MathVector) {.importcpp: "Perform",
    header: "math_FRPR.hxx".}
proc isSolutionReached*(this: var MathFRPR;
                       theFunction: var MathMultipleVarFunctionWithGradient): bool {.
    importcpp: "IsSolutionReached", header: "math_FRPR.hxx".}
proc isDone*(this: MathFRPR): bool {.noSideEffect, importcpp: "IsDone",
                                 header: "math_FRPR.hxx".}
proc location*(this: MathFRPR): MathVector {.noSideEffect, importcpp: "Location",
    header: "math_FRPR.hxx".}
proc location*(this: MathFRPR; loc: var MathVector) {.noSideEffect,
    importcpp: "Location", header: "math_FRPR.hxx".}
proc minimum*(this: MathFRPR): float {.noSideEffect, importcpp: "Minimum",
                                   header: "math_FRPR.hxx".}
proc gradient*(this: MathFRPR): MathVector {.noSideEffect, importcpp: "Gradient",
    header: "math_FRPR.hxx".}
proc gradient*(this: MathFRPR; grad: var MathVector) {.noSideEffect,
    importcpp: "Gradient", header: "math_FRPR.hxx".}
proc nbIterations*(this: MathFRPR): int {.noSideEffect, importcpp: "NbIterations",
                                      header: "math_FRPR.hxx".}
proc dump*(this: MathFRPR; o: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "math_FRPR.hxx".}
