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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

discard "forward decl of Standard_RangeError"
discard "forward decl of StdFail_InfiniteSolutions"
type
  math_DirectPolynomialRoots* {.importcpp: "math_DirectPolynomialRoots",
                               header: "math_DirectPolynomialRoots.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## computes
                                                                                      ## all
                                                                                      ## the
                                                                                      ## real
                                                                                      ## roots
                                                                                      ## of
                                                                                      ## the
                                                                                      ## polynomial
                                                                                      ##
                                                                                      ## !
                                                                                      ## Ax4
                                                                                      ## +
                                                                                      ## Bx3
                                                                                      ## +
                                                                                      ## Cx2
                                                                                      ## +
                                                                                      ## Dx
                                                                                      ## +
                                                                                      ## E
                                                                                      ## using
                                                                                      ## a
                                                                                      ## direct
                                                                                      ## method.


proc constructmath_DirectPolynomialRoots*(A: Standard_Real; B: Standard_Real;
    C: Standard_Real; D: Standard_Real; E: Standard_Real): math_DirectPolynomialRoots {.
    constructor, importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc constructmath_DirectPolynomialRoots*(A: Standard_Real; B: Standard_Real;
    C: Standard_Real; D: Standard_Real): math_DirectPolynomialRoots {.constructor,
    importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc constructmath_DirectPolynomialRoots*(A: Standard_Real; B: Standard_Real;
    C: Standard_Real): math_DirectPolynomialRoots {.constructor,
    importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc constructmath_DirectPolynomialRoots*(A: Standard_Real; B: Standard_Real): math_DirectPolynomialRoots {.
    constructor, importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc IsDone*(this: math_DirectPolynomialRoots): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_DirectPolynomialRoots.hxx".}
proc InfiniteRoots*(this: math_DirectPolynomialRoots): Standard_Boolean {.
    noSideEffect, importcpp: "InfiniteRoots",
    header: "math_DirectPolynomialRoots.hxx".}
proc NbSolutions*(this: math_DirectPolynomialRoots): Standard_Integer {.
    noSideEffect, importcpp: "NbSolutions",
    header: "math_DirectPolynomialRoots.hxx".}
proc Value*(this: math_DirectPolynomialRoots; Nieme: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "math_DirectPolynomialRoots.hxx".}
proc Dump*(this: math_DirectPolynomialRoots; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_DirectPolynomialRoots.hxx".}