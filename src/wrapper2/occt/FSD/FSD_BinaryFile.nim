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
discard "forward decl of Storage_HeaderData"
when not defined(OCCT_BINARY_FILE_DO_INVERSE):
  when defined(solaris) or defined(irix):
    ##  Do inverse on big endian platform
    const
      OCCT_BINARY_FILE_DO_INVERSE* = 1
  else:
    const
      OCCT_BINARY_FILE_DO_INVERSE* = 0
discard "forward decl of FSD_BinaryFile"
type
  HandleFSD_BinaryFile* = Handle[FSD_BinaryFile]
  FSD_BinaryFile* {.importcpp: "FSD_BinaryFile", header: "FSD_BinaryFile.hxx", bycopy.} = object of StorageBaseDriver ## !@name Own methods
                                                                                                            ## /Inverse bytes in integer value
                                                                                                            ## ! read <rsize> character from the current position.

  FSD_BinaryFilebaseType* = StorageBaseDriver

proc getTypeName*(): cstring {.importcpp: "FSD_BinaryFile::get_type_name(@)",
                            header: "FSD_BinaryFile.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FSD_BinaryFile::get_type_descriptor(@)",
    header: "FSD_BinaryFile.hxx".}
proc dynamicType*(this: FSD_BinaryFile): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FSD_BinaryFile.hxx".}
proc constructFSD_BinaryFile*(): FSD_BinaryFile {.constructor,
    importcpp: "FSD_BinaryFile(@)", header: "FSD_BinaryFile.hxx".}
proc open*(this: var FSD_BinaryFile; aName: TCollectionAsciiString;
          aMode: StorageOpenMode): StorageError {.importcpp: "Open",
    header: "FSD_BinaryFile.hxx".}
proc isEnd*(this: var FSD_BinaryFile): StandardBoolean {.importcpp: "IsEnd",
    header: "FSD_BinaryFile.hxx".}
proc tell*(this: var FSD_BinaryFile): StoragePosition {.importcpp: "Tell",
    header: "FSD_BinaryFile.hxx".}
proc isGoodFileType*(aName: TCollectionAsciiString): StorageError {.
    importcpp: "FSD_BinaryFile::IsGoodFileType(@)", header: "FSD_BinaryFile.hxx".}
proc beginWriteInfoSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginWriteInfoSection", header: "FSD_BinaryFile.hxx".}
proc writeInfo*(theOStream: var StandardOStream; nbObj: StandardInteger;
               dbVersion: TCollectionAsciiString; date: TCollectionAsciiString;
               schemaName: TCollectionAsciiString;
               schemaVersion: TCollectionAsciiString;
               appName: TCollectionExtendedString;
               appVersion: TCollectionAsciiString;
               objectType: TCollectionExtendedString;
               userInfo: TColStdSequenceOfAsciiString;
               theOnlyCount: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "FSD_BinaryFile::WriteInfo(@)", header: "FSD_BinaryFile.hxx".}
proc writeInfo*(this: var FSD_BinaryFile; nbObj: StandardInteger;
               dbVersion: TCollectionAsciiString; date: TCollectionAsciiString;
               schemaName: TCollectionAsciiString;
               schemaVersion: TCollectionAsciiString;
               appName: TCollectionExtendedString;
               appVersion: TCollectionAsciiString;
               objectType: TCollectionExtendedString;
               userInfo: TColStdSequenceOfAsciiString) {.importcpp: "WriteInfo",
    header: "FSD_BinaryFile.hxx".}
proc endWriteInfoSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndWriteInfoSection", header: "FSD_BinaryFile.hxx".}
proc endWriteInfoSection*(this: var FSD_BinaryFile; theOStream: var StandardOStream): StorageError {.
    importcpp: "EndWriteInfoSection", header: "FSD_BinaryFile.hxx".}
proc beginReadInfoSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginReadInfoSection", header: "FSD_BinaryFile.hxx".}
proc readInfo*(this: var FSD_BinaryFile; nbObj: var StandardInteger;
              dbVersion: var TCollectionAsciiString;
              date: var TCollectionAsciiString;
              schemaName: var TCollectionAsciiString;
              schemaVersion: var TCollectionAsciiString;
              appName: var TCollectionExtendedString;
              appVersion: var TCollectionAsciiString;
              objectType: var TCollectionExtendedString;
              userInfo: var TColStdSequenceOfAsciiString) {.importcpp: "ReadInfo",
    header: "FSD_BinaryFile.hxx".}
proc readCompleteInfo*(this: var FSD_BinaryFile; theIStream: var StandardIStream;
                      theData: var Handle[StorageData]) {.
    importcpp: "ReadCompleteInfo", header: "FSD_BinaryFile.hxx".}
proc endReadInfoSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndReadInfoSection", header: "FSD_BinaryFile.hxx".}
proc beginWriteCommentSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc beginWriteCommentSection*(this: var FSD_BinaryFile;
                              theOStream: var StandardOStream): StorageError {.
    importcpp: "BeginWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc writeComment*(this: var FSD_BinaryFile;
                  userComments: TColStdSequenceOfExtendedString) {.
    importcpp: "WriteComment", header: "FSD_BinaryFile.hxx".}
proc writeComment*(theOStream: var StandardOStream;
                  theComments: TColStdSequenceOfExtendedString;
                  theOnlyCount: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "FSD_BinaryFile::WriteComment(@)", header: "FSD_BinaryFile.hxx".}
proc endWriteCommentSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc endWriteCommentSection*(this: var FSD_BinaryFile;
                            theOStream: var StandardOStream): StorageError {.
    importcpp: "EndWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc beginReadCommentSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginReadCommentSection", header: "FSD_BinaryFile.hxx".}
proc readComment*(this: var FSD_BinaryFile;
                 userComments: var TColStdSequenceOfExtendedString) {.
    importcpp: "ReadComment", header: "FSD_BinaryFile.hxx".}
proc readComment*(theIStream: var StandardIStream;
                 userComments: var TColStdSequenceOfExtendedString) {.
    importcpp: "FSD_BinaryFile::ReadComment(@)", header: "FSD_BinaryFile.hxx".}
proc endReadCommentSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndReadCommentSection", header: "FSD_BinaryFile.hxx".}
proc beginWriteTypeSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginWriteTypeSection", header: "FSD_BinaryFile.hxx".}
proc setTypeSectionSize*(this: var FSD_BinaryFile; aSize: StandardInteger) {.
    importcpp: "SetTypeSectionSize", header: "FSD_BinaryFile.hxx".}
proc writeTypeInformations*(this: var FSD_BinaryFile; typeNum: StandardInteger;
                           typeName: TCollectionAsciiString) {.
    importcpp: "WriteTypeInformations", header: "FSD_BinaryFile.hxx".}
proc endWriteTypeSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndWriteTypeSection", header: "FSD_BinaryFile.hxx".}
proc beginReadTypeSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginReadTypeSection", header: "FSD_BinaryFile.hxx".}
proc typeSectionSize*(this: var FSD_BinaryFile): StandardInteger {.
    importcpp: "TypeSectionSize", header: "FSD_BinaryFile.hxx".}
proc typeSectionSize*(theIStream: var StandardIStream): StandardInteger {.
    importcpp: "FSD_BinaryFile::TypeSectionSize(@)", header: "FSD_BinaryFile.hxx".}
proc readTypeInformations*(this: var FSD_BinaryFile; typeNum: var StandardInteger;
                          typeName: var TCollectionAsciiString) {.
    importcpp: "ReadTypeInformations", header: "FSD_BinaryFile.hxx".}
proc readTypeInformations*(theIStream: var StandardIStream;
                          typeNum: var StandardInteger;
                          typeName: var TCollectionAsciiString) {.
    importcpp: "FSD_BinaryFile::ReadTypeInformations(@)",
    header: "FSD_BinaryFile.hxx".}
proc endReadTypeSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndReadTypeSection", header: "FSD_BinaryFile.hxx".}
proc beginWriteRootSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginWriteRootSection", header: "FSD_BinaryFile.hxx".}
proc setRootSectionSize*(this: var FSD_BinaryFile; aSize: StandardInteger) {.
    importcpp: "SetRootSectionSize", header: "FSD_BinaryFile.hxx".}
proc writeRoot*(this: var FSD_BinaryFile; rootName: TCollectionAsciiString;
               aRef: StandardInteger; aType: TCollectionAsciiString) {.
    importcpp: "WriteRoot", header: "FSD_BinaryFile.hxx".}
proc endWriteRootSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndWriteRootSection", header: "FSD_BinaryFile.hxx".}
proc beginReadRootSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginReadRootSection", header: "FSD_BinaryFile.hxx".}
proc rootSectionSize*(this: var FSD_BinaryFile): StandardInteger {.
    importcpp: "RootSectionSize", header: "FSD_BinaryFile.hxx".}
proc rootSectionSize*(theIStream: var StandardIStream): StandardInteger {.
    importcpp: "FSD_BinaryFile::RootSectionSize(@)", header: "FSD_BinaryFile.hxx".}
proc readRoot*(this: var FSD_BinaryFile; rootName: var TCollectionAsciiString;
              aRef: var StandardInteger; aType: var TCollectionAsciiString) {.
    importcpp: "ReadRoot", header: "FSD_BinaryFile.hxx".}
proc readRoot*(theIStream: var StandardIStream;
              rootName: var TCollectionAsciiString; aRef: var StandardInteger;
              aType: var TCollectionAsciiString) {.
    importcpp: "FSD_BinaryFile::ReadRoot(@)", header: "FSD_BinaryFile.hxx".}
proc endReadRootSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndReadRootSection", header: "FSD_BinaryFile.hxx".}
proc beginWriteRefSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginWriteRefSection", header: "FSD_BinaryFile.hxx".}
proc setRefSectionSize*(this: var FSD_BinaryFile; aSize: StandardInteger) {.
    importcpp: "SetRefSectionSize", header: "FSD_BinaryFile.hxx".}
proc writeReferenceType*(this: var FSD_BinaryFile; reference: StandardInteger;
                        typeNum: StandardInteger) {.
    importcpp: "WriteReferenceType", header: "FSD_BinaryFile.hxx".}
proc endWriteRefSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndWriteRefSection", header: "FSD_BinaryFile.hxx".}
proc beginReadRefSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginReadRefSection", header: "FSD_BinaryFile.hxx".}
proc refSectionSize*(this: var FSD_BinaryFile): StandardInteger {.
    importcpp: "RefSectionSize", header: "FSD_BinaryFile.hxx".}
proc refSectionSize*(theIStream: var StandardIStream): StandardInteger {.
    importcpp: "FSD_BinaryFile::RefSectionSize(@)", header: "FSD_BinaryFile.hxx".}
proc readReferenceType*(this: var FSD_BinaryFile; reference: var StandardInteger;
                       typeNum: var StandardInteger) {.
    importcpp: "ReadReferenceType", header: "FSD_BinaryFile.hxx".}
proc readReferenceType*(theIStream: var StandardIStream;
                       reference: var StandardInteger; typeNum: var StandardInteger) {.
    importcpp: "FSD_BinaryFile::ReadReferenceType(@)",
    header: "FSD_BinaryFile.hxx".}
proc endReadRefSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndReadRefSection", header: "FSD_BinaryFile.hxx".}
proc beginWriteDataSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginWriteDataSection", header: "FSD_BinaryFile.hxx".}
proc writePersistentObjectHeader*(this: var FSD_BinaryFile; aRef: StandardInteger;
                                 aType: StandardInteger) {.
    importcpp: "WritePersistentObjectHeader", header: "FSD_BinaryFile.hxx".}
proc beginWritePersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginWritePersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc beginWriteObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginWriteObjectData", header: "FSD_BinaryFile.hxx".}
proc endWriteObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "EndWriteObjectData", header: "FSD_BinaryFile.hxx".}
proc endWritePersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "EndWritePersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc endWriteDataSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndWriteDataSection", header: "FSD_BinaryFile.hxx".}
proc beginReadDataSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "BeginReadDataSection", header: "FSD_BinaryFile.hxx".}
proc readPersistentObjectHeader*(this: var FSD_BinaryFile;
                                aRef: var StandardInteger;
                                aType: var StandardInteger) {.
    importcpp: "ReadPersistentObjectHeader", header: "FSD_BinaryFile.hxx".}
proc beginReadPersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginReadPersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc beginReadObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginReadObjectData", header: "FSD_BinaryFile.hxx".}
proc endReadObjectData*(this: var FSD_BinaryFile) {.importcpp: "EndReadObjectData",
    header: "FSD_BinaryFile.hxx".}
proc endReadPersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "EndReadPersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc endReadDataSection*(this: var FSD_BinaryFile): StorageError {.
    importcpp: "EndReadDataSection", header: "FSD_BinaryFile.hxx".}
proc skipObject*(this: var FSD_BinaryFile) {.importcpp: "SkipObject",
    header: "FSD_BinaryFile.hxx".}
proc putReference*(this: var FSD_BinaryFile; aValue: StandardInteger): var StorageBaseDriver {.
    importcpp: "PutReference", header: "FSD_BinaryFile.hxx".}
proc putCharacter*(this: var FSD_BinaryFile; aValue: StandardCharacter): var StorageBaseDriver {.
    importcpp: "PutCharacter", header: "FSD_BinaryFile.hxx".}
proc putExtCharacter*(this: var FSD_BinaryFile; aValue: StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "PutExtCharacter", header: "FSD_BinaryFile.hxx".}
proc putInteger*(theOStream: var StandardOStream; aValue: StandardInteger;
                theOnlyCount: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "FSD_BinaryFile::PutInteger(@)", header: "FSD_BinaryFile.hxx".}
proc putInteger*(this: var FSD_BinaryFile; aValue: StandardInteger): var StorageBaseDriver {.
    importcpp: "PutInteger", header: "FSD_BinaryFile.hxx".}
proc putBoolean*(this: var FSD_BinaryFile; aValue: StandardBoolean): var StorageBaseDriver {.
    importcpp: "PutBoolean", header: "FSD_BinaryFile.hxx".}
proc putReal*(this: var FSD_BinaryFile; aValue: StandardReal): var StorageBaseDriver {.
    importcpp: "PutReal", header: "FSD_BinaryFile.hxx".}
proc putShortReal*(this: var FSD_BinaryFile; aValue: StandardShortReal): var StorageBaseDriver {.
    importcpp: "PutShortReal", header: "FSD_BinaryFile.hxx".}
proc getReference*(this: var FSD_BinaryFile; aValue: var StandardInteger): var StorageBaseDriver {.
    importcpp: "GetReference", header: "FSD_BinaryFile.hxx".}
proc getCharacter*(this: var FSD_BinaryFile; aValue: var StandardCharacter): var StorageBaseDriver {.
    importcpp: "GetCharacter", header: "FSD_BinaryFile.hxx".}
proc getReference*(theIStream: var StandardIStream; aValue: var StandardInteger) {.
    importcpp: "FSD_BinaryFile::GetReference(@)", header: "FSD_BinaryFile.hxx".}
proc getExtCharacter*(this: var FSD_BinaryFile; aValue: var StandardExtCharacter): var StorageBaseDriver {.
    importcpp: "GetExtCharacter", header: "FSD_BinaryFile.hxx".}
proc getInteger*(this: var FSD_BinaryFile; aValue: var StandardInteger): var StorageBaseDriver {.
    importcpp: "GetInteger", header: "FSD_BinaryFile.hxx".}
proc getInteger*(theIStream: var StandardIStream; aValue: var StandardInteger) {.
    importcpp: "FSD_BinaryFile::GetInteger(@)", header: "FSD_BinaryFile.hxx".}
proc getBoolean*(this: var FSD_BinaryFile; aValue: var StandardBoolean): var StorageBaseDriver {.
    importcpp: "GetBoolean", header: "FSD_BinaryFile.hxx".}
proc getReal*(this: var FSD_BinaryFile; aValue: var StandardReal): var StorageBaseDriver {.
    importcpp: "GetReal", header: "FSD_BinaryFile.hxx".}
proc getShortReal*(this: var FSD_BinaryFile; aValue: var StandardShortReal): var StorageBaseDriver {.
    importcpp: "GetShortReal", header: "FSD_BinaryFile.hxx".}
proc close*(this: var FSD_BinaryFile): StorageError {.importcpp: "Close",
    header: "FSD_BinaryFile.hxx".}
proc destroy*(this: var FSD_BinaryFile) {.importcpp: "Destroy",
                                      header: "FSD_BinaryFile.hxx".}
proc destroyFSD_BinaryFile*(this: var FSD_BinaryFile) {.
    importcpp: "#.~FSD_BinaryFile()", header: "FSD_BinaryFile.hxx".}
proc inverseInt*(theValue: StandardInteger): StandardInteger {.
    importcpp: "FSD_BinaryFile::InverseInt(@)", header: "FSD_BinaryFile.hxx".}
proc inverseExtChar*(theValue: StandardExtCharacter): StandardExtCharacter {.
    importcpp: "FSD_BinaryFile::InverseExtChar(@)", header: "FSD_BinaryFile.hxx".}
proc inverseReal*(theValue: StandardReal): StandardReal {.
    importcpp: "FSD_BinaryFile::InverseReal(@)", header: "FSD_BinaryFile.hxx".}
proc inverseShortReal*(theValue: StandardShortReal): StandardShortReal {.
    importcpp: "FSD_BinaryFile::InverseShortReal(@)", header: "FSD_BinaryFile.hxx".}
proc inverseSize*(theValue: StandardSize): StandardSize {.
    importcpp: "FSD_BinaryFile::InverseSize(@)", header: "FSD_BinaryFile.hxx".}
proc inverseUint64*(theValue: culonglong): culonglong {.
    importcpp: "FSD_BinaryFile::InverseUint64(@)", header: "FSD_BinaryFile.hxx".}
proc readHeader*(theIStream: var StandardIStream; theFileHeader: var FSD_FileHeader) {.
    importcpp: "FSD_BinaryFile::ReadHeader(@)", header: "FSD_BinaryFile.hxx".}
proc readHeaderData*(theIStream: var StandardIStream;
                    theHeaderData: Handle[StorageHeaderData]) {.
    importcpp: "FSD_BinaryFile::ReadHeaderData(@)", header: "FSD_BinaryFile.hxx".}
proc readString*(theIStream: var StandardIStream; buffer: var TCollectionAsciiString) {.
    importcpp: "FSD_BinaryFile::ReadString(@)", header: "FSD_BinaryFile.hxx".}
proc readExtendedString*(theIStream: var StandardIStream;
                        buffer: var TCollectionExtendedString) {.
    importcpp: "FSD_BinaryFile::ReadExtendedString(@)",
    header: "FSD_BinaryFile.hxx".}
proc writeHeader*(theOStream: var StandardOStream; theHeader: FSD_FileHeader;
                 theOnlyCount: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "FSD_BinaryFile::WriteHeader(@)", header: "FSD_BinaryFile.hxx".}
proc magicNumber*(): StandardCString {.importcpp: "FSD_BinaryFile::MagicNumber(@)",
                                    header: "FSD_BinaryFile.hxx".}

