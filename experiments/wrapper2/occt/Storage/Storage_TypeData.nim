##  Created on: 1997-02-06
##  Created by: Kernel
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, Storage_PType, Storage_Error,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HSequenceOfAsciiString

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_TypeData"
discard "forward decl of Storage_TypeData"
type
  Handle_Storage_TypeData* = handle[Storage_TypeData]
  Storage_TypeData* {.importcpp: "Storage_TypeData",
                     header: "Storage_TypeData.hxx", bycopy.} = object of Standard_Transient


proc constructStorage_TypeData*(): Storage_TypeData {.constructor,
    importcpp: "Storage_TypeData(@)", header: "Storage_TypeData.hxx".}
proc Read*(this: var Storage_TypeData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Read", header: "Storage_TypeData.hxx".}
proc NumberOfTypes*(this: Storage_TypeData): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfTypes", header: "Storage_TypeData.hxx".}
proc AddType*(this: var Storage_TypeData; aName: TCollection_AsciiString;
             aTypeNum: Standard_Integer) {.importcpp: "AddType",
    header: "Storage_TypeData.hxx".}
proc Type*(this: Storage_TypeData; aTypeNum: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Type", header: "Storage_TypeData.hxx".}
proc Type*(this: Storage_TypeData; aTypeName: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "Type", header: "Storage_TypeData.hxx".}
proc IsType*(this: Storage_TypeData; aName: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsType", header: "Storage_TypeData.hxx".}
proc Types*(this: Storage_TypeData): handle[TColStd_HSequenceOfAsciiString] {.
    noSideEffect, importcpp: "Types", header: "Storage_TypeData.hxx".}
proc ErrorStatus*(this: Storage_TypeData): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_TypeData.hxx".}
proc ErrorStatusExtension*(this: Storage_TypeData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension", header: "Storage_TypeData.hxx".}
proc ClearErrorStatus*(this: var Storage_TypeData) {.importcpp: "ClearErrorStatus",
    header: "Storage_TypeData.hxx".}
proc Clear*(this: var Storage_TypeData) {.importcpp: "Clear",
                                      header: "Storage_TypeData.hxx".}
type
  Storage_TypeDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_TypeData::get_type_name(@)",
                              header: "Storage_TypeData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_TypeData::get_type_descriptor(@)",
    header: "Storage_TypeData.hxx".}
proc DynamicType*(this: Storage_TypeData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_TypeData.hxx".}