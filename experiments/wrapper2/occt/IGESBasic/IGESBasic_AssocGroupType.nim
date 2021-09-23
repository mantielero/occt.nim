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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_AssocGroupType"
discard "forward decl of IGESBasic_AssocGroupType"
type
  Handle_IGESBasic_AssocGroupType* = handle[IGESBasic_AssocGroupType]

## ! defines AssocGroupType, Type <406> Form <23>
## ! in package IGESBasic
## ! Used to assign an unambiguous identification to a Group
## ! Associativity.

type
  IGESBasic_AssocGroupType* {.importcpp: "IGESBasic_AssocGroupType",
                             header: "IGESBasic_AssocGroupType.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_AssocGroupType*(): IGESBasic_AssocGroupType {.constructor,
    importcpp: "IGESBasic_AssocGroupType(@)",
    header: "IGESBasic_AssocGroupType.hxx".}
proc Init*(this: var IGESBasic_AssocGroupType; nbDataFields: Standard_Integer;
          aType: Standard_Integer; aName: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "IGESBasic_AssocGroupType.hxx".}
proc NbData*(this: IGESBasic_AssocGroupType): Standard_Integer {.noSideEffect,
    importcpp: "NbData", header: "IGESBasic_AssocGroupType.hxx".}
proc AssocType*(this: IGESBasic_AssocGroupType): Standard_Integer {.noSideEffect,
    importcpp: "AssocType", header: "IGESBasic_AssocGroupType.hxx".}
proc Name*(this: IGESBasic_AssocGroupType): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESBasic_AssocGroupType.hxx".}
type
  IGESBasic_AssocGroupTypebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_AssocGroupType::get_type_name(@)",
                              header: "IGESBasic_AssocGroupType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_AssocGroupType::get_type_descriptor(@)",
    header: "IGESBasic_AssocGroupType.hxx".}
proc DynamicType*(this: IGESBasic_AssocGroupType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_AssocGroupType.hxx".}