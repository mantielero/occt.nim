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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_PartNumber"
discard "forward decl of IGESAppli_PartNumber"
type
  Handle_IGESAppli_PartNumber* = handle[IGESAppli_PartNumber]

## ! defines PartNumber, Type <406> Form <9>
## ! in package IGESAppli
## ! Attaches a set of text strings that define the common
## ! part numbers to an entity being used to represent a
## ! physical component

type
  IGESAppli_PartNumber* {.importcpp: "IGESAppli_PartNumber",
                         header: "IGESAppli_PartNumber.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_PartNumber*(): IGESAppli_PartNumber {.constructor,
    importcpp: "IGESAppli_PartNumber(@)", header: "IGESAppli_PartNumber.hxx".}
proc Init*(this: var IGESAppli_PartNumber; nbPropVal: Standard_Integer;
          aGenName: handle[TCollection_HAsciiString];
          aMilName: handle[TCollection_HAsciiString];
          aVendName: handle[TCollection_HAsciiString];
          anIntName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_PartNumber.hxx".}
proc NbPropertyValues*(this: IGESAppli_PartNumber): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_PartNumber.hxx".}
proc GenericNumber*(this: IGESAppli_PartNumber): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GenericNumber", header: "IGESAppli_PartNumber.hxx".}
proc MilitaryNumber*(this: IGESAppli_PartNumber): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "MilitaryNumber", header: "IGESAppli_PartNumber.hxx".}
proc VendorNumber*(this: IGESAppli_PartNumber): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "VendorNumber", header: "IGESAppli_PartNumber.hxx".}
proc InternalNumber*(this: IGESAppli_PartNumber): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "InternalNumber", header: "IGESAppli_PartNumber.hxx".}
type
  IGESAppli_PartNumberbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_PartNumber::get_type_name(@)",
                              header: "IGESAppli_PartNumber.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_PartNumber::get_type_descriptor(@)",
    header: "IGESAppli_PartNumber.hxx".}
proc DynamicType*(this: IGESAppli_PartNumber): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_PartNumber.hxx".}