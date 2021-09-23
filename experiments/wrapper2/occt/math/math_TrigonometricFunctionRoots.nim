##  Created on: 1991-09-03
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_RangeError"
type
  math_TrigonometricFunctionRoots* {.importcpp: "math_TrigonometricFunctionRoots", header: "math_TrigonometricFunctionRoots.hxx",
                                    bycopy.} = object ## ! Given coefficients a, b, c, d , e, this constructor
                                                   ## ! performs the resolution of the equation above.
                                                   ## ! The solutions must be contained in [InfBound, SupBound].
                                                   ## ! InfBound and SupBound can be set by default to 0 and 2*PI.
                                                   ## ! is used by the constructors above.


proc constructmath_TrigonometricFunctionRoots*(A: Standard_Real; B: Standard_Real;
    C: Standard_Real; D: Standard_Real; E: Standard_Real; InfBound: Standard_Real;
    SupBound: Standard_Real): math_TrigonometricFunctionRoots {.constructor,
    importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc constructmath_TrigonometricFunctionRoots*(D: Standard_Real; E: Standard_Real;
    InfBound: Standard_Real; SupBound: Standard_Real): math_TrigonometricFunctionRoots {.
    constructor, importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc constructmath_TrigonometricFunctionRoots*(C: Standard_Real; D: Standard_Real;
    E: Standard_Real; InfBound: Standard_Real; SupBound: Standard_Real): math_TrigonometricFunctionRoots {.
    constructor, importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc IsDone*(this: math_TrigonometricFunctionRoots): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc InfiniteRoots*(this: math_TrigonometricFunctionRoots): Standard_Boolean {.
    noSideEffect, importcpp: "InfiniteRoots",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc Value*(this: math_TrigonometricFunctionRoots; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "math_TrigonometricFunctionRoots.hxx".}
proc NbSolutions*(this: math_TrigonometricFunctionRoots): Standard_Integer {.
    noSideEffect, importcpp: "NbSolutions",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc Dump*(this: math_TrigonometricFunctionRoots; o: var Standard_OStream) {.
    noSideEffect, importcpp: "Dump", header: "math_TrigonometricFunctionRoots.hxx".}