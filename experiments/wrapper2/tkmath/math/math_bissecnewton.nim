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


proc newMathBissecNewton*(theXTolerance: cfloat): MathBissecNewton {.cdecl,
    constructor, importcpp: "math_BissecNewton(@)", dynlib: tkmath.}
proc perform*(this: var MathBissecNewton; f: var MathFunctionWithDerivative;
             bound1: cfloat; bound2: cfloat; nbIterations: cint = 100) {.cdecl,
    importcpp: "Perform", dynlib: tkmath.}
proc isSolutionReached*(this: var MathBissecNewton;
                       theFunction: var MathFunctionWithDerivative): bool {.cdecl,
    importcpp: "IsSolutionReached", dynlib: tkmath.}
proc isDone*(this: MathBissecNewton): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    dynlib: tkmath.}
proc root*(this: MathBissecNewton): cfloat {.noSideEffect, cdecl, importcpp: "Root",
    dynlib: tkmath.}
proc derivative*(this: MathBissecNewton): cfloat {.noSideEffect, cdecl,
    importcpp: "Derivative", dynlib: tkmath.}
proc value*(this: MathBissecNewton): cfloat {.noSideEffect, cdecl, importcpp: "Value",
    dynlib: tkmath.}
proc dump*(this: MathBissecNewton; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}
proc destroyMathBissecNewton*(this: var MathBissecNewton) {.cdecl,
    importcpp: "#.~math_BissecNewton()", dynlib: tkmath.}