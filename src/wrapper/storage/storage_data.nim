import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types
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





proc newStorageData*(): StorageData {.cdecl, constructor,
                                   importcpp: "Storage_Data(@)",
                                   header: "Storage_Data.hxx".}
proc errorStatus*(this: StorageData): StorageError {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", header: "Storage_Data.hxx".}
proc clearErrorStatus*(this: var StorageData) {.cdecl, importcpp: "ClearErrorStatus",
    header: "Storage_Data.hxx".}
proc errorStatusExtension*(this: StorageData): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ErrorStatusExtension",
    header: "Storage_Data.hxx".}
proc creationDate*(this: StorageData): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "CreationDate", header: "Storage_Data.hxx".}
proc storageVersion*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "StorageVersion", header: "Storage_Data.hxx".}
proc schemaVersion*(this: StorageData): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "SchemaVersion", header: "Storage_Data.hxx".}
proc schemaName*(this: StorageData): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "SchemaName", header: "Storage_Data.hxx".}
proc setApplicationVersion*(this: var StorageData; aVersion: TCollectionAsciiString) {.
    cdecl, importcpp: "SetApplicationVersion", header: "Storage_Data.hxx".}
proc applicationVersion*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "ApplicationVersion", header: "Storage_Data.hxx".}
proc setApplicationName*(this: var StorageData; aName: TCollectionExtendedString) {.
    cdecl, importcpp: "SetApplicationName", header: "Storage_Data.hxx".}
proc applicationName*(this: StorageData): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "ApplicationName", header: "Storage_Data.hxx".}
proc setDataType*(this: var StorageData; aType: TCollectionExtendedString) {.cdecl,
    importcpp: "SetDataType", header: "Storage_Data.hxx".}
proc dataType*(this: StorageData): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "DataType", header: "Storage_Data.hxx".}
proc addToUserInfo*(this: var StorageData; anInfo: TCollectionAsciiString) {.cdecl,
    importcpp: "AddToUserInfo", header: "Storage_Data.hxx".}
proc userInfo*(this: StorageData): TColStdSequenceOfAsciiString {.noSideEffect,
    cdecl, importcpp: "UserInfo", header: "Storage_Data.hxx".}
proc addToComments*(this: var StorageData; aComment: TCollectionExtendedString) {.
    cdecl, importcpp: "AddToComments", header: "Storage_Data.hxx".}
proc comments*(this: StorageData): TColStdSequenceOfExtendedString {.noSideEffect,
    cdecl, importcpp: "Comments", header: "Storage_Data.hxx".}
proc numberOfObjects*(this: StorageData): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfObjects", header: "Storage_Data.hxx".}
proc numberOfRoots*(this: StorageData): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfRoots", header: "Storage_Data.hxx".}
proc addRoot*(this: StorageData; anObject: Handle[StandardPersistent]) {.
    noSideEffect, cdecl, importcpp: "AddRoot", header: "Storage_Data.hxx".}
proc addRoot*(this: StorageData; aName: TCollectionAsciiString;
             anObject: Handle[StandardPersistent]) {.noSideEffect, cdecl,
    importcpp: "AddRoot", header: "Storage_Data.hxx".}
proc removeRoot*(this: var StorageData; aName: TCollectionAsciiString) {.cdecl,
    importcpp: "RemoveRoot", header: "Storage_Data.hxx".}
proc roots*(this: StorageData): Handle[StorageHSeqOfRoot] {.noSideEffect, cdecl,
    importcpp: "Roots", header: "Storage_Data.hxx".}
proc find*(this: StorageData; aName: TCollectionAsciiString): Handle[StorageRoot] {.
    noSideEffect, cdecl, importcpp: "Find", header: "Storage_Data.hxx".}
proc isRoot*(this: StorageData; aName: TCollectionAsciiString): bool {.noSideEffect,
    cdecl, importcpp: "IsRoot", header: "Storage_Data.hxx".}
proc numberOfTypes*(this: StorageData): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfTypes", header: "Storage_Data.hxx".}
proc isType*(this: StorageData; aName: TCollectionAsciiString): bool {.noSideEffect,
    cdecl, importcpp: "IsType", header: "Storage_Data.hxx".}
proc types*(this: StorageData): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, cdecl, importcpp: "Types", header: "Storage_Data.hxx".}
proc headerData*(this: StorageData): Handle[StorageHeaderData] {.noSideEffect, cdecl,
    importcpp: "HeaderData", header: "Storage_Data.hxx".}
proc rootData*(this: StorageData): Handle[StorageRootData] {.noSideEffect, cdecl,
    importcpp: "RootData", header: "Storage_Data.hxx".}
proc typeData*(this: StorageData): Handle[StorageTypeData] {.noSideEffect, cdecl,
    importcpp: "TypeData", header: "Storage_Data.hxx".}
proc internalData*(this: StorageData): Handle[StorageInternalData] {.noSideEffect,
    cdecl, importcpp: "InternalData", header: "Storage_Data.hxx".}
proc clear*(this: StorageData) {.noSideEffect, cdecl, importcpp: "Clear",
                              header: "Storage_Data.hxx".}

