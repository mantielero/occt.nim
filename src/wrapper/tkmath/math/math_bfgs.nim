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


proc newMathBFGS*(nbVariables: cint; tolerance: cfloat = 1.0e-8;
                 nbIterations: cint = 200; zeps: cfloat = 1.0e-12): MathBFGS {.cdecl,
    constructor, importcpp: "math_BFGS(@)", dynlib: tkmath.}
proc destroyMathBFGS*(this: var MathBFGS) {.cdecl, importcpp: "#.~math_BFGS()",
                                        dynlib: tkmath.}
proc setBoundary*(this: var MathBFGS; theLeftBorder: MathVector;
                 theRightBorder: MathVector) {.cdecl, importcpp: "SetBoundary",
    dynlib: tkmath.}
proc perform*(this: var MathBFGS; f: var MathMultipleVarFunctionWithGradient;
             startingPoint: MathVector) {.cdecl, importcpp: "Perform", dynlib: tkmath.}
proc isSolutionReached*(this: MathBFGS; f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, cdecl, importcpp: "IsSolutionReached", dynlib: tkmath.}
proc isDone*(this: MathBFGS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                 dynlib: tkmath.}
proc location*(this: MathBFGS): MathVector {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc location*(this: MathBFGS; loc: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc minimum*(this: MathBFGS): cfloat {.noSideEffect, cdecl, importcpp: "Minimum",
                                    dynlib: tkmath.}
proc gradient*(this: MathBFGS): MathVector {.noSideEffect, cdecl,
    importcpp: "Gradient", dynlib: tkmath.}
proc gradient*(this: MathBFGS; grad: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Gradient", dynlib: tkmath.}
proc nbIterations*(this: MathBFGS): cint {.noSideEffect, cdecl,
                                       importcpp: "NbIterations", dynlib: tkmath.}
proc dump*(this: MathBFGS; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}