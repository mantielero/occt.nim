##  Created on: 1992-10-29
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
discard "forward decl of Units_Quantity"
discard "forward decl of Units_Token"
discard "forward decl of Units_Unit"
discard "forward decl of Units_Unit"
type
  HandleUnitsUnit* = Handle[UnitsUnit]

## ! This class defines an elementary word contained in
## ! a physical quantity.

type
  UnitsUnit* {.importcpp: "Units_Unit", header: "Units_Unit.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## and
                                                                                               ## returns
                                                                                               ## a
                                                                                               ## unit.
                                                                                               ## <aname>
                                                                                               ## is
                                                                                               ## the
                                                                                               ## name
                                                                                               ## of
                                                                                               ##
                                                                                               ## !
                                                                                               ## the
                                                                                               ## unit,
                                                                                               ## <asymbol>
                                                                                               ## is
                                                                                               ## the
                                                                                               ## usual
                                                                                               ## abbreviation
                                                                                               ## of
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## unit,
                                                                                               ## and
                                                                                               ## <avalue>
                                                                                               ## is
                                                                                               ## the
                                                                                               ## value
                                                                                               ## in
                                                                                               ## relation
                                                                                               ## to
                                                                                               ## the
                                                                                               ##
                                                                                               ## !
                                                                                               ## International
                                                                                               ## System
                                                                                               ## of
                                                                                               ## Units.


proc constructUnitsUnit*(aname: StandardCString; asymbol: StandardCString;
                        avalue: float; aquantity: Handle[UnitsQuantity]): UnitsUnit {.
    constructor, importcpp: "Units_Unit(@)", header: "Units_Unit.hxx".}
proc constructUnitsUnit*(aname: StandardCString; asymbol: StandardCString): UnitsUnit {.
    constructor, importcpp: "Units_Unit(@)", header: "Units_Unit.hxx".}
proc constructUnitsUnit*(aname: StandardCString): UnitsUnit {.constructor,
    importcpp: "Units_Unit(@)", header: "Units_Unit.hxx".}
proc name*(this: UnitsUnit): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Units_Unit.hxx".}
proc symbol*(this: var UnitsUnit; asymbol: StandardCString) {.importcpp: "Symbol",
    header: "Units_Unit.hxx".}
proc value*(this: UnitsUnit): float {.noSideEffect, importcpp: "Value",
                                  header: "Units_Unit.hxx".}
proc quantity*(this: UnitsUnit): Handle[UnitsQuantity] {.noSideEffect,
    importcpp: "Quantity", header: "Units_Unit.hxx".}
proc symbolsSequence*(this: UnitsUnit): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "SymbolsSequence", header: "Units_Unit.hxx".}
proc value*(this: var UnitsUnit; avalue: float) {.importcpp: "Value",
    header: "Units_Unit.hxx".}
proc quantity*(this: var UnitsUnit; aquantity: Handle[UnitsQuantity]) {.
    importcpp: "Quantity", header: "Units_Unit.hxx".}
proc token*(this: UnitsUnit): Handle[UnitsToken] {.noSideEffect, importcpp: "Token",
    header: "Units_Unit.hxx".}
proc isEqual*(this: UnitsUnit; astring: StandardCString): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Units_Unit.hxx".}
proc dump*(this: UnitsUnit; ashift: int; alevel: int) {.noSideEffect, importcpp: "Dump",
    header: "Units_Unit.hxx".}
type
  UnitsUnitbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_Unit::get_type_name(@)",
                            header: "Units_Unit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_Unit::get_type_descriptor(@)", header: "Units_Unit.hxx".}
proc dynamicType*(this: UnitsUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Unit.hxx".}
