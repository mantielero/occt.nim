##  Copyright (c) 2017 OPEN CASCADE SAS
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
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of StdStorage_TypeData"
discard "forward decl of StdStorage_TypeData"
type
  HandleStdStorageTypeData* = Handle[StdStorageTypeData]

## ! Storage type data section keeps association between
## ! persistent textual types and their numbers

type
  StdStorageTypeData* {.importcpp: "StdStorage_TypeData",
                       header: "StdStorage_TypeData.hxx", bycopy.} = object of StandardTransient

  StdStorageTypeDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StdStorage_TypeData::get_type_name(@)",
                            header: "StdStorage_TypeData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdStorage_TypeData::get_type_descriptor(@)",
    header: "StdStorage_TypeData.hxx".}
proc dynamicType*(this: StdStorageTypeData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_TypeData.hxx".}
proc read*(this: var StdStorageTypeData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Read", header: "StdStorage_TypeData.hxx".}
proc write*(this: var StdStorageTypeData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Write", header: "StdStorage_TypeData.hxx".}
proc numberOfTypes*(this: StdStorageTypeData): int {.noSideEffect,
    importcpp: "NumberOfTypes", header: "StdStorage_TypeData.hxx".}
proc addType*(this: var StdStorageTypeData; aTypeName: TCollectionAsciiString;
             aTypeNum: int) {.importcpp: "AddType",
                            header: "StdStorage_TypeData.hxx".}
proc addType*(this: var StdStorageTypeData; aPObj: Handle[StdObjMgtPersistent]): int {.
    importcpp: "AddType", header: "StdStorage_TypeData.hxx".}
proc `type`*(this: StdStorageTypeData; aTypeNum: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "Type", header: "StdStorage_TypeData.hxx".}
proc `type`*(this: StdStorageTypeData; aTypeName: TCollectionAsciiString): int {.
    noSideEffect, importcpp: "Type", header: "StdStorage_TypeData.hxx".}
proc instantiator*(this: StdStorageTypeData; aTypeNum: int): Instantiator {.
    noSideEffect, importcpp: "Instantiator", header: "StdStorage_TypeData.hxx".}
proc isType*(this: StdStorageTypeData; aName: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsType", header: "StdStorage_TypeData.hxx".}
proc types*(this: StdStorageTypeData): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "Types", header: "StdStorage_TypeData.hxx".}
proc errorStatus*(this: StdStorageTypeData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "StdStorage_TypeData.hxx".}
proc errorStatusExtension*(this: StdStorageTypeData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "StdStorage_TypeData.hxx".}
proc clearErrorStatus*(this: var StdStorageTypeData) {.
    importcpp: "ClearErrorStatus", header: "StdStorage_TypeData.hxx".}
proc clear*(this: var StdStorageTypeData) {.importcpp: "Clear",
                                        header: "StdStorage_TypeData.hxx".}
