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
type
  MathBracketMinimum* {.importcpp: "math_BracketMinimum",
                       header: "math_BracketMinimum.hxx", bycopy.} = object ## !
                                                                       ## Constructor preparing A and B
                                                                       ## parameters only. It does not perform the job.
                                                                       ## ! Limit the given value to become within the range [myLeft, myRight].


proc newMathBracketMinimum*(a: cfloat; b: cfloat): MathBracketMinimum {.cdecl,
    constructor, importcpp: "math_BracketMinimum(@)", dynlib: tkmath.}
proc newMathBracketMinimum*(f: var MathFunction; a: cfloat; b: cfloat): MathBracketMinimum {.
    cdecl, constructor, importcpp: "math_BracketMinimum(@)", dynlib: tkmath.}
proc newMathBracketMinimum*(f: var MathFunction; a: cfloat; b: cfloat; fa: cfloat): MathBracketMinimum {.
    cdecl, constructor, importcpp: "math_BracketMinimum(@)", dynlib: tkmath.}
proc newMathBracketMinimum*(f: var MathFunction; a: cfloat; b: cfloat; fa: cfloat;
                           fb: cfloat): MathBracketMinimum {.cdecl, constructor,
    importcpp: "math_BracketMinimum(@)", dynlib: tkmath.}
proc setLimits*(this: var MathBracketMinimum; theLeft: cfloat; theRight: cfloat) {.
    cdecl, importcpp: "SetLimits", dynlib: tkmath.}
proc setFA*(this: var MathBracketMinimum; theValue: cfloat) {.cdecl,
    importcpp: "SetFA", dynlib: tkmath.}
proc setFB*(this: var MathBracketMinimum; theValue: cfloat) {.cdecl,
    importcpp: "SetFB", dynlib: tkmath.}
proc perform*(this: var MathBracketMinimum; f: var MathFunction) {.cdecl,
    importcpp: "Perform", dynlib: tkmath.}
proc isDone*(this: MathBracketMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc values*(this: MathBracketMinimum; a: var cfloat; b: var cfloat; c: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Values", dynlib: tkmath.}
proc functionValues*(this: MathBracketMinimum; fa: var cfloat; fb: var cfloat;
                    fc: var cfloat) {.noSideEffect, cdecl,
                                   importcpp: "FunctionValues", dynlib: tkmath.}
proc dump*(this: MathBracketMinimum; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}