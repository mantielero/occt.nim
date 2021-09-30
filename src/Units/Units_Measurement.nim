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

discard "forward decl of Units_Token"
type
  UnitsMeasurement* {.importcpp: "Units_Measurement",
                     header: "Units_Measurement.hxx", bycopy.} = object ## ! It is the empty constructor of the class.


proc constructUnitsMeasurement*(): UnitsMeasurement {.constructor,
    importcpp: "Units_Measurement(@)", header: "Units_Measurement.hxx".}
proc constructUnitsMeasurement*(avalue: cfloat; atoken: Handle[UnitsToken]): UnitsMeasurement {.
    constructor, importcpp: "Units_Measurement(@)", header: "Units_Measurement.hxx".}
proc constructUnitsMeasurement*(avalue: cfloat; aunit: StandardCString): UnitsMeasurement {.
    constructor, importcpp: "Units_Measurement(@)", header: "Units_Measurement.hxx".}
proc convert*(this: var UnitsMeasurement; aunit: StandardCString) {.
    importcpp: "Convert", header: "Units_Measurement.hxx".}
proc integer*(this: UnitsMeasurement): UnitsMeasurement {.noSideEffect,
    importcpp: "Integer", header: "Units_Measurement.hxx".}
proc fractional*(this: UnitsMeasurement): UnitsMeasurement {.noSideEffect,
    importcpp: "Fractional", header: "Units_Measurement.hxx".}
proc measurement*(this: UnitsMeasurement): cfloat {.noSideEffect,
    importcpp: "Measurement", header: "Units_Measurement.hxx".}
proc token*(this: UnitsMeasurement): Handle[UnitsToken] {.noSideEffect,
    importcpp: "Token", header: "Units_Measurement.hxx".}
proc add*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "Add", header: "Units_Measurement.hxx".}
proc `+`*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "(# + #)", header: "Units_Measurement.hxx".}
proc subtract*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "Subtract", header: "Units_Measurement.hxx".}
proc `-`*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "(# - #)", header: "Units_Measurement.hxx".}
proc multiply*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "Multiply", header: "Units_Measurement.hxx".}
proc `*`*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "(# * #)", header: "Units_Measurement.hxx".}
proc multiply*(this: UnitsMeasurement; avalue: cfloat): UnitsMeasurement {.
    noSideEffect, importcpp: "Multiply", header: "Units_Measurement.hxx".}
proc `*`*(this: UnitsMeasurement; avalue: cfloat): UnitsMeasurement {.noSideEffect,
    importcpp: "(# * #)", header: "Units_Measurement.hxx".}
proc divide*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "Divide", header: "Units_Measurement.hxx".}
proc `/`*(this: UnitsMeasurement; ameasurement: UnitsMeasurement): UnitsMeasurement {.
    noSideEffect, importcpp: "(# / #)", header: "Units_Measurement.hxx".}
proc divide*(this: UnitsMeasurement; avalue: cfloat): UnitsMeasurement {.noSideEffect,
    importcpp: "Divide", header: "Units_Measurement.hxx".}
proc `/`*(this: UnitsMeasurement; avalue: cfloat): UnitsMeasurement {.noSideEffect,
    importcpp: "(# / #)", header: "Units_Measurement.hxx".}
proc power*(this: UnitsMeasurement; anexponent: cfloat): UnitsMeasurement {.
    noSideEffect, importcpp: "Power", header: "Units_Measurement.hxx".}
proc hasToken*(this: UnitsMeasurement): bool {.noSideEffect, importcpp: "HasToken",
    header: "Units_Measurement.hxx".}
proc dump*(this: UnitsMeasurement) {.noSideEffect, importcpp: "Dump",
                                  header: "Units_Measurement.hxx".}

























