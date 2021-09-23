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
  ../TColStd/TColStd_SequenceOfReal, ../TColStd/TColStd_SequenceOfInteger,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of Standard_RangeError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of math_FunctionWithDerivative"
type
  math_FunctionRoots* {.importcpp: "math_FunctionRoots",
                       header: "math_FunctionRoots.hxx", bycopy.} = object ## ! Calculates all the real roots of a function F-K within the range
                                                                      ## ! A..B. whithout conditions on A and B
                                                                      ## ! A solution X is found when
                                                                      ## ! abs(Xi - Xi-1) <= Epsx and
                                                                      ## abs(F(Xi)-K) <= EpsF.
                                                                      ## ! The function is considered as null between A and B if
                                                                      ## ! abs(F-K) <= EpsNull within this range.


proc constructmath_FunctionRoots*(F: var math_FunctionWithDerivative;
                                 A: Standard_Real; B: Standard_Real;
                                 NbSample: Standard_Integer;
                                 EpsX: Standard_Real = 0.0;
                                 EpsF: Standard_Real = 0.0;
                                 EpsNull: Standard_Real = 0.0;
                                 K: Standard_Real = 0.0): math_FunctionRoots {.
    constructor, importcpp: "math_FunctionRoots(@)",
    header: "math_FunctionRoots.hxx".}
proc IsDone*(this: math_FunctionRoots): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_FunctionRoots.hxx".}
proc IsAllNull*(this: math_FunctionRoots): Standard_Boolean {.noSideEffect,
    importcpp: "IsAllNull", header: "math_FunctionRoots.hxx".}
proc NbSolutions*(this: math_FunctionRoots): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "math_FunctionRoots.hxx".}
proc Value*(this: math_FunctionRoots; Nieme: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "math_FunctionRoots.hxx".}
proc StateNumber*(this: math_FunctionRoots; Nieme: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "StateNumber", header: "math_FunctionRoots.hxx".}
proc Dump*(this: math_FunctionRoots; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionRoots.hxx".}