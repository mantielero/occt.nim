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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_Dimensions"
discard "forward decl of Units_UnitsDictionary"
discard "forward decl of Units_UnitsDictionary"
type
  HandleUnitsUnitsDictionary* = Handle[UnitsUnitsDictionary]

## ! This class creates  a dictionary of all  the units
## ! you want to know.

type
  UnitsUnitsDictionary* {.importcpp: "Units_UnitsDictionary",
                         header: "Units_UnitsDictionary.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## instance
                                                                                              ## of
                                                                                              ## UnitsDictionary.


proc constructUnitsUnitsDictionary*(): UnitsUnitsDictionary {.constructor,
    importcpp: "Units_UnitsDictionary(@)", header: "Units_UnitsDictionary.hxx".}
proc creates*(this: var UnitsUnitsDictionary) {.importcpp: "Creates",
    header: "Units_UnitsDictionary.hxx".}
proc sequence*(this: UnitsUnitsDictionary): Handle[UnitsQuantitiesSequence] {.
    noSideEffect, importcpp: "Sequence", header: "Units_UnitsDictionary.hxx".}
proc activeUnit*(this: UnitsUnitsDictionary; aquantity: StandardCString): TCollectionAsciiString {.
    noSideEffect, importcpp: "ActiveUnit", header: "Units_UnitsDictionary.hxx".}
proc dump*(this: UnitsUnitsDictionary; alevel: int) {.noSideEffect, importcpp: "Dump",
    header: "Units_UnitsDictionary.hxx".}
proc dump*(this: UnitsUnitsDictionary; adimensions: Handle[UnitsDimensions]) {.
    noSideEffect, importcpp: "Dump", header: "Units_UnitsDictionary.hxx".}
type
  UnitsUnitsDictionarybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_UnitsDictionary::get_type_name(@)",
                            header: "Units_UnitsDictionary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_UnitsDictionary::get_type_descriptor(@)",
    header: "Units_UnitsDictionary.hxx".}
proc dynamicType*(this: UnitsUnitsDictionary): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_UnitsDictionary.hxx".}
