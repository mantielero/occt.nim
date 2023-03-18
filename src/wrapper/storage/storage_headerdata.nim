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



proc newStorageHeaderData*(): StorageHeaderData {.cdecl, constructor,
    importcpp: "Storage_HeaderData(@)", header: "Storage_HeaderData.hxx".}
proc read*(this: var StorageHeaderData; theDriver: Handle[StorageBaseDriver]): bool {.
    cdecl, importcpp: "Read", header: "Storage_HeaderData.hxx".}
proc creationDate*(this: StorageHeaderData): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "CreationDate", header: "Storage_HeaderData.hxx".}
proc storageVersion*(this: StorageHeaderData): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "StorageVersion",
    header: "Storage_HeaderData.hxx".}
proc schemaVersion*(this: StorageHeaderData): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "SchemaVersion", header: "Storage_HeaderData.hxx".}
proc schemaName*(this: StorageHeaderData): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "SchemaName", header: "Storage_HeaderData.hxx".}
proc setApplicationVersion*(this: var StorageHeaderData;
                           aVersion: TCollectionAsciiString) {.cdecl,
    importcpp: "SetApplicationVersion", header: "Storage_HeaderData.hxx".}
proc applicationVersion*(this: StorageHeaderData): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ApplicationVersion",
    header: "Storage_HeaderData.hxx".}
proc setApplicationName*(this: var StorageHeaderData;
                        aName: TCollectionExtendedString) {.cdecl,
    importcpp: "SetApplicationName", header: "Storage_HeaderData.hxx".}
proc applicationName*(this: StorageHeaderData): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "ApplicationName",
    header: "Storage_HeaderData.hxx".}
proc setDataType*(this: var StorageHeaderData; aType: TCollectionExtendedString) {.
    cdecl, importcpp: "SetDataType", header: "Storage_HeaderData.hxx".}
proc dataType*(this: StorageHeaderData): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "DataType", header: "Storage_HeaderData.hxx".}
proc addToUserInfo*(this: var StorageHeaderData; theUserInfo: TCollectionAsciiString) {.
    cdecl, importcpp: "AddToUserInfo", header: "Storage_HeaderData.hxx".}
proc userInfo*(this: StorageHeaderData): TColStdSequenceOfAsciiString {.
    noSideEffect, cdecl, importcpp: "UserInfo", header: "Storage_HeaderData.hxx".}
proc addToComments*(this: var StorageHeaderData; aComment: TCollectionExtendedString) {.
    cdecl, importcpp: "AddToComments", header: "Storage_HeaderData.hxx".}
proc comments*(this: StorageHeaderData): TColStdSequenceOfExtendedString {.
    noSideEffect, cdecl, importcpp: "Comments", header: "Storage_HeaderData.hxx".}
proc numberOfObjects*(this: StorageHeaderData): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfObjects", header: "Storage_HeaderData.hxx".}
proc errorStatus*(this: StorageHeaderData): StorageError {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", header: "Storage_HeaderData.hxx".}
proc errorStatusExtension*(this: StorageHeaderData): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ErrorStatusExtension",
    header: "Storage_HeaderData.hxx".}
proc clearErrorStatus*(this: var StorageHeaderData) {.cdecl,
    importcpp: "ClearErrorStatus", header: "Storage_HeaderData.hxx".}
proc setNumberOfObjects*(this: var StorageHeaderData; anObjectNumber: cint) {.cdecl,
    importcpp: "SetNumberOfObjects", header: "Storage_HeaderData.hxx".}
proc setStorageVersion*(this: var StorageHeaderData;
                       aVersion: TCollectionAsciiString) {.cdecl,
    importcpp: "SetStorageVersion", header: "Storage_HeaderData.hxx".}
proc setStorageVersion*(this: var StorageHeaderData; theVersion: cint) {.cdecl,
    importcpp: "SetStorageVersion", header: "Storage_HeaderData.hxx".}
proc setCreationDate*(this: var StorageHeaderData; aDate: TCollectionAsciiString) {.
    cdecl, importcpp: "SetCreationDate", header: "Storage_HeaderData.hxx".}
proc setSchemaVersion*(this: var StorageHeaderData; aVersion: TCollectionAsciiString) {.
    cdecl, importcpp: "SetSchemaVersion", header: "Storage_HeaderData.hxx".}
proc setSchemaName*(this: var StorageHeaderData; aName: TCollectionAsciiString) {.
    cdecl, importcpp: "SetSchemaName", header: "Storage_HeaderData.hxx".}

