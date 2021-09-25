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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_TypeData"
discard "forward decl of Storage_TypeData"
type
  HandleStorageTypeData* = Handle[StorageTypeData]
  StorageTypeData* {.importcpp: "Storage_TypeData", header: "Storage_TypeData.hxx",
                    bycopy.} = object of StandardTransient


proc constructStorageTypeData*(): StorageTypeData {.constructor,
    importcpp: "Storage_TypeData(@)", header: "Storage_TypeData.hxx".}
proc read*(this: var StorageTypeData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Read", header: "Storage_TypeData.hxx".}
proc numberOfTypes*(this: StorageTypeData): int {.noSideEffect,
    importcpp: "NumberOfTypes", header: "Storage_TypeData.hxx".}
proc addType*(this: var StorageTypeData; aName: TCollectionAsciiString; aTypeNum: int) {.
    importcpp: "AddType", header: "Storage_TypeData.hxx".}
proc `type`*(this: StorageTypeData; aTypeNum: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "Type", header: "Storage_TypeData.hxx".}
proc `type`*(this: StorageTypeData; aTypeName: TCollectionAsciiString): int {.
    noSideEffect, importcpp: "Type", header: "Storage_TypeData.hxx".}
proc isType*(this: StorageTypeData; aName: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsType", header: "Storage_TypeData.hxx".}
proc types*(this: StorageTypeData): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "Types", header: "Storage_TypeData.hxx".}
proc errorStatus*(this: StorageTypeData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_TypeData.hxx".}
proc errorStatusExtension*(this: StorageTypeData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension", header: "Storage_TypeData.hxx".}
proc clearErrorStatus*(this: var StorageTypeData) {.importcpp: "ClearErrorStatus",
    header: "Storage_TypeData.hxx".}
proc clear*(this: var StorageTypeData) {.importcpp: "Clear",
                                     header: "Storage_TypeData.hxx".}
type
  StorageTypeDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_TypeData::get_type_name(@)",
                            header: "Storage_TypeData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_TypeData::get_type_descriptor(@)",
    header: "Storage_TypeData.hxx".}
proc dynamicType*(this: StorageTypeData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_TypeData.hxx".}
