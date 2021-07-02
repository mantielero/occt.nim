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

type
  IGESDrawHArray1OfViewKindEntity* {.importcpp: "IGESDraw_HArray1OfViewKindEntity", header: "IGESDraw_HArray1OfViewKindEntity.hxx",
                                    bycopy.} = object of IGESDrawArray1OfViewKindEntity


proc constructIGESDrawHArray1OfViewKindEntity*(theLower: StandardInteger;
    theUpper: StandardInteger): IGESDrawHArray1OfViewKindEntity {.constructor,
    importcpp: "IGESDraw_HArray1OfViewKindEntity(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc constructIGESDrawHArray1OfViewKindEntity*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): IGESDrawHArray1OfViewKindEntity {.
    constructor, importcpp: "IGESDraw_HArray1OfViewKindEntity(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc constructIGESDrawHArray1OfViewKindEntity*(
    theOther: IGESDrawArray1OfViewKindEntity): IGESDrawHArray1OfViewKindEntity {.
    constructor, importcpp: "IGESDraw_HArray1OfViewKindEntity(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc array1*(this: IGESDrawHArray1OfViewKindEntity): IGESDrawArray1OfViewKindEntity {.
    noSideEffect, importcpp: "Array1",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc changeArray1*(this: var IGESDrawHArray1OfViewKindEntity): var IGESDrawArray1OfViewKindEntity {.
    importcpp: "ChangeArray1", header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
type
  IGESDrawHArray1OfViewKindEntitybaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESDraw_HArray1OfViewKindEntity::get_type_name(@)",
                            header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_HArray1OfViewKindEntity::get_type_descriptor(@)",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}
proc dynamicType*(this: IGESDrawHArray1OfViewKindEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_HArray1OfViewKindEntity.hxx".}

