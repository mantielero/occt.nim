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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_SequenceOfExtendedString, ../Storage/Storage_Error,
  ../Standard/Standard_Transient

discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of StdStorage_HeaderData"
discard "forward decl of StdStorage_HeaderData"
type
  Handle_StdStorage_HeaderData* = handle[StdStorage_HeaderData]

## ! Storage header data section that contains some
## ! auxiliary information (application name, schema version,
## ! creation date, comments and so on...)

type
  StdStorage_HeaderData* {.importcpp: "StdStorage_HeaderData",
                          header: "StdStorage_HeaderData.hxx", bycopy.} = object of Standard_Transient

  StdStorage_HeaderDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StdStorage_HeaderData::get_type_name(@)",
                              header: "StdStorage_HeaderData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdStorage_HeaderData::get_type_descriptor(@)",
    header: "StdStorage_HeaderData.hxx".}
proc DynamicType*(this: StdStorage_HeaderData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StdStorage_HeaderData.hxx".}
proc Read*(this: var StdStorage_HeaderData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Read", header: "StdStorage_HeaderData.hxx".}
proc Write*(this: var StdStorage_HeaderData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Write", header: "StdStorage_HeaderData.hxx".}
proc CreationDate*(this: StdStorage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "CreationDate", header: "StdStorage_HeaderData.hxx".}
proc StorageVersion*(this: StdStorage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "StorageVersion", header: "StdStorage_HeaderData.hxx".}
proc SchemaVersion*(this: StdStorage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "SchemaVersion", header: "StdStorage_HeaderData.hxx".}
proc SetApplicationVersion*(this: var StdStorage_HeaderData;
                           aVersion: TCollection_AsciiString) {.
    importcpp: "SetApplicationVersion", header: "StdStorage_HeaderData.hxx".}
proc ApplicationVersion*(this: StdStorage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ApplicationVersion",
    header: "StdStorage_HeaderData.hxx".}
proc SetApplicationName*(this: var StdStorage_HeaderData;
                        aName: TCollection_ExtendedString) {.
    importcpp: "SetApplicationName", header: "StdStorage_HeaderData.hxx".}
proc ApplicationName*(this: StdStorage_HeaderData): TCollection_ExtendedString {.
    noSideEffect, importcpp: "ApplicationName", header: "StdStorage_HeaderData.hxx".}
proc SetDataType*(this: var StdStorage_HeaderData; aType: TCollection_ExtendedString) {.
    importcpp: "SetDataType", header: "StdStorage_HeaderData.hxx".}
proc DataType*(this: StdStorage_HeaderData): TCollection_ExtendedString {.
    noSideEffect, importcpp: "DataType", header: "StdStorage_HeaderData.hxx".}
proc AddToUserInfo*(this: var StdStorage_HeaderData;
                   theUserInfo: TCollection_AsciiString) {.
    importcpp: "AddToUserInfo", header: "StdStorage_HeaderData.hxx".}
proc UserInfo*(this: StdStorage_HeaderData): TColStd_SequenceOfAsciiString {.
    noSideEffect, importcpp: "UserInfo", header: "StdStorage_HeaderData.hxx".}
proc AddToComments*(this: var StdStorage_HeaderData;
                   aComment: TCollection_ExtendedString) {.
    importcpp: "AddToComments", header: "StdStorage_HeaderData.hxx".}
proc Comments*(this: StdStorage_HeaderData): TColStd_SequenceOfExtendedString {.
    noSideEffect, importcpp: "Comments", header: "StdStorage_HeaderData.hxx".}
proc NumberOfObjects*(this: StdStorage_HeaderData): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfObjects", header: "StdStorage_HeaderData.hxx".}
proc ErrorStatus*(this: StdStorage_HeaderData): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "StdStorage_HeaderData.hxx".}
proc ErrorStatusExtension*(this: StdStorage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "StdStorage_HeaderData.hxx".}
proc ClearErrorStatus*(this: var StdStorage_HeaderData) {.
    importcpp: "ClearErrorStatus", header: "StdStorage_HeaderData.hxx".}
proc SetNumberOfObjects*(this: var StdStorage_HeaderData;
                        anObjectNumber: Standard_Integer) {.
    importcpp: "SetNumberOfObjects", header: "StdStorage_HeaderData.hxx".}
proc SetStorageVersion*(this: var StdStorage_HeaderData;
                       aVersion: TCollection_AsciiString) {.
    importcpp: "SetStorageVersion", header: "StdStorage_HeaderData.hxx".}
proc SetCreationDate*(this: var StdStorage_HeaderData;
                     aDate: TCollection_AsciiString) {.
    importcpp: "SetCreationDate", header: "StdStorage_HeaderData.hxx".}
proc SetSchemaVersion*(this: var StdStorage_HeaderData;
                      aVersion: TCollection_AsciiString) {.
    importcpp: "SetSchemaVersion", header: "StdStorage_HeaderData.hxx".}
proc SetSchemaName*(this: var StdStorage_HeaderData; aName: TCollection_AsciiString) {.
    importcpp: "SetSchemaName", header: "StdStorage_HeaderData.hxx".}