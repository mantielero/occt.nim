##  Created on: 1996-04-30
##  Created by: cle
##  Copyright (c) 1996-1999 Matra Datavision
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
  Storage_Schema, Storage_ArrayOfSchema, ../NCollection/NCollection_DefineHArray1

type
  Storage_HArrayOfSchema* {.importcpp: "Storage_HArrayOfSchema",
                           header: "Storage_HArrayOfSchema.hxx", bycopy.} = object of Storage_ArrayOfSchema


proc constructStorage_HArrayOfSchema*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer): Storage_HArrayOfSchema {.
    constructor, importcpp: "Storage_HArrayOfSchema(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc constructStorage_HArrayOfSchema*(theLower: Standard_Integer;
                                     theUpper: Standard_Integer;
                                     theValue: value_type): Storage_HArrayOfSchema {.
    constructor, importcpp: "Storage_HArrayOfSchema(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc constructStorage_HArrayOfSchema*(theOther: Storage_ArrayOfSchema): Storage_HArrayOfSchema {.
    constructor, importcpp: "Storage_HArrayOfSchema(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc Array1*(this: Storage_HArrayOfSchema): Storage_ArrayOfSchema {.noSideEffect,
    importcpp: "Array1", header: "Storage_HArrayOfSchema.hxx".}
proc ChangeArray1*(this: var Storage_HArrayOfSchema): var Storage_ArrayOfSchema {.
    importcpp: "ChangeArray1", header: "Storage_HArrayOfSchema.hxx".}
type
  Storage_HArrayOfSchemabase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Storage_HArrayOfSchema::get_type_name(@)",
                              header: "Storage_HArrayOfSchema.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_HArrayOfSchema::get_type_descriptor(@)",
    header: "Storage_HArrayOfSchema.hxx".}
proc DynamicType*(this: Storage_HArrayOfSchema): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Storage_HArrayOfSchema.hxx".}