##  Created on: 1993-10-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Units_NoSuchUnit"
discard "forward decl of Units_NoSuchType"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_UnitsSystem"
discard "forward decl of Units_UnitsSystem"
type
  HandleC1C1* = Handle[UnitsUnitsSystem]

## ! This class  allows  the  user  to  define his  own
## ! system of units.

type
  UnitsUnitsSystem* {.importcpp: "Units_UnitsSystem",
                     header: "Units_UnitsSystem.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## an
                                                                                      ## instance
                                                                                      ## of
                                                                                      ## UnitsSystem
                                                                                      ## initialized
                                                                                      ## to
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## S.I.
                                                                                      ## units
                                                                                      ## system.


proc constructUnitsUnitsSystem*(): UnitsUnitsSystem {.constructor,
    importcpp: "Units_UnitsSystem(@)", header: "Units_UnitsSystem.hxx".}
proc constructUnitsUnitsSystem*(aName: StandardCString; verbose: bool = false): UnitsUnitsSystem {.
    constructor, importcpp: "Units_UnitsSystem(@)", header: "Units_UnitsSystem.hxx".}
proc quantitiesSequence*(this: UnitsUnitsSystem): Handle[UnitsQuantitiesSequence] {.
    noSideEffect, importcpp: "QuantitiesSequence", header: "Units_UnitsSystem.hxx".}
proc activeUnitsSequence*(this: UnitsUnitsSystem): Handle[TColStdHSequenceOfInteger] {.
    noSideEffect, importcpp: "ActiveUnitsSequence", header: "Units_UnitsSystem.hxx".}
proc specify*(this: var UnitsUnitsSystem; aquantity: StandardCString;
             aunit: StandardCString) {.importcpp: "Specify",
                                     header: "Units_UnitsSystem.hxx".}
proc remove*(this: var UnitsUnitsSystem; aquantity: StandardCString;
            aunit: StandardCString) {.importcpp: "Remove",
                                    header: "Units_UnitsSystem.hxx".}
proc activate*(this: var UnitsUnitsSystem; aquantity: StandardCString;
              aunit: StandardCString) {.importcpp: "Activate",
                                      header: "Units_UnitsSystem.hxx".}
proc activates*(this: var UnitsUnitsSystem) {.importcpp: "Activates",
    header: "Units_UnitsSystem.hxx".}
proc activeUnit*(this: UnitsUnitsSystem; aquantity: StandardCString): TCollectionAsciiString {.
    noSideEffect, importcpp: "ActiveUnit", header: "Units_UnitsSystem.hxx".}
proc convertValueToUserSystem*(this: UnitsUnitsSystem; aquantity: StandardCString;
                              avalue: cfloat; aunit: StandardCString): cfloat {.
    noSideEffect, importcpp: "ConvertValueToUserSystem",
    header: "Units_UnitsSystem.hxx".}
proc convertSIValueToUserSystem*(this: UnitsUnitsSystem;
                                aquantity: StandardCString; avalue: cfloat): cfloat {.
    noSideEffect, importcpp: "ConvertSIValueToUserSystem",
    header: "Units_UnitsSystem.hxx".}
proc convertUserSystemValueToSI*(this: UnitsUnitsSystem;
                                aquantity: StandardCString; avalue: cfloat): cfloat {.
    noSideEffect, importcpp: "ConvertUserSystemValueToSI",
    header: "Units_UnitsSystem.hxx".}
proc dump*(this: UnitsUnitsSystem) {.noSideEffect, importcpp: "Dump",
                                  header: "Units_UnitsSystem.hxx".}
proc isEmpty*(this: UnitsUnitsSystem): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "Units_UnitsSystem.hxx".}
type
  UnitsUnitsSystembaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_UnitsSystem::get_type_name(@)",
                            header: "Units_UnitsSystem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_UnitsSystem::get_type_descriptor(@)",
    header: "Units_UnitsSystem.hxx".}
proc dynamicType*(this: UnitsUnitsSystem): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_UnitsSystem.hxx".}

























