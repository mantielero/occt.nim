##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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
discard "forward decl of IGESAppli_PartNumber"
discard "forward decl of IGESAppli_PartNumber"
type
  HandleC1C1* = Handle[IGESAppliPartNumber]

## ! defines PartNumber, Type <406> Form <9>
## ! in package IGESAppli
## ! Attaches a set of text strings that define the common
## ! part numbers to an entity being used to represent a
## ! physical component

type
  IGESAppliPartNumber* {.importcpp: "IGESAppli_PartNumber",
                        header: "IGESAppli_PartNumber.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliPartNumber*(): IGESAppliPartNumber {.constructor,
    importcpp: "IGESAppli_PartNumber(@)", header: "IGESAppli_PartNumber.hxx".}
proc init*(this: var IGESAppliPartNumber; nbPropVal: cint;
          aGenName: Handle[TCollectionHAsciiString];
          aMilName: Handle[TCollectionHAsciiString];
          aVendName: Handle[TCollectionHAsciiString];
          anIntName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_PartNumber.hxx".}
proc nbPropertyValues*(this: IGESAppliPartNumber): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_PartNumber.hxx".}
proc genericNumber*(this: IGESAppliPartNumber): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GenericNumber", header: "IGESAppli_PartNumber.hxx".}
proc militaryNumber*(this: IGESAppliPartNumber): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "MilitaryNumber", header: "IGESAppli_PartNumber.hxx".}
proc vendorNumber*(this: IGESAppliPartNumber): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "VendorNumber", header: "IGESAppli_PartNumber.hxx".}
proc internalNumber*(this: IGESAppliPartNumber): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "InternalNumber", header: "IGESAppli_PartNumber.hxx".}
type
  IGESAppliPartNumberbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_PartNumber::get_type_name(@)",
                            header: "IGESAppli_PartNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_PartNumber::get_type_descriptor(@)",
    header: "IGESAppli_PartNumber.hxx".}
proc dynamicType*(this: IGESAppliPartNumber): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_PartNumber.hxx".}

























