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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_SequenceOfExtendedString, Storage_Error,
  ../Standard/Standard_Transient

discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_HeaderData"
discard "forward decl of Storage_HeaderData"
type
  Handle_Storage_HeaderData* = handle[Storage_HeaderData]
  Storage_HeaderData* {.importcpp: "Storage_HeaderData",
                       header: "Storage_HeaderData.hxx", bycopy.} = object of Standard_Transient


proc constructStorage_HeaderData*(): Storage_HeaderData {.constructor,
    importcpp: "Storage_HeaderData(@)", header: "Storage_HeaderData.hxx".}
proc Read*(this: var Storage_HeaderData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Read", header: "Storage_HeaderData.hxx".}
proc CreationDate*(this: Storage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "CreationDate", header: "Storage_HeaderData.hxx".}
proc StorageVersion*(this: Storage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "StorageVersion", header: "Storage_HeaderData.hxx".}
proc SchemaVersion*(this: Storage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "SchemaVersion", header: "Storage_HeaderData.hxx".}
proc SchemaName*(this: Storage_HeaderData): TCollection_AsciiString {.noSideEffect,
    importcpp: "SchemaName", header: "Storage_HeaderData.hxx".}
proc SetApplicationVersion*(this: var Storage_HeaderData;
                           aVersion: TCollection_AsciiString) {.
    importcpp: "SetApplicationVersion", header: "Storage_HeaderData.hxx".}
proc ApplicationVersion*(this: Storage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ApplicationVersion", header: "Storage_HeaderData.hxx".}
proc SetApplicationName*(this: var Storage_HeaderData;
                        aName: TCollection_ExtendedString) {.
    importcpp: "SetApplicationName", header: "Storage_HeaderData.hxx".}
proc ApplicationName*(this: Storage_HeaderData): TCollection_ExtendedString {.
    noSideEffect, importcpp: "ApplicationName", header: "Storage_HeaderData.hxx".}
proc SetDataType*(this: var Storage_HeaderData; aType: TCollection_ExtendedString) {.
    importcpp: "SetDataType", header: "Storage_HeaderData.hxx".}
proc DataType*(this: Storage_HeaderData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "DataType", header: "Storage_HeaderData.hxx".}
proc AddToUserInfo*(this: var Storage_HeaderData;
                   theUserInfo: TCollection_AsciiString) {.
    importcpp: "AddToUserInfo", header: "Storage_HeaderData.hxx".}
proc UserInfo*(this: Storage_HeaderData): TColStd_SequenceOfAsciiString {.
    noSideEffect, importcpp: "UserInfo", header: "Storage_HeaderData.hxx".}
proc AddToComments*(this: var Storage_HeaderData;
                   aComment: TCollection_ExtendedString) {.
    importcpp: "AddToComments", header: "Storage_HeaderData.hxx".}
proc Comments*(this: Storage_HeaderData): TColStd_SequenceOfExtendedString {.
    noSideEffect, importcpp: "Comments", header: "Storage_HeaderData.hxx".}
proc NumberOfObjects*(this: Storage_HeaderData): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfObjects", header: "Storage_HeaderData.hxx".}
proc ErrorStatus*(this: Storage_HeaderData): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_HeaderData.hxx".}
proc ErrorStatusExtension*(this: Storage_HeaderData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "Storage_HeaderData.hxx".}
proc ClearErrorStatus*(this: var Storage_HeaderData) {.
    importcpp: "ClearErrorStatus", header: "Storage_HeaderData.hxx".}
type
  Storage_HeaderDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_HeaderData::get_type_name(@)",
                              header: "Storage_HeaderData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_HeaderData::get_type_descriptor(@)",
    header: "Storage_HeaderData.hxx".}
proc DynamicType*(this: Storage_HeaderData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_HeaderData.hxx".}
proc SetNumberOfObjects*(this: var Storage_HeaderData;
                        anObjectNumber: Standard_Integer) {.
    importcpp: "SetNumberOfObjects", header: "Storage_HeaderData.hxx".}
proc SetStorageVersion*(this: var Storage_HeaderData;
                       aVersion: TCollection_AsciiString) {.
    importcpp: "SetStorageVersion", header: "Storage_HeaderData.hxx".}
proc SetCreationDate*(this: var Storage_HeaderData; aDate: TCollection_AsciiString) {.
    importcpp: "SetCreationDate", header: "Storage_HeaderData.hxx".}
proc SetSchemaVersion*(this: var Storage_HeaderData;
                      aVersion: TCollection_AsciiString) {.
    importcpp: "SetSchemaVersion", header: "Storage_HeaderData.hxx".}
proc SetSchemaName*(this: var Storage_HeaderData; aName: TCollection_AsciiString) {.
    importcpp: "SetSchemaName", header: "Storage_HeaderData.hxx".}