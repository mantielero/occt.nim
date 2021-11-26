##  Created on: 1991-07-19
##  Created by: Isabelle GRIGNON
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

## ! Implements a function for the Newton algorithm to find the
## ! solution of Integral(F) = L
## ! (compute Length  and Derivative of the curve for Newton)

type
  CPntsMyRootFunction* {.importcpp: "CPnts_MyRootFunction",
                        header: "CPnts_MyRootFunction.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructCPntsMyRootFunction*(): CPntsMyRootFunction {.constructor,
    importcpp: "CPnts_MyRootFunction(@)", header: "CPnts_MyRootFunction.hxx".}
proc init*(this: var CPntsMyRootFunction; f: CPntsRealFunction; d: StandardAddress;
          order: cint) {.importcpp: "Init", header: "CPnts_MyRootFunction.hxx".}
proc init*(this: var CPntsMyRootFunction; x0: cfloat; L: cfloat) {.importcpp: "Init",
    header: "CPnts_MyRootFunction.hxx".}
proc init*(this: var CPntsMyRootFunction; x0: cfloat; L: cfloat; tol: cfloat) {.
    importcpp: "Init", header: "CPnts_MyRootFunction.hxx".}
proc value*(this: var CPntsMyRootFunction; x: cfloat; f: var cfloat): bool {.
    importcpp: "Value", header: "CPnts_MyRootFunction.hxx".}
proc derivative*(this: var CPntsMyRootFunction; x: cfloat; df: var cfloat): bool {.
    importcpp: "Derivative", header: "CPnts_MyRootFunction.hxx".}
proc values*(this: var CPntsMyRootFunction; x: cfloat; f: var cfloat; df: var cfloat): bool {.
    importcpp: "Values", header: "CPnts_MyRootFunction.hxx".}

























