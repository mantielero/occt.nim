import math_types
import ../standard/standard_types
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


proc newMathBracketedRoot*(f: var MathFunction; bound1: cfloat; bound2: cfloat;
                          tolerance: cfloat; nbIterations: cint = 100;
                          zeps: cfloat = 1.0e-12): MathBracketedRoot {.cdecl,
    constructor, importcpp: "math_BracketedRoot(@)", header: "math_BracketedRoot.hxx".}
proc isDone*(this: MathBracketedRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_BracketedRoot.hxx".}
proc root*(this: MathBracketedRoot): cfloat {.noSideEffect, cdecl, importcpp: "Root",
    header: "math_BracketedRoot.hxx".}
proc value*(this: MathBracketedRoot): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "math_BracketedRoot.hxx".}
proc nbIterations*(this: MathBracketedRoot): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", header: "math_BracketedRoot.hxx".}
proc dump*(this: MathBracketedRoot; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_BracketedRoot.hxx".}
