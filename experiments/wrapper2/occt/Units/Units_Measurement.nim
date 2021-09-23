##  Created on: 1992-06-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString

discard "forward decl of Units_Token"
type
  Units_Measurement* {.importcpp: "Units_Measurement",
                      header: "Units_Measurement.hxx", bycopy.} = object ## ! It is the empty constructor of the class.


proc constructUnits_Measurement*(): Units_Measurement {.constructor,
    importcpp: "Units_Measurement(@)", header: "Units_Measurement.hxx".}
proc constructUnits_Measurement*(avalue: Standard_Real; atoken: handle[Units_Token]): Units_Measurement {.
    constructor, importcpp: "Units_Measurement(@)", header: "Units_Measurement.hxx".}
proc constructUnits_Measurement*(avalue: Standard_Real; aunit: Standard_CString): Units_Measurement {.
    constructor, importcpp: "Units_Measurement(@)", header: "Units_Measurement.hxx".}
proc Convert*(this: var Units_Measurement; aunit: Standard_CString) {.
    importcpp: "Convert", header: "Units_Measurement.hxx".}
proc Integer*(this: Units_Measurement): Units_Measurement {.noSideEffect,
    importcpp: "Integer", header: "Units_Measurement.hxx".}
proc Fractional*(this: Units_Measurement): Units_Measurement {.noSideEffect,
    importcpp: "Fractional", header: "Units_Measurement.hxx".}
proc Measurement*(this: Units_Measurement): Standard_Real {.noSideEffect,
    importcpp: "Measurement", header: "Units_Measurement.hxx".}
proc Token*(this: Units_Measurement): handle[Units_Token] {.noSideEffect,
    importcpp: "Token", header: "Units_Measurement.hxx".}
proc Add*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "Add", header: "Units_Measurement.hxx".}
proc `+`*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "(# + #)", header: "Units_Measurement.hxx".}
proc Subtract*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "Subtract", header: "Units_Measurement.hxx".}
proc `-`*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "(# - #)", header: "Units_Measurement.hxx".}
proc Multiply*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "Multiply", header: "Units_Measurement.hxx".}
proc `*`*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "(# * #)", header: "Units_Measurement.hxx".}
proc Multiply*(this: Units_Measurement; avalue: Standard_Real): Units_Measurement {.
    noSideEffect, importcpp: "Multiply", header: "Units_Measurement.hxx".}
proc `*`*(this: Units_Measurement; avalue: Standard_Real): Units_Measurement {.
    noSideEffect, importcpp: "(# * #)", header: "Units_Measurement.hxx".}
proc Divide*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "Divide", header: "Units_Measurement.hxx".}
proc `/`*(this: Units_Measurement; ameasurement: Units_Measurement): Units_Measurement {.
    noSideEffect, importcpp: "(# / #)", header: "Units_Measurement.hxx".}
proc Divide*(this: Units_Measurement; avalue: Standard_Real): Units_Measurement {.
    noSideEffect, importcpp: "Divide", header: "Units_Measurement.hxx".}
proc `/`*(this: Units_Measurement; avalue: Standard_Real): Units_Measurement {.
    noSideEffect, importcpp: "(# / #)", header: "Units_Measurement.hxx".}
proc Power*(this: Units_Measurement; anexponent: Standard_Real): Units_Measurement {.
    noSideEffect, importcpp: "Power", header: "Units_Measurement.hxx".}
proc HasToken*(this: Units_Measurement): Standard_Boolean {.noSideEffect,
    importcpp: "HasToken", header: "Units_Measurement.hxx".}
proc Dump*(this: Units_Measurement) {.noSideEffect, importcpp: "Dump",
                                   header: "Units_Measurement.hxx".}