##  Created on: 2005-12-20
##  Created by: Julia GERASIMOVA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Macro, ../Standard/Standard_Real

## ! Simple container storing two reals: value and weight

type
  math_ValueAndWeight* {.importcpp: "math_ValueAndWeight",
                        header: "math_ValueAndWeight.hxx", bycopy.} = object


proc constructmath_ValueAndWeight*(): math_ValueAndWeight {.constructor,
    importcpp: "math_ValueAndWeight(@)", header: "math_ValueAndWeight.hxx".}
proc constructmath_ValueAndWeight*(theValue: Standard_Real;
                                  theWeight: Standard_Real): math_ValueAndWeight {.
    constructor, importcpp: "math_ValueAndWeight(@)",
    header: "math_ValueAndWeight.hxx".}
proc Value*(this: math_ValueAndWeight): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_ValueAndWeight.hxx".}
proc Weight*(this: math_ValueAndWeight): Standard_Real {.noSideEffect,
    importcpp: "Weight", header: "math_ValueAndWeight.hxx".}
## ! Comparison operator for math_ValueAndWeight, needed for sorting algorithms

proc `<`*(theLeft: math_ValueAndWeight; theRight: math_ValueAndWeight): bool {.
    importcpp: "(# < #)", header: "math_ValueAndWeight.hxx".}