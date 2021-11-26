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
discard "forward decl of Storage_Root"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_RootData"
discard "forward decl of Storage_RootData"
type
  HandleC1C1* = Handle[StorageRootData]
  StorageRootData* {.importcpp: "Storage_RootData", header: "Storage_RootData.hxx",
                    bycopy.} = object of StandardTransient


proc constructStorageRootData*(): StorageRootData {.constructor,
    importcpp: "Storage_RootData(@)", header: "Storage_RootData.hxx".}
proc read*(this: var StorageRootData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Read", header: "Storage_RootData.hxx".}
proc numberOfRoots*(this: StorageRootData): cint {.noSideEffect,
    importcpp: "NumberOfRoots", header: "Storage_RootData.hxx".}
proc addRoot*(this: var StorageRootData; aRoot: Handle[StorageRoot]) {.
    importcpp: "AddRoot", header: "Storage_RootData.hxx".}
proc roots*(this: StorageRootData): Handle[StorageHSeqOfRoot] {.noSideEffect,
    importcpp: "Roots", header: "Storage_RootData.hxx".}
proc find*(this: StorageRootData; aName: TCollectionAsciiString): Handle[StorageRoot] {.
    noSideEffect, importcpp: "Find", header: "Storage_RootData.hxx".}
proc isRoot*(this: StorageRootData; aName: TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "IsRoot", header: "Storage_RootData.hxx".}
proc removeRoot*(this: var StorageRootData; aName: TCollectionAsciiString) {.
    importcpp: "RemoveRoot", header: "Storage_RootData.hxx".}
proc errorStatus*(this: StorageRootData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_RootData.hxx".}
proc errorStatusExtension*(this: StorageRootData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension", header: "Storage_RootData.hxx".}
proc clearErrorStatus*(this: var StorageRootData) {.importcpp: "ClearErrorStatus",
    header: "Storage_RootData.hxx".}
proc updateRoot*(this: var StorageRootData; aName: TCollectionAsciiString;
                aPers: Handle[StandardPersistent]) {.importcpp: "UpdateRoot",
    header: "Storage_RootData.hxx".}
type
  StorageRootDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_RootData::get_type_name(@)",
                            header: "Storage_RootData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_RootData::get_type_descriptor(@)",
    header: "Storage_RootData.hxx".}
proc dynamicType*(this: StorageRootData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_RootData.hxx".}

























