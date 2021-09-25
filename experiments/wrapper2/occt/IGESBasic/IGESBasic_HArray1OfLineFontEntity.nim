##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Arun MENON)
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
  IGESBasicHArray1OfLineFontEntity* {.importcpp: "IGESBasic_HArray1OfLineFontEntity", header: "IGESBasic_HArray1OfLineFontEntity.hxx",
                                     bycopy.} = object of IGESBasicArray1OfLineFontEntity


proc constructIGESBasicHArray1OfLineFontEntity*(theLower: int; theUpper: int): IGESBasicHArray1OfLineFontEntity {.
    constructor, importcpp: "IGESBasic_HArray1OfLineFontEntity(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc constructIGESBasicHArray1OfLineFontEntity*(theLower: int; theUpper: int;
    theValue: ValueType): IGESBasicHArray1OfLineFontEntity {.constructor,
    importcpp: "IGESBasic_HArray1OfLineFontEntity(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc constructIGESBasicHArray1OfLineFontEntity*(
    theOther: IGESBasicArray1OfLineFontEntity): IGESBasicHArray1OfLineFontEntity {.
    constructor, importcpp: "IGESBasic_HArray1OfLineFontEntity(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc array1*(this: IGESBasicHArray1OfLineFontEntity): IGESBasicArray1OfLineFontEntity {.
    noSideEffect, importcpp: "Array1",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc changeArray1*(this: var IGESBasicHArray1OfLineFontEntity): var IGESBasicArray1OfLineFontEntity {.
    importcpp: "ChangeArray1", header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
type
  IGESBasicHArray1OfLineFontEntitybaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESBasic_HArray1OfLineFontEntity::get_type_name(@)",
                            header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_HArray1OfLineFontEntity::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc dynamicType*(this: IGESBasicHArray1OfLineFontEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
