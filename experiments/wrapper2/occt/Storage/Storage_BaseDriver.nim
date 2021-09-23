##  Created on: 1996-11-25
##  Created by: Christophe LEYNADIER
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Type, Storage_OpenMode, Storage_Error, Storage_Data,
  Storage_Position, ../TCollection/TCollection_AsciiString,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_SequenceOfExtendedString

discard "forward decl of Storage_StreamTypeMismatchError"
discard "forward decl of Storage_StreamFormatError"
discard "forward decl of Storage_StreamWriteError"
discard "forward decl of Storage_StreamExtCharParityError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
type
  Handle_Storage_BaseDriver* = handle[Storage_BaseDriver]

## ! Root class for drivers. A driver assigns a physical container
## ! to data to be stored or retrieved, for instance a file.
## ! The FSD package provides two derived concrete classes :
## ! -   FSD_File is a general driver which defines a
## ! file as the container of data.

type
  Storage_BaseDriver* {.importcpp: "Storage_BaseDriver",
                       header: "Storage_BaseDriver.hxx", bycopy.} = object of Standard_Transient ## !@name Virtual methods, to be provided by descendants
                                                                                          ## !@name Ouput methods
                                                                                          ## !@name Input methods

  Storage_BaseDriverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_BaseDriver::get_type_name(@)",
                              header: "Storage_BaseDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_BaseDriver::get_type_descriptor(@)",
    header: "Storage_BaseDriver.hxx".}
proc DynamicType*(this: Storage_BaseDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_BaseDriver.hxx".}
proc destroyStorage_BaseDriver*(this: var Storage_BaseDriver) {.
    importcpp: "#.~Storage_BaseDriver()", header: "Storage_BaseDriver.hxx".}
proc Name*(this: Storage_BaseDriver): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Storage_BaseDriver.hxx".}
proc OpenMode*(this: Storage_BaseDriver): Storage_OpenMode {.noSideEffect,
    importcpp: "OpenMode", header: "Storage_BaseDriver.hxx".}
proc ReadMagicNumber*(theIStream: var Standard_IStream): TCollection_AsciiString {.
    importcpp: "Storage_BaseDriver::ReadMagicNumber(@)",
    header: "Storage_BaseDriver.hxx".}
proc Open*(this: var Storage_BaseDriver; aName: TCollection_AsciiString;
          aMode: Storage_OpenMode): Storage_Error {.importcpp: "Open",
    header: "Storage_BaseDriver.hxx".}
proc IsEnd*(this: var Storage_BaseDriver): Standard_Boolean {.importcpp: "IsEnd",
    header: "Storage_BaseDriver.hxx".}
proc Tell*(this: var Storage_BaseDriver): Storage_Position {.importcpp: "Tell",
    header: "Storage_BaseDriver.hxx".}
proc BeginWriteInfoSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginWriteInfoSection", header: "Storage_BaseDriver.hxx".}
proc WriteInfo*(this: var Storage_BaseDriver; nbObj: Standard_Integer;
               dbVersion: TCollection_AsciiString; date: TCollection_AsciiString;
               schemaName: TCollection_AsciiString;
               schemaVersion: TCollection_AsciiString;
               appName: TCollection_ExtendedString;
               appVersion: TCollection_AsciiString;
               objectType: TCollection_ExtendedString;
               userInfo: TColStd_SequenceOfAsciiString) {.importcpp: "WriteInfo",
    header: "Storage_BaseDriver.hxx".}
proc EndWriteInfoSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndWriteInfoSection", header: "Storage_BaseDriver.hxx".}
proc BeginReadInfoSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginReadInfoSection", header: "Storage_BaseDriver.hxx".}
proc ReadInfo*(this: var Storage_BaseDriver; nbObj: var Standard_Integer;
              dbVersion: var TCollection_AsciiString;
              date: var TCollection_AsciiString;
              schemaName: var TCollection_AsciiString;
              schemaVersion: var TCollection_AsciiString;
              appName: var TCollection_ExtendedString;
              appVersion: var TCollection_AsciiString;
              objectType: var TCollection_ExtendedString;
              userInfo: var TColStd_SequenceOfAsciiString) {.importcpp: "ReadInfo",
    header: "Storage_BaseDriver.hxx".}
proc ReadCompleteInfo*(this: var Storage_BaseDriver;
                      theIStream: var Standard_IStream;
                      theData: var handle[Storage_Data]) {.
    importcpp: "ReadCompleteInfo", header: "Storage_BaseDriver.hxx".}
proc EndReadInfoSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndReadInfoSection", header: "Storage_BaseDriver.hxx".}
proc BeginWriteCommentSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginWriteCommentSection", header: "Storage_BaseDriver.hxx".}
proc WriteComment*(this: var Storage_BaseDriver;
                  userComments: TColStd_SequenceOfExtendedString) {.
    importcpp: "WriteComment", header: "Storage_BaseDriver.hxx".}
proc EndWriteCommentSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndWriteCommentSection", header: "Storage_BaseDriver.hxx".}
proc BeginReadCommentSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginReadCommentSection", header: "Storage_BaseDriver.hxx".}
proc ReadComment*(this: var Storage_BaseDriver;
                 userComments: var TColStd_SequenceOfExtendedString) {.
    importcpp: "ReadComment", header: "Storage_BaseDriver.hxx".}
proc EndReadCommentSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndReadCommentSection", header: "Storage_BaseDriver.hxx".}
proc BeginWriteTypeSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginWriteTypeSection", header: "Storage_BaseDriver.hxx".}
proc SetTypeSectionSize*(this: var Storage_BaseDriver; aSize: Standard_Integer) {.
    importcpp: "SetTypeSectionSize", header: "Storage_BaseDriver.hxx".}
proc WriteTypeInformations*(this: var Storage_BaseDriver; typeNum: Standard_Integer;
                           typeName: TCollection_AsciiString) {.
    importcpp: "WriteTypeInformations", header: "Storage_BaseDriver.hxx".}
proc EndWriteTypeSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndWriteTypeSection", header: "Storage_BaseDriver.hxx".}
proc BeginReadTypeSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginReadTypeSection", header: "Storage_BaseDriver.hxx".}
proc TypeSectionSize*(this: var Storage_BaseDriver): Standard_Integer {.
    importcpp: "TypeSectionSize", header: "Storage_BaseDriver.hxx".}
proc ReadTypeInformations*(this: var Storage_BaseDriver;
                          typeNum: var Standard_Integer;
                          typeName: var TCollection_AsciiString) {.
    importcpp: "ReadTypeInformations", header: "Storage_BaseDriver.hxx".}
proc EndReadTypeSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndReadTypeSection", header: "Storage_BaseDriver.hxx".}
proc BeginWriteRootSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginWriteRootSection", header: "Storage_BaseDriver.hxx".}
proc SetRootSectionSize*(this: var Storage_BaseDriver; aSize: Standard_Integer) {.
    importcpp: "SetRootSectionSize", header: "Storage_BaseDriver.hxx".}
proc WriteRoot*(this: var Storage_BaseDriver; rootName: TCollection_AsciiString;
               aRef: Standard_Integer; aType: TCollection_AsciiString) {.
    importcpp: "WriteRoot", header: "Storage_BaseDriver.hxx".}
proc EndWriteRootSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndWriteRootSection", header: "Storage_BaseDriver.hxx".}
proc BeginReadRootSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginReadRootSection", header: "Storage_BaseDriver.hxx".}
proc RootSectionSize*(this: var Storage_BaseDriver): Standard_Integer {.
    importcpp: "RootSectionSize", header: "Storage_BaseDriver.hxx".}
proc ReadRoot*(this: var Storage_BaseDriver; rootName: var TCollection_AsciiString;
              aRef: var Standard_Integer; aType: var TCollection_AsciiString) {.
    importcpp: "ReadRoot", header: "Storage_BaseDriver.hxx".}
proc EndReadRootSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndReadRootSection", header: "Storage_BaseDriver.hxx".}
proc BeginWriteRefSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginWriteRefSection", header: "Storage_BaseDriver.hxx".}
proc SetRefSectionSize*(this: var Storage_BaseDriver; aSize: Standard_Integer) {.
    importcpp: "SetRefSectionSize", header: "Storage_BaseDriver.hxx".}
proc WriteReferenceType*(this: var Storage_BaseDriver; reference: Standard_Integer;
                        typeNum: Standard_Integer) {.
    importcpp: "WriteReferenceType", header: "Storage_BaseDriver.hxx".}
proc EndWriteRefSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndWriteRefSection", header: "Storage_BaseDriver.hxx".}
proc BeginReadRefSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginReadRefSection", header: "Storage_BaseDriver.hxx".}
proc RefSectionSize*(this: var Storage_BaseDriver): Standard_Integer {.
    importcpp: "RefSectionSize", header: "Storage_BaseDriver.hxx".}
proc ReadReferenceType*(this: var Storage_BaseDriver;
                       reference: var Standard_Integer;
                       typeNum: var Standard_Integer) {.
    importcpp: "ReadReferenceType", header: "Storage_BaseDriver.hxx".}
proc EndReadRefSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndReadRefSection", header: "Storage_BaseDriver.hxx".}
proc BeginWriteDataSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginWriteDataSection", header: "Storage_BaseDriver.hxx".}
proc WritePersistentObjectHeader*(this: var Storage_BaseDriver;
                                 aRef: Standard_Integer; aType: Standard_Integer) {.
    importcpp: "WritePersistentObjectHeader", header: "Storage_BaseDriver.hxx".}
proc BeginWritePersistentObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "BeginWritePersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc BeginWriteObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "BeginWriteObjectData", header: "Storage_BaseDriver.hxx".}
proc EndWriteObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "EndWriteObjectData", header: "Storage_BaseDriver.hxx".}
proc EndWritePersistentObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "EndWritePersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc EndWriteDataSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndWriteDataSection", header: "Storage_BaseDriver.hxx".}
proc BeginReadDataSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "BeginReadDataSection", header: "Storage_BaseDriver.hxx".}
proc ReadPersistentObjectHeader*(this: var Storage_BaseDriver;
                                aRef: var Standard_Integer;
                                aType: var Standard_Integer) {.
    importcpp: "ReadPersistentObjectHeader", header: "Storage_BaseDriver.hxx".}
proc BeginReadPersistentObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "BeginReadPersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc BeginReadObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "BeginReadObjectData", header: "Storage_BaseDriver.hxx".}
proc EndReadObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "EndReadObjectData", header: "Storage_BaseDriver.hxx".}
proc EndReadPersistentObjectData*(this: var Storage_BaseDriver) {.
    importcpp: "EndReadPersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc EndReadDataSection*(this: var Storage_BaseDriver): Storage_Error {.
    importcpp: "EndReadDataSection", header: "Storage_BaseDriver.hxx".}
proc SkipObject*(this: var Storage_BaseDriver) {.importcpp: "SkipObject",
    header: "Storage_BaseDriver.hxx".}
proc Close*(this: var Storage_BaseDriver): Storage_Error {.importcpp: "Close",
    header: "Storage_BaseDriver.hxx".}
proc PutReference*(this: var Storage_BaseDriver; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "PutReference", header: "Storage_BaseDriver.hxx".}
proc PutCharacter*(this: var Storage_BaseDriver; aValue: Standard_Character): var Storage_BaseDriver {.
    importcpp: "PutCharacter", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var Storage_BaseDriver; aValue: Standard_Character): var Storage_BaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc PutExtCharacter*(this: var Storage_BaseDriver; aValue: Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "PutExtCharacter", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var Storage_BaseDriver; aValue: Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc PutInteger*(this: var Storage_BaseDriver; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "PutInteger", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var Storage_BaseDriver; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc PutBoolean*(this: var Storage_BaseDriver; aValue: Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "PutBoolean", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var Storage_BaseDriver; aValue: Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc PutReal*(this: var Storage_BaseDriver; aValue: Standard_Real): var Storage_BaseDriver {.
    importcpp: "PutReal", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var Storage_BaseDriver; aValue: Standard_Real): var Storage_BaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc PutShortReal*(this: var Storage_BaseDriver; aValue: Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "PutShortReal", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var Storage_BaseDriver; aValue: Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc GetReference*(this: var Storage_BaseDriver; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "GetReference", header: "Storage_BaseDriver.hxx".}
proc GetCharacter*(this: var Storage_BaseDriver; aValue: var Standard_Character): var Storage_BaseDriver {.
    importcpp: "GetCharacter", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var Storage_BaseDriver; aValue: var Standard_Character): var Storage_BaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc GetExtCharacter*(this: var Storage_BaseDriver;
                     aValue: var Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "GetExtCharacter", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var Storage_BaseDriver; aValue: var Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc GetInteger*(this: var Storage_BaseDriver; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "GetInteger", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var Storage_BaseDriver; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc GetBoolean*(this: var Storage_BaseDriver; aValue: var Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "GetBoolean", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var Storage_BaseDriver; aValue: var Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc GetReal*(this: var Storage_BaseDriver; aValue: var Standard_Real): var Storage_BaseDriver {.
    importcpp: "GetReal", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var Storage_BaseDriver; aValue: var Standard_Real): var Storage_BaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc GetShortReal*(this: var Storage_BaseDriver; aValue: var Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "GetShortReal", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var Storage_BaseDriver; aValue: var Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}