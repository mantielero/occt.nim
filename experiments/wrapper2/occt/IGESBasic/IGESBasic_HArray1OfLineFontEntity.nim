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

import
  ../IGESData/IGESData_LineFontEntity, IGESBasic_Array1OfLineFontEntity,
  ../NCollection/NCollection_DefineHArray1

type
  IGESBasic_HArray1OfLineFontEntity* {.importcpp: "IGESBasic_HArray1OfLineFontEntity", header: "IGESBasic_HArray1OfLineFontEntity.hxx",
                                      bycopy.} = object of IGESBasic_Array1OfLineFontEntity


proc constructIGESBasic_HArray1OfLineFontEntity*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESBasic_HArray1OfLineFontEntity {.constructor,
    importcpp: "IGESBasic_HArray1OfLineFontEntity(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc constructIGESBasic_HArray1OfLineFontEntity*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESBasic_HArray1OfLineFontEntity {.
    constructor, importcpp: "IGESBasic_HArray1OfLineFontEntity(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc constructIGESBasic_HArray1OfLineFontEntity*(
    theOther: IGESBasic_Array1OfLineFontEntity): IGESBasic_HArray1OfLineFontEntity {.
    constructor, importcpp: "IGESBasic_HArray1OfLineFontEntity(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc Array1*(this: IGESBasic_HArray1OfLineFontEntity): IGESBasic_Array1OfLineFontEntity {.
    noSideEffect, importcpp: "Array1",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc ChangeArray1*(this: var IGESBasic_HArray1OfLineFontEntity): var IGESBasic_Array1OfLineFontEntity {.
    importcpp: "ChangeArray1", header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
type
  IGESBasic_HArray1OfLineFontEntitybase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESBasic_HArray1OfLineFontEntity::get_type_name(@)",
                              header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_HArray1OfLineFontEntity::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}
proc DynamicType*(this: IGESBasic_HArray1OfLineFontEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfLineFontEntity.hxx".}