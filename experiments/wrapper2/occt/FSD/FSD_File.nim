##  Created on: 1996-11-29
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
discard "forward decl of FSD_File"
type
  HandleFSD_File* = Handle[FSD_File]

## ! A general driver which defines as a file, the
## ! physical container for data to be stored or retrieved.

type
  FSD_File* {.importcpp: "FSD_File", header: "FSD_File.hxx", bycopy.} = object of StorageBaseDriver ##
                                                                                          ## !
                                                                                          ## Constructs
                                                                                          ## a
                                                                                          ## driver
                                                                                          ## defining
                                                                                          ## as
                                                                                          ## a
                                                                                          ## file,
                                                                                          ## the
                                                                                          ## physical
                                                                                          ##
                                                                                          ## !
                                                                                          ## container
                                                                                          ## for
                                                                                          ## data
                                                                                          ## to
                                                                                          ## be
                                                                                          ## stored
                                                                                          ## or
                                                                                          ## retrieved.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Use
                                                                                          ## the
                                                                                          ## function
                                                                                          ## Open
                                                                                          ## to
                                                                                          ## give
                                                                                          ## the
                                                                                          ## name
                                                                                          ## of
                                                                                          ## the
                                                                                          ## driven
                                                                                          ## file.
                                                                                          ##
                                                                                          ## !
                                                                                          ## read
                                                                                          ## from
                                                                                          ## the
                                                                                          ## current
                                                                                          ## position
                                                                                          ## to
                                                                                          ## the
                                                                                          ## end
                                                                                          ## of
                                                                                          ## line.

  FSD_FilebaseType* = StorageBaseDriver

# proc getTypeName*(): cstring {.importcpp: "FSD_File::get_type_name(@)",
#                             header: "FSD_File.hxx".}
# proc getTypeDescriptor*(): Handle[StandardType] {.
#     importcpp: "FSD_File::get_type_descriptor(@)", header: "FSD_File.hxx".}
proc dynamicType*(this: FSD_File): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FSD_File.hxx".}
proc constructFSD_File*(): FSD_File {.constructor, importcpp: "FSD_File(@)",
                                   header: "FSD_File.hxx".}
proc open*(this: var FSD_File; aName: TCollectionAsciiString; aMode: StorageOpenMode): StorageError {.
    importcpp: "Open", header: "FSD_File.hxx".}
proc isEnd*(this: var FSD_File): bool {.importcpp: "IsEnd", header: "FSD_File.hxx".}
proc tell*(this: var FSD_File): StoragePosition {.importcpp: "Tell",
    header: "FSD_File.hxx".}
proc isGoodFileType*(aName: TCollectionAsciiString): StorageError {.
#     importcpp: "FSD_File::IsGoodFileType(@)", header: "FSD_File.hxx".}
# proc beginWriteInfoSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginWriteInfoSection", header: "FSD_File.hxx".}
proc writeInfo*(this: var FSD_File; nbObj: int; dbVersion: TCollectionAsciiString;
               date: TCollectionAsciiString; schemaName: TCollectionAsciiString;
               schemaVersion: TCollectionAsciiString;
               appName: TCollectionExtendedString;
               appVersion: TCollectionAsciiString;
               objectType: TCollectionExtendedString;
               userInfo: TColStdSequenceOfAsciiString) {.importcpp: "WriteInfo",
    header: "FSD_File.hxx".}
proc endWriteInfoSection*(this: var FSD_File): StorageError {.
    importcpp: "EndWriteInfoSection", header: "FSD_File.hxx".}
proc beginReadInfoSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginReadInfoSection", header: "FSD_File.hxx".}
proc readInfo*(this: var FSD_File; nbObj: var int;
              dbVersion: var TCollectionAsciiString;
              date: var TCollectionAsciiString;
              schemaName: var TCollectionAsciiString;
              schemaVersion: var TCollectionAsciiString;
              appName: var TCollectionExtendedString;
              appVersion: var TCollectionAsciiString;
              objectType: var TCollectionExtendedString;
              userInfo: var TColStdSequenceOfAsciiString) {.importcpp: "ReadInfo",
    header: "FSD_File.hxx".}
proc readCompleteInfo*(this: var FSD_File; theIStream: var StandardIStream;
                      theData: var Handle[StorageData]) {.
    importcpp: "ReadCompleteInfo", header: "FSD_File.hxx".}
proc endReadInfoSection*(this: var FSD_File): StorageError {.
    importcpp: "EndReadInfoSection", header: "FSD_File.hxx".}
proc beginWriteCommentSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginWriteCommentSection", header: "FSD_File.hxx".}
proc writeComment*(this: var FSD_File; userComments: TColStdSequenceOfExtendedString) {.
    importcpp: "WriteComment", header: "FSD_File.hxx".}
proc endWriteCommentSection*(this: var FSD_File): StorageError {.
    importcpp: "EndWriteCommentSection", header: "FSD_File.hxx".}
proc beginReadCommentSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginReadCommentSection", header: "FSD_File.hxx".}
proc readComment*(this: var FSD_File;
                 userComments: var TColStdSequenceOfExtendedString) {.
    importcpp: "ReadComment", header: "FSD_File.hxx".}
proc endReadCommentSection*(this: var FSD_File): StorageError {.
    importcpp: "EndReadCommentSection", header: "FSD_File.hxx".}
proc beginWriteTypeSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginWriteTypeSection", header: "FSD_File.hxx".}
proc setTypeSectionSize*(this: var FSD_File; aSize: int) {.
    importcpp: "SetTypeSectionSize", header: "FSD_File.hxx".}
proc writeTypeInformations*(this: var FSD_File; typeNum: int;
                           typeName: TCollectionAsciiString) {.
    importcpp: "WriteTypeInformations", header: "FSD_File.hxx".}
proc endWriteTypeSection*(this: var FSD_File): StorageError {.
    importcpp: "EndWriteTypeSection", header: "FSD_File.hxx".}
proc beginReadTypeSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginReadTypeSection", header: "FSD_File.hxx".}
proc typeSectionSize*(this: var FSD_File): int {.importcpp: "TypeSectionSize",
    header: "FSD_File.hxx".}
proc readTypeInformations*(this: var FSD_File; typeNum: var int;
                          typeName: var TCollectionAsciiString) {.
    importcpp: "ReadTypeInformations", header: "FSD_File.hxx".}
proc endReadTypeSection*(this: var FSD_File): StorageError {.
    importcpp: "EndReadTypeSection", header: "FSD_File.hxx".}
proc beginWriteRootSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginWriteRootSection", header: "FSD_File.hxx".}
proc setRootSectionSize*(this: var FSD_File; aSize: int) {.
    importcpp: "SetRootSectionSize", header: "FSD_File.hxx".}
proc writeRoot*(this: var FSD_File; rootName: TCollectionAsciiString; aRef: int;
               aType: TCollectionAsciiString) {.importcpp: "WriteRoot",
    header: "FSD_File.hxx".}
proc endWriteRootSection*(this: var FSD_File): StorageError {.
    importcpp: "EndWriteRootSection", header: "FSD_File.hxx".}
proc beginReadRootSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginReadRootSection", header: "FSD_File.hxx".}
proc rootSectionSize*(this: var FSD_File): int {.importcpp: "RootSectionSize",
    header: "FSD_File.hxx".}
proc readRoot*(this: var FSD_File; rootName: var TCollectionAsciiString; aRef: var int;
              aType: var TCollectionAsciiString) {.importcpp: "ReadRoot",
    header: "FSD_File.hxx".}
proc endReadRootSection*(this: var FSD_File): StorageError {.
    importcpp: "EndReadRootSection", header: "FSD_File.hxx".}
proc beginWriteRefSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginWriteRefSection", header: "FSD_File.hxx".}
proc setRefSectionSize*(this: var FSD_File; aSize: int) {.
    importcpp: "SetRefSectionSize", header: "FSD_File.hxx".}
proc writeReferenceType*(this: var FSD_File; reference: int; typeNum: int) {.
    importcpp: "WriteReferenceType", header: "FSD_File.hxx".}
proc endWriteRefSection*(this: var FSD_File): StorageError {.
    importcpp: "EndWriteRefSection", header: "FSD_File.hxx".}
proc beginReadRefSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginReadRefSection", header: "FSD_File.hxx".}
proc refSectionSize*(this: var FSD_File): int {.importcpp: "RefSectionSize",
    header: "FSD_File.hxx".}
proc readReferenceType*(this: var FSD_File; reference: var int; typeNum: var int) {.
    importcpp: "ReadReferenceType", header: "FSD_File.hxx".}
proc endReadRefSection*(this: var FSD_File): StorageError {.
    importcpp: "EndReadRefSection", header: "FSD_File.hxx".}
proc beginWriteDataSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginWriteDataSection", header: "FSD_File.hxx".}
proc writePersistentObjectHeader*(this: var FSD_File; aRef: int; aType: int) {.
    importcpp: "WritePersistentObjectHeader", header: "FSD_File.hxx".}
proc beginWritePersistentObjectData*(this: var FSD_File) {.
    importcpp: "BeginWritePersistentObjectData", header: "FSD_File.hxx".}
proc beginWriteObjectData*(this: var FSD_File) {.importcpp: "BeginWriteObjectData",
    header: "FSD_File.hxx".}
proc endWriteObjectData*(this: var FSD_File) {.importcpp: "EndWriteObjectData",
    header: "FSD_File.hxx".}
proc endWritePersistentObjectData*(this: var FSD_File) {.
    importcpp: "EndWritePersistentObjectData", header: "FSD_File.hxx".}
proc endWriteDataSection*(this: var FSD_File): StorageError {.
    importcpp: "EndWriteDataSection", header: "FSD_File.hxx".}
proc beginReadDataSection*(this: var FSD_File): StorageError {.
    importcpp: "BeginReadDataSection", header: "FSD_File.hxx".}
proc readPersistentObjectHeader*(this: var FSD_File; aRef: var int; aType: var int) {.
    importcpp: "ReadPersistentObjectHeader", header: "FSD_File.hxx".}
proc beginReadPersistentObjectData*(this: var FSD_File) {.
    importcpp: "BeginReadPersistentObjectData", header: "FSD_File.hxx".}
proc beginReadObjectData*(this: var FSD_File) {.importcpp: "BeginReadObjectData",
    header: "FSD_File.hxx".}
proc endReadObjectData*(this: var FSD_File) {.importcpp: "EndReadObjectData",
    header: "FSD_File.hxx".}
proc endReadPersistentObjectData*(this: var FSD_File) {.
    importcpp: "EndReadPersistentObjectData", header: "FSD_File.hxx".}
proc endReadDataSection*(this: var FSD_File): StorageError {.
    importcpp: "EndReadDataSection", header: "FSD_File.hxx".}
proc skipObject*(this: var FSD_File) {.importcpp: "SkipObject", header: "FSD_File.hxx".}
proc putReference*(this: var FSD_File; aValue: int): var StorageBaseDriver {.
    importcpp: "PutReference", header: "FSD_File.hxx".}
proc putCharacter*(this: var FSD_File; aValue: StandardCharacter): var StorageBaseDriver {.
    importcpp: "PutCharacter", header: "FSD_File.hxx".}
proc putExtCharacter*(this: var FSD_File; aValue: StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "PutExtCharacter", header: "FSD_File.hxx".}
proc putInteger*(this: var FSD_File; aValue: int): var StorageBaseDriver {.
    importcpp: "PutInteger", header: "FSD_File.hxx".}
proc putBoolean*(this: var FSD_File; aValue: bool): var StorageBaseDriver {.
    importcpp: "PutBoolean", header: "FSD_File.hxx".}
proc putReal*(this: var FSD_File; aValue: float): var StorageBaseDriver {.
    importcpp: "PutReal", header: "FSD_File.hxx".}
proc putShortReal*(this: var FSD_File; aValue: StandardShortReal): var StorageBaseDriver {.
    importcpp: "PutShortReal", header: "FSD_File.hxx".}
proc getReference*(this: var FSD_File; aValue: var int): var StorageBaseDriver {.
    importcpp: "GetReference", header: "FSD_File.hxx".}
proc getCharacter*(this: var FSD_File; aValue: var StandardCharacter): var StorageBaseDriver {.
    importcpp: "GetCharacter", header: "FSD_File.hxx".}
proc getExtCharacter*(this: var FSD_File; aValue: var StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "GetExtCharacter", header: "FSD_File.hxx".}
proc getInteger*(this: var FSD_File; aValue: var int): var StorageBaseDriver {.
    importcpp: "GetInteger", header: "FSD_File.hxx".}
proc getBoolean*(this: var FSD_File; aValue: var bool): var StorageBaseDriver {.
    importcpp: "GetBoolean", header: "FSD_File.hxx".}
proc getReal*(this: var FSD_File; aValue: var float): var StorageBaseDriver {.
    importcpp: "GetReal", header: "FSD_File.hxx".}
proc getShortReal*(this: var FSD_File; aValue: var StandardShortReal): var StorageBaseDriver {.
    importcpp: "GetShortReal", header: "FSD_File.hxx".}
proc close*(this: var FSD_File): StorageError {.importcpp: "Close",
    header: "FSD_File.hxx".}
proc destroy*(this: var FSD_File) {.importcpp: "Destroy", header: "FSD_File.hxx".}
proc destroyFSD_File*(this: var FSD_File) {.importcpp: "#.~FSD_File()",
                                        header: "FSD_File.hxx".}
proc magicNumber*(): StandardCString {.importcpp: "FSD_File::MagicNumber(@)",
                                    header: "FSD_File.hxx".}



