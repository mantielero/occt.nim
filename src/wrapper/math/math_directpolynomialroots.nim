{.experimental: "callOperator".}

import math_types
import ../../tkernel/standard/standard_types
##  Created on: 1991-05-13
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

discard "forward decl of Standard_RangeError"
discard "forward decl of StdFail_InfiniteSolutions"


proc newMathDirectPolynomialRoots*(a: cfloat; b: cfloat; c: cfloat; d: cfloat; e: cfloat): MathDirectPolynomialRoots {.
    cdecl, constructor, importcpp: "math_DirectPolynomialRoots(@)", header: "math_DirectPolynomialRoots.hxx".}
proc newMathDirectPolynomialRoots*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): MathDirectPolynomialRoots {.
    cdecl, constructor, importcpp: "math_DirectPolynomialRoots(@)", header: "math_DirectPolynomialRoots.hxx".}
proc newMathDirectPolynomialRoots*(a: cfloat; b: cfloat; c: cfloat): MathDirectPolynomialRoots {.
    cdecl, constructor, importcpp: "math_DirectPolynomialRoots(@)", header: "math_DirectPolynomialRoots.hxx".}
proc newMathDirectPolynomialRoots*(a: cfloat; b: cfloat): MathDirectPolynomialRoots {.
    cdecl, constructor, importcpp: "math_DirectPolynomialRoots(@)", header: "math_DirectPolynomialRoots.hxx".}
proc isDone*(this: MathDirectPolynomialRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_DirectPolynomialRoots.hxx".}
proc infiniteRoots*(this: MathDirectPolynomialRoots): bool {.noSideEffect, cdecl,
    importcpp: "InfiniteRoots", header: "math_DirectPolynomialRoots.hxx".}
proc nbSolutions*(this: MathDirectPolynomialRoots): cint {.noSideEffect, cdecl,
    importcpp: "NbSolutions", header: "math_DirectPolynomialRoots.hxx".}
proc value*(this: MathDirectPolynomialRoots; nieme: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Value", header: "math_DirectPolynomialRoots.hxx".}
proc dump*(this: MathDirectPolynomialRoots; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "math_DirectPolynomialRoots.hxx".}
