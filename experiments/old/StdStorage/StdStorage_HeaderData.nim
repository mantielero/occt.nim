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

discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of StdStorage_HeaderData"
discard "forward decl of StdStorage_HeaderData"
type
  HandleC1C1* = Handle[StdStorageHeaderData]

## ! Storage header data section that contains some
## ! auxiliary information (application name, schema version,
## ! creation date, comments and so on...)

type
  StdStorageHeaderData* {.importcpp: "StdStorage_HeaderData",
                         header: "StdStorage_HeaderData.hxx", bycopy.} = object of StandardTransient

  StdStorageHeaderDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StdStorage_HeaderData::get_type_name(@)",
                            header: "StdStorage_HeaderData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdStorage_HeaderData::get_type_descriptor(@)",
    header: "StdStorage_HeaderData.hxx".}
proc dynamicType*(this: StdStorageHeaderData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_HeaderData.hxx".}
proc read*(this: var StdStorageHeaderData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Read", header: "StdStorage_HeaderData.hxx".}
proc write*(this: var StdStorageHeaderData; theDriver: Handle[StorageBaseDriver]): bool {.
    importcpp: "Write", header: "StdStorage_HeaderData.hxx".}
proc creationDate*(this: StdStorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "CreationDate", header: "StdStorage_HeaderData.hxx".}
proc storageVersion*(this: StdStorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "StorageVersion", header: "StdStorage_HeaderData.hxx".}
proc schemaVersion*(this: StdStorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "SchemaVersion", header: "StdStorage_HeaderData.hxx".}
proc setApplicationVersion*(this: var StdStorageHeaderData;
                           aVersion: TCollectionAsciiString) {.
    importcpp: "SetApplicationVersion", header: "StdStorage_HeaderData.hxx".}
proc applicationVersion*(this: StdStorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ApplicationVersion",
    header: "StdStorage_HeaderData.hxx".}
proc setApplicationName*(this: var StdStorageHeaderData;
                        aName: TCollectionExtendedString) {.
    importcpp: "SetApplicationName", header: "StdStorage_HeaderData.hxx".}
proc applicationName*(this: StdStorageHeaderData): TCollectionExtendedString {.
    noSideEffect, importcpp: "ApplicationName", header: "StdStorage_HeaderData.hxx".}
proc setDataType*(this: var StdStorageHeaderData; aType: TCollectionExtendedString) {.
    importcpp: "SetDataType", header: "StdStorage_HeaderData.hxx".}
proc dataType*(this: StdStorageHeaderData): TCollectionExtendedString {.
    noSideEffect, importcpp: "DataType", header: "StdStorage_HeaderData.hxx".}
proc addToUserInfo*(this: var StdStorageHeaderData;
                   theUserInfo: TCollectionAsciiString) {.
    importcpp: "AddToUserInfo", header: "StdStorage_HeaderData.hxx".}
proc userInfo*(this: StdStorageHeaderData): TColStdSequenceOfAsciiString {.
    noSideEffect, importcpp: "UserInfo", header: "StdStorage_HeaderData.hxx".}
proc addToComments*(this: var StdStorageHeaderData;
                   aComment: TCollectionExtendedString) {.
    importcpp: "AddToComments", header: "StdStorage_HeaderData.hxx".}
proc comments*(this: StdStorageHeaderData): TColStdSequenceOfExtendedString {.
    noSideEffect, importcpp: "Comments", header: "StdStorage_HeaderData.hxx".}
proc numberOfObjects*(this: StdStorageHeaderData): cint {.noSideEffect,
    importcpp: "NumberOfObjects", header: "StdStorage_HeaderData.hxx".}
proc errorStatus*(this: StdStorageHeaderData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "StdStorage_HeaderData.hxx".}
proc errorStatusExtension*(this: StdStorageHeaderData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "StdStorage_HeaderData.hxx".}
proc clearErrorStatus*(this: var StdStorageHeaderData) {.
    importcpp: "ClearErrorStatus", header: "StdStorage_HeaderData.hxx".}
proc setNumberOfObjects*(this: var StdStorageHeaderData; anObjectNumber: cint) {.
    importcpp: "SetNumberOfObjects", header: "StdStorage_HeaderData.hxx".}
proc setStorageVersion*(this: var StdStorageHeaderData;
                       aVersion: TCollectionAsciiString) {.
    importcpp: "SetStorageVersion", header: "StdStorage_HeaderData.hxx".}
proc setCreationDate*(this: var StdStorageHeaderData; aDate: TCollectionAsciiString) {.
    importcpp: "SetCreationDate", header: "StdStorage_HeaderData.hxx".}
proc setSchemaVersion*(this: var StdStorageHeaderData;
                      aVersion: TCollectionAsciiString) {.
    importcpp: "SetSchemaVersion", header: "StdStorage_HeaderData.hxx".}
proc setSchemaName*(this: var StdStorageHeaderData; aName: TCollectionAsciiString) {.
    importcpp: "SetSchemaName", header: "StdStorage_HeaderData.hxx".}

























