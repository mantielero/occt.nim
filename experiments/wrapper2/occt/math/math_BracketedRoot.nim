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


proc constructMathBracketedRoot*(f: var MathFunction; bound1: float; bound2: float;
                                tolerance: float; nbIterations: int = 100;
                                zeps: float = 1.0e-12): MathBracketedRoot {.
    constructor, importcpp: "math_BracketedRoot(@)",
    header: "math_BracketedRoot.hxx".}
proc isDone*(this: MathBracketedRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_BracketedRoot.hxx".}
proc root*(this: MathBracketedRoot): float {.noSideEffect, importcpp: "Root",
    header: "math_BracketedRoot.hxx".}
proc value*(this: MathBracketedRoot): float {.noSideEffect, importcpp: "Value",
    header: "math_BracketedRoot.hxx".}
proc nbIterations*(this: MathBracketedRoot): int {.noSideEffect,
    importcpp: "NbIterations", header: "math_BracketedRoot.hxx".}
proc dump*(this: MathBracketedRoot; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BracketedRoot.hxx".}
