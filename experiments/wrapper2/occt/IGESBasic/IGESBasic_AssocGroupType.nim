##  Created on: 1993-01-09
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
discard "forward decl of IGESBasic_AssocGroupType"
discard "forward decl of IGESBasic_AssocGroupType"
type
  HandleIGESBasicAssocGroupType* = Handle[IGESBasicAssocGroupType]

## ! defines AssocGroupType, Type <406> Form <23>
## ! in package IGESBasic
## ! Used to assign an unambiguous identification to a Group
## ! Associativity.

type
  IGESBasicAssocGroupType* {.importcpp: "IGESBasic_AssocGroupType",
                            header: "IGESBasic_AssocGroupType.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicAssocGroupType*(): IGESBasicAssocGroupType {.constructor,
    importcpp: "IGESBasic_AssocGroupType(@)",
    header: "IGESBasic_AssocGroupType.hxx".}
proc init*(this: var IGESBasicAssocGroupType; nbDataFields: int; aType: int;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_AssocGroupType.hxx".}
proc nbData*(this: IGESBasicAssocGroupType): int {.noSideEffect, importcpp: "NbData",
    header: "IGESBasic_AssocGroupType.hxx".}
proc assocType*(this: IGESBasicAssocGroupType): int {.noSideEffect,
    importcpp: "AssocType", header: "IGESBasic_AssocGroupType.hxx".}
proc name*(this: IGESBasicAssocGroupType): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESBasic_AssocGroupType.hxx".}
type
  IGESBasicAssocGroupTypebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_AssocGroupType::get_type_name(@)",
                            header: "IGESBasic_AssocGroupType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_AssocGroupType::get_type_descriptor(@)",
    header: "IGESBasic_AssocGroupType.hxx".}
proc dynamicType*(this: IGESBasicAssocGroupType): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_AssocGroupType.hxx".}
