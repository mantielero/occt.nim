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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, CPnts_MyGaussFunction, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../math/math_FunctionWithDerivative,
  CPnts_RealFunction, ../Standard/Standard_Address, ../Standard/Standard_Boolean

## ! Implements a function for the Newton algorithm to find the
## ! solution of Integral(F) = L
## ! (compute Length  and Derivative of the curve for Newton)

type
  CPnts_MyRootFunction* {.importcpp: "CPnts_MyRootFunction",
                         header: "CPnts_MyRootFunction.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructCPnts_MyRootFunction*(): CPnts_MyRootFunction {.constructor,
    importcpp: "CPnts_MyRootFunction(@)", header: "CPnts_MyRootFunction.hxx".}
proc Init*(this: var CPnts_MyRootFunction; F: CPnts_RealFunction; D: Standard_Address;
          Order: Standard_Integer) {.importcpp: "Init",
                                   header: "CPnts_MyRootFunction.hxx".}
proc Init*(this: var CPnts_MyRootFunction; X0: Standard_Real; L: Standard_Real) {.
    importcpp: "Init", header: "CPnts_MyRootFunction.hxx".}
proc Init*(this: var CPnts_MyRootFunction; X0: Standard_Real; L: Standard_Real;
          Tol: Standard_Real) {.importcpp: "Init",
                              header: "CPnts_MyRootFunction.hxx".}
proc Value*(this: var CPnts_MyRootFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "CPnts_MyRootFunction.hxx".}
proc Derivative*(this: var CPnts_MyRootFunction; X: Standard_Real;
                Df: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "CPnts_MyRootFunction.hxx".}
proc Values*(this: var CPnts_MyRootFunction; X: Standard_Real; F: var Standard_Real;
            Df: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "CPnts_MyRootFunction.hxx".}