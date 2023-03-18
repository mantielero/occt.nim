import ../standard/standard_types
import ../tcollection/tcollection_types
import storage_types



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



proc newStorageRootData*(): StorageRootData {.cdecl, constructor,
    importcpp: "Storage_RootData(@)", header: "Storage_RootData.hxx".}
proc read*(this: var StorageRootData; theDriver: Handle[StorageBaseDriver]): bool {.
    cdecl, importcpp: "Read", header: "Storage_RootData.hxx".}
proc numberOfRoots*(this: StorageRootData): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfRoots", header: "Storage_RootData.hxx".}
proc addRoot*(this: var StorageRootData; aRoot: Handle[StorageRoot]) {.cdecl,
    importcpp: "AddRoot", header: "Storage_RootData.hxx".}
proc roots*(this: StorageRootData): Handle[StorageHSeqOfRoot] {.noSideEffect, cdecl,
    importcpp: "Roots", header: "Storage_RootData.hxx".}
proc find*(this: StorageRootData; aName: TCollectionAsciiString): Handle[StorageRoot] {.
    noSideEffect, cdecl, importcpp: "Find", header: "Storage_RootData.hxx".}
proc isRoot*(this: StorageRootData; aName: TCollectionAsciiString): bool {.
    noSideEffect, cdecl, importcpp: "IsRoot", header: "Storage_RootData.hxx".}
proc removeRoot*(this: var StorageRootData; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "RemoveRoot", header: "Storage_RootData.hxx".}
proc errorStatus*(this: StorageRootData): StorageError {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", header: "Storage_RootData.hxx".}
proc errorStatusExtension*(this: StorageRootData): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ErrorStatusExtension",
    header: "Storage_RootData.hxx".}
proc clearErrorStatus*(this: var StorageRootData) {.cdecl,
    importcpp: "ClearErrorStatus", header: "Storage_RootData.hxx".}
proc updateRoot*(this: var StorageRootData; aName: TCollectionAsciiString;
                aPers: Handle[StandardPersistent]) {.cdecl,
    importcpp: "UpdateRoot", header: "Storage_RootData.hxx".}

