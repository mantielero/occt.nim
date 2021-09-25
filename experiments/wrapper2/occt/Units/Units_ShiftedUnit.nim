##  Created on: 1992-11-04
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

discard "forward decl of Units_Quantity"
discard "forward decl of Units_Token"
discard "forward decl of Units_ShiftedUnit"
discard "forward decl of Units_ShiftedUnit"
type
  HandleUnitsShiftedUnit* = Handle[UnitsShiftedUnit]

## ! This class is useful   to describe  units  with  a
## ! shifted origin in relation to another unit. A well
## ! known example  is the  Celsius degrees in relation
## ! to Kelvin degrees. The shift of the Celsius origin
## ! is 273.15 Kelvin degrees.

type
  UnitsShiftedUnit* {.importcpp: "Units_ShiftedUnit",
                     header: "Units_ShiftedUnit.hxx", bycopy.} = object of UnitsUnit ## !
                                                                              ## Creates
                                                                              ## and
                                                                              ## returns a
                                                                              ## shifted
                                                                              ## unit.
                                                                              ## <aname> is
                                                                              ## the
                                                                              ## !
                                                                              ## name of
                                                                              ## the
                                                                              ## unit,
                                                                              ## <asymbol> is
                                                                              ## the
                                                                              ## usual
                                                                              ## abbreviation
                                                                              ## ! of
                                                                              ## the
                                                                              ## unit,
                                                                              ## <avalue> is
                                                                              ## the
                                                                              ## value in
                                                                              ## relation to
                                                                              ## the
                                                                              ## !
                                                                              ## International
                                                                              ## System of
                                                                              ## Units,
                                                                              ## and
                                                                              ## <amove>  is
                                                                              ## the
                                                                              ## gap
                                                                              ## ! in
                                                                              ## relation to
                                                                              ## another
                                                                              ## unit.
                                                                              ## !
                                                                              ## !
                                                                              ## For
                                                                              ## example
                                                                              ## Celcius
                                                                              ## dregee   of
                                                                              ## temperature  is  an
                                                                              ## !
                                                                              ## instance of
                                                                              ## ShiftedUnit
                                                                              ## with
                                                                              ## <avalue>
                                                                              ## equal to 1.
                                                                              ## and
                                                                              ## !
                                                                              ## <amove>
                                                                              ## equal to
                                                                              ## 273.15.


proc constructUnitsShiftedUnit*(aname: StandardCString; asymbol: StandardCString;
                               avalue: float; amove: float;
                               aquantity: Handle[UnitsQuantity]): UnitsShiftedUnit {.
    constructor, importcpp: "Units_ShiftedUnit(@)", header: "Units_ShiftedUnit.hxx".}
proc constructUnitsShiftedUnit*(aname: StandardCString; asymbol: StandardCString): UnitsShiftedUnit {.
    constructor, importcpp: "Units_ShiftedUnit(@)", header: "Units_ShiftedUnit.hxx".}
proc constructUnitsShiftedUnit*(aname: StandardCString): UnitsShiftedUnit {.
    constructor, importcpp: "Units_ShiftedUnit(@)", header: "Units_ShiftedUnit.hxx".}
proc move*(this: var UnitsShiftedUnit; amove: float) {.importcpp: "Move",
    header: "Units_ShiftedUnit.hxx".}
proc move*(this: UnitsShiftedUnit): float {.noSideEffect, importcpp: "Move",
                                        header: "Units_ShiftedUnit.hxx".}
proc token*(this: UnitsShiftedUnit): Handle[UnitsToken] {.noSideEffect,
    importcpp: "Token", header: "Units_ShiftedUnit.hxx".}
proc dump*(this: UnitsShiftedUnit; ashift: int; alevel: int) {.noSideEffect,
    importcpp: "Dump", header: "Units_ShiftedUnit.hxx".}
type
  UnitsShiftedUnitbaseType* = UnitsUnit

proc getTypeName*(): cstring {.importcpp: "Units_ShiftedUnit::get_type_name(@)",
                            header: "Units_ShiftedUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_ShiftedUnit::get_type_descriptor(@)",
    header: "Units_ShiftedUnit.hxx".}
proc dynamicType*(this: UnitsShiftedUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_ShiftedUnit.hxx".}
