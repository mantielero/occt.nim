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

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"


proc newMathBracketMinimum*(a: cfloat; b: cfloat): MathBracketMinimum {.cdecl,
    constructor, importcpp: "math_BracketMinimum(@)", header: "math_BracketMinimum.hxx".}
proc newMathBracketMinimum*(f: var MathFunction; a: cfloat; b: cfloat): MathBracketMinimum {.
    cdecl, constructor, importcpp: "math_BracketMinimum(@)", header: "math_BracketMinimum.hxx".}
proc newMathBracketMinimum*(f: var MathFunction; a: cfloat; b: cfloat; fa: cfloat): MathBracketMinimum {.
    cdecl, constructor, importcpp: "math_BracketMinimum(@)", header: "math_BracketMinimum.hxx".}
proc newMathBracketMinimum*(f: var MathFunction; a: cfloat; b: cfloat; fa: cfloat;
                           fb: cfloat): MathBracketMinimum {.cdecl, constructor,
    importcpp: "math_BracketMinimum(@)", header: "math_BracketMinimum.hxx".}
proc setLimits*(this: var MathBracketMinimum; theLeft: cfloat; theRight: cfloat) {.
    cdecl, importcpp: "SetLimits", header: "math_BracketMinimum.hxx".}
proc setFA*(this: var MathBracketMinimum; theValue: cfloat) {.cdecl,
    importcpp: "SetFA", header: "math_BracketMinimum.hxx".}
proc setFB*(this: var MathBracketMinimum; theValue: cfloat) {.cdecl,
    importcpp: "SetFB", header: "math_BracketMinimum.hxx".}
proc perform*(this: var MathBracketMinimum; f: var MathFunction) {.cdecl,
    importcpp: "Perform", header: "math_BracketMinimum.hxx".}
proc isDone*(this: MathBracketMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_BracketMinimum.hxx".}
proc values*(this: MathBracketMinimum; a: var cfloat; b: var cfloat; c: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Values", header: "math_BracketMinimum.hxx".}
proc functionValues*(this: MathBracketMinimum; fa: var cfloat; fb: var cfloat;
                    fc: var cfloat) {.noSideEffect, cdecl,
                                   importcpp: "FunctionValues", header: "math_BracketMinimum.hxx".}
proc dump*(this: MathBracketMinimum; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_BracketMinimum.hxx".}
