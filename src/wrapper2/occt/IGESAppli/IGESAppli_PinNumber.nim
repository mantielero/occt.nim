##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_PinNumber"
discard "forward decl of IGESAppli_PinNumber"
type
  HandleIGESAppliPinNumber* = Handle[IGESAppliPinNumber]

## ! defines PinNumber, Type <406> Form <8>
## ! in package IGESAppli
## ! Used to attach a text string representing a component
## ! pin number to an entity being used to represent an
## ! electrical component's pin

type
  IGESAppliPinNumber* {.importcpp: "IGESAppli_PinNumber",
                       header: "IGESAppli_PinNumber.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliPinNumber*(): IGESAppliPinNumber {.constructor,
    importcpp: "IGESAppli_PinNumber(@)", header: "IGESAppli_PinNumber.hxx".}
proc init*(this: var IGESAppliPinNumber; nbPropVal: StandardInteger;
          aValue: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_PinNumber.hxx".}
proc nbPropertyValues*(this: IGESAppliPinNumber): StandardInteger {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_PinNumber.hxx".}
proc pinNumberVal*(this: IGESAppliPinNumber): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PinNumberVal", header: "IGESAppli_PinNumber.hxx".}
type
  IGESAppliPinNumberbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_PinNumber::get_type_name(@)",
                            header: "IGESAppli_PinNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_PinNumber::get_type_descriptor(@)",
    header: "IGESAppli_PinNumber.hxx".}
proc dynamicType*(this: IGESAppliPinNumber): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_PinNumber.hxx".}

