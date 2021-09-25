##  Created on: 1991-03-14
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
discard "forward decl of math_FunctionWithDerivative"
type
  MathBissecNewton* {.importcpp: "math_BissecNewton",
                     header: "math_BissecNewton.hxx", bycopy.} = object ## ! Constructor.
                                                                   ## ! @param theXTolerance - algorithm tolerance.


proc constructMathBissecNewton*(theXTolerance: float): MathBissecNewton {.
    constructor, importcpp: "math_BissecNewton(@)", header: "math_BissecNewton.hxx".}
proc perform*(this: var MathBissecNewton; f: var MathFunctionWithDerivative;
             bound1: float; bound2: float; nbIterations: int = 100) {.
    importcpp: "Perform", header: "math_BissecNewton.hxx".}
proc isSolutionReached*(this: var MathBissecNewton;
                       theFunction: var MathFunctionWithDerivative): bool {.
    importcpp: "IsSolutionReached", header: "math_BissecNewton.hxx".}
proc isDone*(this: MathBissecNewton): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_BissecNewton.hxx".}
proc root*(this: MathBissecNewton): float {.noSideEffect, importcpp: "Root",
                                        header: "math_BissecNewton.hxx".}
proc derivative*(this: MathBissecNewton): float {.noSideEffect,
    importcpp: "Derivative", header: "math_BissecNewton.hxx".}
proc value*(this: MathBissecNewton): float {.noSideEffect, importcpp: "Value",
    header: "math_BissecNewton.hxx".}
proc dump*(this: MathBissecNewton; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BissecNewton.hxx".}
proc destroyMathBissecNewton*(this: var MathBissecNewton) {.
    importcpp: "#.~math_BissecNewton()", header: "math_BissecNewton.hxx".}
