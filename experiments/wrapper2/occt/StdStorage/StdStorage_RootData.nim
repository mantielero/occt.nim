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
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of StdStorage_Root"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of StdStorage_RootData"
discard "forward decl of StdStorage_RootData"
type
  HandleStdStorageRootData* = Handle[StdStorageRootData]

## ! Storage root data section contains root persistent objects

type
  StdStorageRootData* {.importcpp: "StdStorage_RootData",
                       header: "StdStorage_RootData.hxx", bycopy.} = object of StandardTransient

  StdStorageRootDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StdStorage_RootData::get_type_name(@)",
                            header: "StdStorage_RootData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdStorage_RootData::get_type_descriptor(@)",
    header: "StdStorage_RootData.hxx".}
proc dynamicType*(this: StdStorageRootData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_RootData.hxx".}
proc read*(this: var StdStorageRootData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Read", header: "StdStorage_RootData.hxx".}
proc write*(this: var StdStorageRootData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Write", header: "StdStorage_RootData.hxx".}
proc numberOfRoots*(this: StdStorageRootData): int {.noSideEffect,
    importcpp: "NumberOfRoots", header: "StdStorage_RootData.hxx".}
proc addRoot*(this: var StdStorageRootData; aRoot: Handle[StdStorageRoot]) {.
    importcpp: "AddRoot", header: "StdStorage_RootData.hxx".}
proc roots*(this: StdStorageRootData): Handle[StdStorageHSequenceOfRoots] {.
    noSideEffect, importcpp: "Roots", header: "StdStorage_RootData.hxx".}
proc find*(this: StdStorageRootData; aName: TCollectionAsciiString): Handle[
    StdStorageRoot] {.noSideEffect, importcpp: "Find",
                     header: "StdStorage_RootData.hxx".}
proc isRoot*(this: StdStorageRootData; aName: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsRoot", header: "StdStorage_RootData.hxx".}
proc removeRoot*(this: var StdStorageRootData; aName: TCollectionAsciiString) {.
    importcpp: "RemoveRoot", header: "StdStorage_RootData.hxx".}
proc errorStatus*(this: StdStorageRootData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "StdStorage_RootData.hxx".}
proc errorStatusExtension*(this: StdStorageRootData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "StdStorage_RootData.hxx".}
proc clearErrorStatus*(this: var StdStorageRootData) {.
    importcpp: "ClearErrorStatus", header: "StdStorage_RootData.hxx".}
proc clear*(this: var StdStorageRootData) {.importcpp: "Clear",
                                        header: "StdStorage_RootData.hxx".}
