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
  ../Standard/Standard_Handle, CPnts_RealFunction, ../Standard/Standard_Address,
  ../math/math_Function, ../Standard/Standard_Boolean, ../Standard/Standard_Real

## ! for implementation, compute values for Gauss

type
  CPnts_MyGaussFunction* {.importcpp: "CPnts_MyGaussFunction",
                          header: "CPnts_MyGaussFunction.hxx", bycopy.} = object of math_Function


proc constructCPnts_MyGaussFunction*(): CPnts_MyGaussFunction {.constructor,
    importcpp: "CPnts_MyGaussFunction(@)", header: "CPnts_MyGaussFunction.hxx".}
proc Init*(this: var CPnts_MyGaussFunction; F: CPnts_RealFunction; D: Standard_Address) {.
    importcpp: "Init", header: "CPnts_MyGaussFunction.hxx".}
proc Value*(this: var CPnts_MyGaussFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "CPnts_MyGaussFunction.hxx".}