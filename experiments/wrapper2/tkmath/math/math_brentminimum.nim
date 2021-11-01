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
  MathBrentMinimum* {.importcpp: "math_BrentMinimum",
                     header: "math_BrentMinimum.hxx", bycopy.} = object ## ! This constructor should be used in a sub-class to initialize
                                                                   ## ! correctly all the fields of this class.


proc newMathBrentMinimum*(tolX: cfloat; nbIterations: cint = 100;
                         zeps: cfloat = 1.0e-12): MathBrentMinimum {.cdecl,
    constructor, importcpp: "math_BrentMinimum(@)", dynlib: tkmath.}
proc newMathBrentMinimum*(tolX: cfloat; fbx: cfloat; nbIterations: cint = 100;
                         zeps: cfloat = 1.0e-12): MathBrentMinimum {.cdecl,
    constructor, importcpp: "math_BrentMinimum(@)", dynlib: tkmath.}
proc destroyMathBrentMinimum*(this: var MathBrentMinimum) {.cdecl,
    importcpp: "#.~math_BrentMinimum()", dynlib: tkmath.}
proc perform*(this: var MathBrentMinimum; f: var MathFunction; ax: cfloat; bx: cfloat;
             cx: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkmath.}
proc isSolutionReached*(this: var MathBrentMinimum; theFunction: var MathFunction): bool {.
    cdecl, importcpp: "IsSolutionReached", dynlib: tkmath.}
proc isDone*(this: MathBrentMinimum): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    dynlib: tkmath.}
proc location*(this: MathBrentMinimum): cfloat {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkmath.}
proc minimum*(this: MathBrentMinimum): cfloat {.noSideEffect, cdecl,
    importcpp: "Minimum", dynlib: tkmath.}
proc nbIterations*(this: MathBrentMinimum): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", dynlib: tkmath.}
proc dump*(this: MathBrentMinimum; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}