##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen (Niraj RANGWALA)
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
  ../IGESData/IGESData_ViewKindEntity, IGESDraw_Array1OfViewKindEntity,
  ../NCollection/NCollection_DefineHArray1

type
  IGESDraw_HArray1OfViewKindEntity* {.importcpp: "IGESDraw_HArray1OfViewKindEntity", header: "IGESDraw_HArray1OfViewKindEntity.hxx",
                                     bycopy.} = object of IGESDraw_Array1OfViewKindEntity


proc constructIGESDraw_HArray1OfViewKindEntity*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESDraw_HArray1OfViewKindEntity {.constructor,
    importcpp: "IGESDraw_HArray1OfViewKindEntity(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc constructIGESDraw_HArray1OfViewKindEntity*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESDraw_HArray1OfViewKindEntity {.
    constructor, importcpp: "IGESDraw_HArray1OfViewKindEntity(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc constructIGESDraw_HArray1OfViewKindEntity*(
    theOther: IGESDraw_Array1OfViewKindEntity): IGESDraw_HArray1OfViewKindEntity {.
    constructor, importcpp: "IGESDraw_HArray1OfViewKindEntity(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc Array1*(this: IGESDraw_HArray1OfViewKindEntity): IGESDraw_Array1OfViewKindEntity {.
    noSideEffect, importcpp: "Array1",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc ChangeArray1*(this: var IGESDraw_HArray1OfViewKindEntity): var IGESDraw_Array1OfViewKindEntity {.
    importcpp: "ChangeArray1", header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
type
  IGESDraw_HArray1OfViewKindEntitybase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESDraw_HArray1OfViewKindEntity::get_type_name(@)",
                              header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_HArray1OfViewKindEntity::get_type_descriptor(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc DynamicType*(this: IGESDraw_HArray1OfViewKindEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}