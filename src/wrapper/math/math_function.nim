import math_types

##  Created on: 1991-05-06
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

## ! This abstract class describes the virtual functions
## ! associated with a Function of a single variable.



proc destroyMathFunction*(this: var MathFunction) {.cdecl,
    importcpp: "#.~math_Function()", header: "math_Function.hxx".}
proc value*(this: var MathFunction; x: cfloat; f: var cfloat): bool {.cdecl,
    importcpp: "Value", header: "math_Function.hxx".}
proc getStateNumber*(this: var MathFunction): cint {.cdecl,
    importcpp: "GetStateNumber", header: "math_Function.hxx".}
