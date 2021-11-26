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

discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_HeaderData"
discard "forward decl of Storage_HeaderData"
type
  HandleC1C1* = Handle[StorageHeaderData]
  StorageHeaderData* {.importcpp: "Storage_HeaderData",
                      header: "Storage_HeaderData.hxx", bycopy.} = object of StandardTransient


proc constructStorageHeaderData*(): StorageHeaderData {.constructor,
    importcpp: "Storage_HeaderData(@)", header: "Storage_HeaderData.hxx".}
proc read*(this: var StorageHeaderData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Read", header: "Storage_HeaderData.hxx".}
proc creationDate*(this: StorageHeaderData): TCollectionAsciiString {.noSideEffect,
    importcpp: "CreationDate", header: "Storage_HeaderData.hxx".}
proc storageVersion*(this: StorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "StorageVersion", header: "Storage_HeaderData.hxx".}
proc schemaVersion*(this: StorageHeaderData): TCollectionAsciiString {.noSideEffect,
    importcpp: "SchemaVersion", header: "Storage_HeaderData.hxx".}
proc schemaName*(this: StorageHeaderData): TCollectionAsciiString {.noSideEffect,
    importcpp: "SchemaName", header: "Storage_HeaderData.hxx".}
proc setApplicationVersion*(this: var StorageHeaderData;
                           aVersion: TCollectionAsciiString) {.
    importcpp: "SetApplicationVersion", header: "Storage_HeaderData.hxx".}
proc applicationVersion*(this: StorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ApplicationVersion", header: "Storage_HeaderData.hxx".}
proc setApplicationName*(this: var StorageHeaderData;
                        aName: TCollectionExtendedString) {.
    importcpp: "SetApplicationName", header: "Storage_HeaderData.hxx".}
proc applicationName*(this: StorageHeaderData): TCollectionExtendedString {.
    noSideEffect, importcpp: "ApplicationName", header: "Storage_HeaderData.hxx".}
proc setDataType*(this: var StorageHeaderData; aType: TCollectionExtendedString) {.
    importcpp: "SetDataType", header: "Storage_HeaderData.hxx".}
proc dataType*(this: StorageHeaderData): TCollectionExtendedString {.noSideEffect,
    importcpp: "DataType", header: "Storage_HeaderData.hxx".}
proc addToUserInfo*(this: var StorageHeaderData; theUserInfo: TCollectionAsciiString) {.
    importcpp: "AddToUserInfo", header: "Storage_HeaderData.hxx".}
proc userInfo*(this: StorageHeaderData): TColStdSequenceOfAsciiString {.
    noSideEffect, importcpp: "UserInfo", header: "Storage_HeaderData.hxx".}
proc addToComments*(this: var StorageHeaderData; aComment: TCollectionExtendedString) {.
    importcpp: "AddToComments", header: "Storage_HeaderData.hxx".}
proc comments*(this: StorageHeaderData): TColStdSequenceOfExtendedString {.
    noSideEffect, importcpp: "Comments", header: "Storage_HeaderData.hxx".}
proc numberOfObjects*(this: StorageHeaderData): cint {.noSideEffect,
    importcpp: "NumberOfObjects", header: "Storage_HeaderData.hxx".}
proc errorStatus*(this: StorageHeaderData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_HeaderData.hxx".}
proc errorStatusExtension*(this: StorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "Storage_HeaderData.hxx".}
proc clearErrorStatus*(this: var StorageHeaderData) {.importcpp: "ClearErrorStatus",
    header: "Storage_HeaderData.hxx".}
type
  StorageHeaderDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_HeaderData::get_type_name(@)",
                            header: "Storage_HeaderData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_HeaderData::get_type_descriptor(@)",
    header: "Storage_HeaderData.hxx".}
proc dynamicType*(this: StorageHeaderData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_HeaderData.hxx".}
proc setNumberOfObjects*(this: var StorageHeaderData; anObjectNumber: cint) {.
    importcpp: "SetNumberOfObjects", header: "Storage_HeaderData.hxx".}
proc setStorageVersion*(this: var StorageHeaderData;
                       aVersion: TCollectionAsciiString) {.
    importcpp: "SetStorageVersion", header: "Storage_HeaderData.hxx".}
proc setCreationDate*(this: var StorageHeaderData; aDate: TCollectionAsciiString) {.
    importcpp: "SetCreationDate", header: "Storage_HeaderData.hxx".}
proc setSchemaVersion*(this: var StorageHeaderData; aVersion: TCollectionAsciiString) {.
    importcpp: "SetSchemaVersion", header: "Storage_HeaderData.hxx".}
proc setSchemaName*(this: var StorageHeaderData; aName: TCollectionAsciiString) {.
    importcpp: "SetSchemaName", header: "Storage_HeaderData.hxx".}

























