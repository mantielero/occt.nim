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

discard "forward decl of Storage_StreamTypeMismatchError"
discard "forward decl of Storage_StreamFormatError"
discard "forward decl of Storage_StreamWriteError"
discard "forward decl of Storage_StreamExtCharParityError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
type
  HandleStorageBaseDriver* = Handle[StorageBaseDriver]

## ! Root class for drivers. A driver assigns a physical container
## ! to data to be stored or retrieved, for instance a file.
## ! The FSD package provides two derived concrete classes :
## ! -   FSD_File is a general driver which defines a
## ! file as the container of data.

type
  StorageBaseDriver* {.importcpp: "Storage_BaseDriver",
                      header: "Storage_BaseDriver.hxx", bycopy.} = object of StandardTransient ## !@name Virtual methods, to be provided by descendants
                                                                                        ## !@name Ouput methods
                                                                                        ## !@name Input methods

  StorageBaseDriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_BaseDriver::get_type_name(@)",
                            header: "Storage_BaseDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_BaseDriver::get_type_descriptor(@)",
    header: "Storage_BaseDriver.hxx".}
proc dynamicType*(this: StorageBaseDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_BaseDriver.hxx".}
proc destroyStorageBaseDriver*(this: var StorageBaseDriver) {.
    importcpp: "#.~Storage_BaseDriver()", header: "Storage_BaseDriver.hxx".}
proc name*(this: StorageBaseDriver): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Storage_BaseDriver.hxx".}
proc openMode*(this: StorageBaseDriver): StorageOpenMode {.noSideEffect,
    importcpp: "OpenMode", header: "Storage_BaseDriver.hxx".}
proc readMagicNumber*(theIStream: var StandardIStream): TCollectionAsciiString {.
    importcpp: "Storage_BaseDriver::ReadMagicNumber(@)",
    header: "Storage_BaseDriver.hxx".}
proc open*(this: var StorageBaseDriver; aName: TCollectionAsciiString;
          aMode: StorageOpenMode): StorageError {.importcpp: "Open",
    header: "Storage_BaseDriver.hxx".}
proc isEnd*(this: var StorageBaseDriver): bool {.importcpp: "IsEnd",
    header: "Storage_BaseDriver.hxx".}
proc tell*(this: var StorageBaseDriver): StoragePosition {.importcpp: "Tell",
    header: "Storage_BaseDriver.hxx".}
proc beginWriteInfoSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginWriteInfoSection", header: "Storage_BaseDriver.hxx".}
proc writeInfo*(this: var StorageBaseDriver; nbObj: int;
               dbVersion: TCollectionAsciiString; date: TCollectionAsciiString;
               schemaName: TCollectionAsciiString;
               schemaVersion: TCollectionAsciiString;
               appName: TCollectionExtendedString;
               appVersion: TCollectionAsciiString;
               objectType: TCollectionExtendedString;
               userInfo: TColStdSequenceOfAsciiString) {.importcpp: "WriteInfo",
    header: "Storage_BaseDriver.hxx".}
proc endWriteInfoSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndWriteInfoSection", header: "Storage_BaseDriver.hxx".}
proc beginReadInfoSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginReadInfoSection", header: "Storage_BaseDriver.hxx".}
proc readInfo*(this: var StorageBaseDriver; nbObj: var int;
              dbVersion: var TCollectionAsciiString;
              date: var TCollectionAsciiString;
              schemaName: var TCollectionAsciiString;
              schemaVersion: var TCollectionAsciiString;
              appName: var TCollectionExtendedString;
              appVersion: var TCollectionAsciiString;
              objectType: var TCollectionExtendedString;
              userInfo: var TColStdSequenceOfAsciiString) {.importcpp: "ReadInfo",
    header: "Storage_BaseDriver.hxx".}
proc readCompleteInfo*(this: var StorageBaseDriver; theIStream: var StandardIStream;
                      theData: var Handle[StorageData]) {.
    importcpp: "ReadCompleteInfo", header: "Storage_BaseDriver.hxx".}
proc endReadInfoSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndReadInfoSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteCommentSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginWriteCommentSection", header: "Storage_BaseDriver.hxx".}
proc writeComment*(this: var StorageBaseDriver;
                  userComments: TColStdSequenceOfExtendedString) {.
    importcpp: "WriteComment", header: "Storage_BaseDriver.hxx".}
proc endWriteCommentSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndWriteCommentSection", header: "Storage_BaseDriver.hxx".}
proc beginReadCommentSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginReadCommentSection", header: "Storage_BaseDriver.hxx".}
proc readComment*(this: var StorageBaseDriver;
                 userComments: var TColStdSequenceOfExtendedString) {.
    importcpp: "ReadComment", header: "Storage_BaseDriver.hxx".}
proc endReadCommentSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndReadCommentSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteTypeSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginWriteTypeSection", header: "Storage_BaseDriver.hxx".}
proc setTypeSectionSize*(this: var StorageBaseDriver; aSize: int) {.
    importcpp: "SetTypeSectionSize", header: "Storage_BaseDriver.hxx".}
proc writeTypeInformations*(this: var StorageBaseDriver; typeNum: int;
                           typeName: TCollectionAsciiString) {.
    importcpp: "WriteTypeInformations", header: "Storage_BaseDriver.hxx".}
proc endWriteTypeSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndWriteTypeSection", header: "Storage_BaseDriver.hxx".}
proc beginReadTypeSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginReadTypeSection", header: "Storage_BaseDriver.hxx".}
proc typeSectionSize*(this: var StorageBaseDriver): int {.
    importcpp: "TypeSectionSize", header: "Storage_BaseDriver.hxx".}
proc readTypeInformations*(this: var StorageBaseDriver; typeNum: var int;
                          typeName: var TCollectionAsciiString) {.
    importcpp: "ReadTypeInformations", header: "Storage_BaseDriver.hxx".}
proc endReadTypeSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndReadTypeSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteRootSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginWriteRootSection", header: "Storage_BaseDriver.hxx".}
proc setRootSectionSize*(this: var StorageBaseDriver; aSize: int) {.
    importcpp: "SetRootSectionSize", header: "Storage_BaseDriver.hxx".}
proc writeRoot*(this: var StorageBaseDriver; rootName: TCollectionAsciiString;
               aRef: int; aType: TCollectionAsciiString) {.importcpp: "WriteRoot",
    header: "Storage_BaseDriver.hxx".}
proc endWriteRootSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndWriteRootSection", header: "Storage_BaseDriver.hxx".}
proc beginReadRootSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginReadRootSection", header: "Storage_BaseDriver.hxx".}
proc rootSectionSize*(this: var StorageBaseDriver): int {.
    importcpp: "RootSectionSize", header: "Storage_BaseDriver.hxx".}
proc readRoot*(this: var StorageBaseDriver; rootName: var TCollectionAsciiString;
              aRef: var int; aType: var TCollectionAsciiString) {.
    importcpp: "ReadRoot", header: "Storage_BaseDriver.hxx".}
proc endReadRootSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndReadRootSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteRefSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginWriteRefSection", header: "Storage_BaseDriver.hxx".}
proc setRefSectionSize*(this: var StorageBaseDriver; aSize: int) {.
    importcpp: "SetRefSectionSize", header: "Storage_BaseDriver.hxx".}
proc writeReferenceType*(this: var StorageBaseDriver; reference: int; typeNum: int) {.
    importcpp: "WriteReferenceType", header: "Storage_BaseDriver.hxx".}
proc endWriteRefSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndWriteRefSection", header: "Storage_BaseDriver.hxx".}
proc beginReadRefSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginReadRefSection", header: "Storage_BaseDriver.hxx".}
proc refSectionSize*(this: var StorageBaseDriver): int {.importcpp: "RefSectionSize",
    header: "Storage_BaseDriver.hxx".}
proc readReferenceType*(this: var StorageBaseDriver; reference: var int;
                       typeNum: var int) {.importcpp: "ReadReferenceType",
                                        header: "Storage_BaseDriver.hxx".}
proc endReadRefSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndReadRefSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteDataSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginWriteDataSection", header: "Storage_BaseDriver.hxx".}
proc writePersistentObjectHeader*(this: var StorageBaseDriver; aRef: int; aType: int) {.
    importcpp: "WritePersistentObjectHeader", header: "Storage_BaseDriver.hxx".}
proc beginWritePersistentObjectData*(this: var StorageBaseDriver) {.
    importcpp: "BeginWritePersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc beginWriteObjectData*(this: var StorageBaseDriver) {.
    importcpp: "BeginWriteObjectData", header: "Storage_BaseDriver.hxx".}
proc endWriteObjectData*(this: var StorageBaseDriver) {.
    importcpp: "EndWriteObjectData", header: "Storage_BaseDriver.hxx".}
proc endWritePersistentObjectData*(this: var StorageBaseDriver) {.
    importcpp: "EndWritePersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc endWriteDataSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndWriteDataSection", header: "Storage_BaseDriver.hxx".}
proc beginReadDataSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "BeginReadDataSection", header: "Storage_BaseDriver.hxx".}
proc readPersistentObjectHeader*(this: var StorageBaseDriver; aRef: var int;
                                aType: var int) {.
    importcpp: "ReadPersistentObjectHeader", header: "Storage_BaseDriver.hxx".}
proc beginReadPersistentObjectData*(this: var StorageBaseDriver) {.
    importcpp: "BeginReadPersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc beginReadObjectData*(this: var StorageBaseDriver) {.
    importcpp: "BeginReadObjectData", header: "Storage_BaseDriver.hxx".}
proc endReadObjectData*(this: var StorageBaseDriver) {.
    importcpp: "EndReadObjectData", header: "Storage_BaseDriver.hxx".}
proc endReadPersistentObjectData*(this: var StorageBaseDriver) {.
    importcpp: "EndReadPersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc endReadDataSection*(this: var StorageBaseDriver): StorageError {.
    importcpp: "EndReadDataSection", header: "Storage_BaseDriver.hxx".}
proc skipObject*(this: var StorageBaseDriver) {.importcpp: "SkipObject",
    header: "Storage_BaseDriver.hxx".}
proc close*(this: var StorageBaseDriver): StorageError {.importcpp: "Close",
    header: "Storage_BaseDriver.hxx".}
proc putReference*(this: var StorageBaseDriver; aValue: int): var StorageBaseDriver {.
    importcpp: "PutReference", header: "Storage_BaseDriver.hxx".}
proc putCharacter*(this: var StorageBaseDriver; aValue: StandardCharacter): var StorageBaseDriver {.
    importcpp: "PutCharacter", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: StandardCharacter): var StorageBaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putExtCharacter*(this: var StorageBaseDriver; aValue: StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "PutExtCharacter", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putInteger*(this: var StorageBaseDriver; aValue: int): var StorageBaseDriver {.
    importcpp: "PutInteger", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: int): var StorageBaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putBoolean*(this: var StorageBaseDriver; aValue: bool): var StorageBaseDriver {.
    importcpp: "PutBoolean", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: bool): var StorageBaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putReal*(this: var StorageBaseDriver; aValue: float): var StorageBaseDriver {.
    importcpp: "PutReal", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: float): var StorageBaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putShortReal*(this: var StorageBaseDriver; aValue: StandardShortReal): var StorageBaseDriver {.
    importcpp: "PutShortReal", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: StandardShortReal): var StorageBaseDriver {.
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc getReference*(this: var StorageBaseDriver; aValue: var int): var StorageBaseDriver {.
    importcpp: "GetReference", header: "Storage_BaseDriver.hxx".}
proc getCharacter*(this: var StorageBaseDriver; aValue: var StandardCharacter): var StorageBaseDriver {.
    importcpp: "GetCharacter", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var StandardCharacter): var StorageBaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getExtCharacter*(this: var StorageBaseDriver; aValue: var StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "GetExtCharacter", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getInteger*(this: var StorageBaseDriver; aValue: var int): var StorageBaseDriver {.
    importcpp: "GetInteger", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var int): var StorageBaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getBoolean*(this: var StorageBaseDriver; aValue: var bool): var StorageBaseDriver {.
    importcpp: "GetBoolean", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var bool): var StorageBaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getReal*(this: var StorageBaseDriver; aValue: var float): var StorageBaseDriver {.
    importcpp: "GetReal", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var float): var StorageBaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getShortReal*(this: var StorageBaseDriver; aValue: var StandardShortReal): var StorageBaseDriver {.
    importcpp: "GetShortReal", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var StandardShortReal): var StorageBaseDriver {.
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
