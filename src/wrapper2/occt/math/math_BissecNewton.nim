##  Created on: 1991-03-14
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Status,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_FunctionWithDerivative"
type
  math_BissecNewton* {.importcpp: "math_BissecNewton",
                      header: "math_BissecNewton.hxx", bycopy.} = object ## ! Constructor.
                                                                    ## ! @param
                                                                    ## theXTolerance - algorithm tolerance.


proc constructmath_BissecNewton*(theXTolerance: Standard_Real): math_BissecNewton {.
    constructor, importcpp: "math_BissecNewton(@)", header: "math_BissecNewton.hxx".}
proc Perform*(this: var math_BissecNewton; F: var math_FunctionWithDerivative;
             Bound1: Standard_Real; Bound2: Standard_Real;
             NbIterations: Standard_Integer = 100) {.importcpp: "Perform",
    header: "math_BissecNewton.hxx".}
proc IsSolutionReached*(this: var math_BissecNewton;
                       theFunction: var math_FunctionWithDerivative): Standard_Boolean {.
    importcpp: "IsSolutionReached", header: "math_BissecNewton.hxx".}
proc IsDone*(this: math_BissecNewton): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_BissecNewton.hxx".}
proc Root*(this: math_BissecNewton): Standard_Real {.noSideEffect, importcpp: "Root",
    header: "math_BissecNewton.hxx".}
proc Derivative*(this: math_BissecNewton): Standard_Real {.noSideEffect,
    importcpp: "Derivative", header: "math_BissecNewton.hxx".}
proc Value*(this: math_BissecNewton): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_BissecNewton.hxx".}
proc Dump*(this: math_BissecNewton; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BissecNewton.hxx".}
proc destroymath_BissecNewton*(this: var math_BissecNewton) {.
    importcpp: "#.~math_BissecNewton()", header: "math_BissecNewton.hxx".}