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
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  MathBFGS* {.importcpp: "math_BFGS", header: "math_BFGS.hxx", bycopy.} = object ## !
                                                                         ## Initializes the
                                                                         ## computation of the minimum of a
                                                                         ## function with
                                                                         ## !
                                                                         ## NbVariables.
                                                                         ## !
                                                                         ## Tolerance, ZEPS and
                                                                         ## NbIterations are
                                                                         ## described in the method
                                                                         ## Perform.
                                                                         ## !
                                                                         ## Warning:
                                                                         ## ! A call to the Perform method must be made after this
                                                                         ## !
                                                                         ## initialization to
                                                                         ## effectively compute the minimum of the
                                                                         ## !
                                                                         ## function F.


proc constructMathBFGS*(nbVariables: int; tolerance: float = 1.0e-8;
                       nbIterations: int = 200; zeps: float = 1.0e-12): MathBFGS {.
    constructor, importcpp: "math_BFGS(@)", header: "math_BFGS.hxx".}
proc destroyMathBFGS*(this: var MathBFGS) {.importcpp: "#.~math_BFGS()",
                                        header: "math_BFGS.hxx".}
proc setBoundary*(this: var MathBFGS; theLeftBorder: MathVector;
                 theRightBorder: MathVector) {.importcpp: "SetBoundary",
    header: "math_BFGS.hxx".}
proc perform*(this: var MathBFGS; f: var MathMultipleVarFunctionWithGradient;
             startingPoint: MathVector) {.importcpp: "Perform",
                                        header: "math_BFGS.hxx".}
proc isSolutionReached*(this: MathBFGS; f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, importcpp: "IsSolutionReached", header: "math_BFGS.hxx".}
proc isDone*(this: MathBFGS): bool {.noSideEffect, importcpp: "IsDone",
                                 header: "math_BFGS.hxx".}
proc location*(this: MathBFGS): MathVector {.noSideEffect, importcpp: "Location",
    header: "math_BFGS.hxx".}
proc location*(this: MathBFGS; loc: var MathVector) {.noSideEffect,
    importcpp: "Location", header: "math_BFGS.hxx".}
proc minimum*(this: MathBFGS): float {.noSideEffect, importcpp: "Minimum",
                                   header: "math_BFGS.hxx".}
proc gradient*(this: MathBFGS): MathVector {.noSideEffect, importcpp: "Gradient",
    header: "math_BFGS.hxx".}
proc gradient*(this: MathBFGS; grad: var MathVector) {.noSideEffect,
    importcpp: "Gradient", header: "math_BFGS.hxx".}
proc nbIterations*(this: MathBFGS): int {.noSideEffect, importcpp: "NbIterations",
                                      header: "math_BFGS.hxx".}
proc dump*(this: MathBFGS; o: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "math_BFGS.hxx".}
