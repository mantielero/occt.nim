##  Created on: 1991-05-14
##  Created by: Laurent Painnot
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
discard "forward decl of math_Function"
type
  MathBracketedRoot* {.importcpp: "math_BracketedRoot",
                      header: "math_BracketedRoot.hxx", bycopy.} = object ## ! The Brent method is used to find the root of the function F between
                                                                     ## ! the bounds Bound1 and Bound2 on the function F.
                                                                     ## ! If
                                                                     ## F(Bound1)*F(Bound2) >0 the Brent method fails.
                                                                     ## ! The tolerance required for the root is given by Tolerance.
                                                                     ## ! The solution is found when :
                                                                     ## ! abs(Xi - Xi-1) <= Tolerance;
                                                                     ## ! The maximum number of iterations allowed is given by
                                                                     ## NbIterations.


proc newMathBracketedRoot*(f: var MathFunction; bound1: cfloat; bound2: cfloat;
                          tolerance: cfloat; nbIterations: cint = 100;
                          zeps: cfloat = 1.0e-12): MathBracketedRoot {.cdecl,
    constructor, importcpp: "math_BracketedRoot(@)", dynlib: tkmath.}
proc isDone*(this: MathBracketedRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc root*(this: MathBracketedRoot): cfloat {.noSideEffect, cdecl, importcpp: "Root",
    dynlib: tkmath.}
proc value*(this: MathBracketedRoot): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc nbIterations*(this: MathBracketedRoot): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", dynlib: tkmath.}
proc dump*(this: MathBracketedRoot; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}