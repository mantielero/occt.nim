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

import
  FSD_BStream, FSD_FileHeader, ../Storage/Storage_BaseDriver,
  ../Storage/Storage_Error, ../Storage/Storage_OpenMode, ../Storage/Storage_Data,
  ../Standard/Standard_Boolean, ../Storage/Storage_Position,
  ../Standard/Standard_Integer, ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_SequenceOfExtendedString

discard "forward decl of Storage_StreamTypeMismatchError"
discard "forward decl of Storage_StreamFormatError"
discard "forward decl of Storage_StreamWriteError"
discard "forward decl of Storage_StreamExtCharParityError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_HeaderData"
when not defined(OCCT_BINARY_FILE_DO_INVERSE):
  when defined(SOLARIS) or defined(IRIX):
    ##  Do inverse on big endian platform
    const
      OCCT_BINARY_FILE_DO_INVERSE* = 1
  else:
    const
      OCCT_BINARY_FILE_DO_INVERSE* = 0
discard "forward decl of FSD_BinaryFile"
type
  Handle_FSD_BinaryFile* = handle[FSD_BinaryFile]
  FSD_BinaryFile* {.importcpp: "FSD_BinaryFile", header: "FSD_BinaryFile.hxx", bycopy.} = object of Storage_BaseDriver ## !@name Own methods
                                                                                                             ## /Inverse bytes in integer value
                                                                                                             ## ! read <rsize> character from the current position.

  FSD_BinaryFilebase_type* = Storage_BaseDriver

proc get_type_name*(): cstring {.importcpp: "FSD_BinaryFile::get_type_name(@)",
                              header: "FSD_BinaryFile.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FSD_BinaryFile::get_type_descriptor(@)",
    header: "FSD_BinaryFile.hxx".}
proc DynamicType*(this: FSD_BinaryFile): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "FSD_BinaryFile.hxx".}
proc constructFSD_BinaryFile*(): FSD_BinaryFile {.constructor,
    importcpp: "FSD_BinaryFile(@)", header: "FSD_BinaryFile.hxx".}
proc Open*(this: var FSD_BinaryFile; aName: TCollection_AsciiString;
          aMode: Storage_OpenMode): Storage_Error {.importcpp: "Open",
    header: "FSD_BinaryFile.hxx".}
proc IsEnd*(this: var FSD_BinaryFile): Standard_Boolean {.importcpp: "IsEnd",
    header: "FSD_BinaryFile.hxx".}
proc Tell*(this: var FSD_BinaryFile): Storage_Position {.importcpp: "Tell",
    header: "FSD_BinaryFile.hxx".}
proc IsGoodFileType*(aName: TCollection_AsciiString): Storage_Error {.
    importcpp: "FSD_BinaryFile::IsGoodFileType(@)", header: "FSD_BinaryFile.hxx".}
proc BeginWriteInfoSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginWriteInfoSection", header: "FSD_BinaryFile.hxx".}
proc WriteInfo*(theOStream: var Standard_OStream; nbObj: Standard_Integer;
               dbVersion: TCollection_AsciiString; date: TCollection_AsciiString;
               schemaName: TCollection_AsciiString;
               schemaVersion: TCollection_AsciiString;
               appName: TCollection_ExtendedString;
               appVersion: TCollection_AsciiString;
               objectType: TCollection_ExtendedString;
               userInfo: TColStd_SequenceOfAsciiString;
               theOnlyCount: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "FSD_BinaryFile::WriteInfo(@)", header: "FSD_BinaryFile.hxx".}
proc WriteInfo*(this: var FSD_BinaryFile; nbObj: Standard_Integer;
               dbVersion: TCollection_AsciiString; date: TCollection_AsciiString;
               schemaName: TCollection_AsciiString;
               schemaVersion: TCollection_AsciiString;
               appName: TCollection_ExtendedString;
               appVersion: TCollection_AsciiString;
               objectType: TCollection_ExtendedString;
               userInfo: TColStd_SequenceOfAsciiString) {.importcpp: "WriteInfo",
    header: "FSD_BinaryFile.hxx".}
proc EndWriteInfoSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndWriteInfoSection", header: "FSD_BinaryFile.hxx".}
proc EndWriteInfoSection*(this: var FSD_BinaryFile; theOStream: var Standard_OStream): Storage_Error {.
    importcpp: "EndWriteInfoSection", header: "FSD_BinaryFile.hxx".}
proc BeginReadInfoSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginReadInfoSection", header: "FSD_BinaryFile.hxx".}
proc ReadInfo*(this: var FSD_BinaryFile; nbObj: var Standard_Integer;
              dbVersion: var TCollection_AsciiString;
              date: var TCollection_AsciiString;
              schemaName: var TCollection_AsciiString;
              schemaVersion: var TCollection_AsciiString;
              appName: var TCollection_ExtendedString;
              appVersion: var TCollection_AsciiString;
              objectType: var TCollection_ExtendedString;
              userInfo: var TColStd_SequenceOfAsciiString) {.importcpp: "ReadInfo",
    header: "FSD_BinaryFile.hxx".}
proc ReadCompleteInfo*(this: var FSD_BinaryFile; theIStream: var Standard_IStream;
                      theData: var handle[Storage_Data]) {.
    importcpp: "ReadCompleteInfo", header: "FSD_BinaryFile.hxx".}
proc EndReadInfoSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndReadInfoSection", header: "FSD_BinaryFile.hxx".}
proc BeginWriteCommentSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc BeginWriteCommentSection*(this: var FSD_BinaryFile;
                              theOStream: var Standard_OStream): Storage_Error {.
    importcpp: "BeginWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc WriteComment*(this: var FSD_BinaryFile;
                  userComments: TColStd_SequenceOfExtendedString) {.
    importcpp: "WriteComment", header: "FSD_BinaryFile.hxx".}
proc WriteComment*(theOStream: var Standard_OStream;
                  theComments: TColStd_SequenceOfExtendedString;
                  theOnlyCount: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "FSD_BinaryFile::WriteComment(@)", header: "FSD_BinaryFile.hxx".}
proc EndWriteCommentSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc EndWriteCommentSection*(this: var FSD_BinaryFile;
                            theOStream: var Standard_OStream): Storage_Error {.
    importcpp: "EndWriteCommentSection", header: "FSD_BinaryFile.hxx".}
proc BeginReadCommentSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginReadCommentSection", header: "FSD_BinaryFile.hxx".}
proc ReadComment*(this: var FSD_BinaryFile;
                 userComments: var TColStd_SequenceOfExtendedString) {.
    importcpp: "ReadComment", header: "FSD_BinaryFile.hxx".}
proc ReadComment*(theIStream: var Standard_IStream;
                 userComments: var TColStd_SequenceOfExtendedString) {.
    importcpp: "FSD_BinaryFile::ReadComment(@)", header: "FSD_BinaryFile.hxx".}
proc EndReadCommentSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndReadCommentSection", header: "FSD_BinaryFile.hxx".}
proc BeginWriteTypeSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginWriteTypeSection", header: "FSD_BinaryFile.hxx".}
proc SetTypeSectionSize*(this: var FSD_BinaryFile; aSize: Standard_Integer) {.
    importcpp: "SetTypeSectionSize", header: "FSD_BinaryFile.hxx".}
proc WriteTypeInformations*(this: var FSD_BinaryFile; typeNum: Standard_Integer;
                           typeName: TCollection_AsciiString) {.
    importcpp: "WriteTypeInformations", header: "FSD_BinaryFile.hxx".}
proc EndWriteTypeSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndWriteTypeSection", header: "FSD_BinaryFile.hxx".}
proc BeginReadTypeSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginReadTypeSection", header: "FSD_BinaryFile.hxx".}
proc TypeSectionSize*(this: var FSD_BinaryFile): Standard_Integer {.
    importcpp: "TypeSectionSize", header: "FSD_BinaryFile.hxx".}
proc TypeSectionSize*(theIStream: var Standard_IStream): Standard_Integer {.
    importcpp: "FSD_BinaryFile::TypeSectionSize(@)", header: "FSD_BinaryFile.hxx".}
proc ReadTypeInformations*(this: var FSD_BinaryFile; typeNum: var Standard_Integer;
                          typeName: var TCollection_AsciiString) {.
    importcpp: "ReadTypeInformations", header: "FSD_BinaryFile.hxx".}
proc ReadTypeInformations*(theIStream: var Standard_IStream;
                          typeNum: var Standard_Integer;
                          typeName: var TCollection_AsciiString) {.
    importcpp: "FSD_BinaryFile::ReadTypeInformations(@)",
    header: "FSD_BinaryFile.hxx".}
proc EndReadTypeSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndReadTypeSection", header: "FSD_BinaryFile.hxx".}
proc BeginWriteRootSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginWriteRootSection", header: "FSD_BinaryFile.hxx".}
proc SetRootSectionSize*(this: var FSD_BinaryFile; aSize: Standard_Integer) {.
    importcpp: "SetRootSectionSize", header: "FSD_BinaryFile.hxx".}
proc WriteRoot*(this: var FSD_BinaryFile; rootName: TCollection_AsciiString;
               aRef: Standard_Integer; aType: TCollection_AsciiString) {.
    importcpp: "WriteRoot", header: "FSD_BinaryFile.hxx".}
proc EndWriteRootSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndWriteRootSection", header: "FSD_BinaryFile.hxx".}
proc BeginReadRootSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginReadRootSection", header: "FSD_BinaryFile.hxx".}
proc RootSectionSize*(this: var FSD_BinaryFile): Standard_Integer {.
    importcpp: "RootSectionSize", header: "FSD_BinaryFile.hxx".}
proc RootSectionSize*(theIStream: var Standard_IStream): Standard_Integer {.
    importcpp: "FSD_BinaryFile::RootSectionSize(@)", header: "FSD_BinaryFile.hxx".}
proc ReadRoot*(this: var FSD_BinaryFile; rootName: var TCollection_AsciiString;
              aRef: var Standard_Integer; aType: var TCollection_AsciiString) {.
    importcpp: "ReadRoot", header: "FSD_BinaryFile.hxx".}
proc ReadRoot*(theIStream: var Standard_IStream;
              rootName: var TCollection_AsciiString; aRef: var Standard_Integer;
              aType: var TCollection_AsciiString) {.
    importcpp: "FSD_BinaryFile::ReadRoot(@)", header: "FSD_BinaryFile.hxx".}
proc EndReadRootSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndReadRootSection", header: "FSD_BinaryFile.hxx".}
proc BeginWriteRefSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginWriteRefSection", header: "FSD_BinaryFile.hxx".}
proc SetRefSectionSize*(this: var FSD_BinaryFile; aSize: Standard_Integer) {.
    importcpp: "SetRefSectionSize", header: "FSD_BinaryFile.hxx".}
proc WriteReferenceType*(this: var FSD_BinaryFile; reference: Standard_Integer;
                        typeNum: Standard_Integer) {.
    importcpp: "WriteReferenceType", header: "FSD_BinaryFile.hxx".}
proc EndWriteRefSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndWriteRefSection", header: "FSD_BinaryFile.hxx".}
proc BeginReadRefSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginReadRefSection", header: "FSD_BinaryFile.hxx".}
proc RefSectionSize*(this: var FSD_BinaryFile): Standard_Integer {.
    importcpp: "RefSectionSize", header: "FSD_BinaryFile.hxx".}
proc RefSectionSize*(theIStream: var Standard_IStream): Standard_Integer {.
    importcpp: "FSD_BinaryFile::RefSectionSize(@)", header: "FSD_BinaryFile.hxx".}
proc ReadReferenceType*(this: var FSD_BinaryFile; reference: var Standard_Integer;
                       typeNum: var Standard_Integer) {.
    importcpp: "ReadReferenceType", header: "FSD_BinaryFile.hxx".}
proc ReadReferenceType*(theIStream: var Standard_IStream;
                       reference: var Standard_Integer;
                       typeNum: var Standard_Integer) {.
    importcpp: "FSD_BinaryFile::ReadReferenceType(@)",
    header: "FSD_BinaryFile.hxx".}
proc EndReadRefSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndReadRefSection", header: "FSD_BinaryFile.hxx".}
proc BeginWriteDataSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginWriteDataSection", header: "FSD_BinaryFile.hxx".}
proc WritePersistentObjectHeader*(this: var FSD_BinaryFile; aRef: Standard_Integer;
                                 aType: Standard_Integer) {.
    importcpp: "WritePersistentObjectHeader", header: "FSD_BinaryFile.hxx".}
proc BeginWritePersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginWritePersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc BeginWriteObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginWriteObjectData", header: "FSD_BinaryFile.hxx".}
proc EndWriteObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "EndWriteObjectData", header: "FSD_BinaryFile.hxx".}
proc EndWritePersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "EndWritePersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc EndWriteDataSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndWriteDataSection", header: "FSD_BinaryFile.hxx".}
proc BeginReadDataSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "BeginReadDataSection", header: "FSD_BinaryFile.hxx".}
proc ReadPersistentObjectHeader*(this: var FSD_BinaryFile;
                                aRef: var Standard_Integer;
                                aType: var Standard_Integer) {.
    importcpp: "ReadPersistentObjectHeader", header: "FSD_BinaryFile.hxx".}
proc BeginReadPersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginReadPersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc BeginReadObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "BeginReadObjectData", header: "FSD_BinaryFile.hxx".}
proc EndReadObjectData*(this: var FSD_BinaryFile) {.importcpp: "EndReadObjectData",
    header: "FSD_BinaryFile.hxx".}
proc EndReadPersistentObjectData*(this: var FSD_BinaryFile) {.
    importcpp: "EndReadPersistentObjectData", header: "FSD_BinaryFile.hxx".}
proc EndReadDataSection*(this: var FSD_BinaryFile): Storage_Error {.
    importcpp: "EndReadDataSection", header: "FSD_BinaryFile.hxx".}
proc SkipObject*(this: var FSD_BinaryFile) {.importcpp: "SkipObject",
    header: "FSD_BinaryFile.hxx".}
proc PutReference*(this: var FSD_BinaryFile; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "PutReference", header: "FSD_BinaryFile.hxx".}
proc PutCharacter*(this: var FSD_BinaryFile; aValue: Standard_Character): var Storage_BaseDriver {.
    importcpp: "PutCharacter", header: "FSD_BinaryFile.hxx".}
proc PutExtCharacter*(this: var FSD_BinaryFile; aValue: Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "PutExtCharacter", header: "FSD_BinaryFile.hxx".}
proc PutInteger*(theOStream: var Standard_OStream; aValue: Standard_Integer;
                theOnlyCount: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "FSD_BinaryFile::PutInteger(@)", header: "FSD_BinaryFile.hxx".}
proc PutInteger*(this: var FSD_BinaryFile; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "PutInteger", header: "FSD_BinaryFile.hxx".}
proc PutBoolean*(this: var FSD_BinaryFile; aValue: Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "PutBoolean", header: "FSD_BinaryFile.hxx".}
proc PutReal*(this: var FSD_BinaryFile; aValue: Standard_Real): var Storage_BaseDriver {.
    importcpp: "PutReal", header: "FSD_BinaryFile.hxx".}
proc PutShortReal*(this: var FSD_BinaryFile; aValue: Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "PutShortReal", header: "FSD_BinaryFile.hxx".}
proc GetReference*(this: var FSD_BinaryFile; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "GetReference", header: "FSD_BinaryFile.hxx".}
proc GetCharacter*(this: var FSD_BinaryFile; aValue: var Standard_Character): var Storage_BaseDriver {.
    importcpp: "GetCharacter", header: "FSD_BinaryFile.hxx".}
proc GetReference*(theIStream: var Standard_IStream; aValue: var Standard_Integer) {.
    importcpp: "FSD_BinaryFile::GetReference(@)", header: "FSD_BinaryFile.hxx".}
proc GetExtCharacter*(this: var FSD_BinaryFile; aValue: var Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "GetExtCharacter", header: "FSD_BinaryFile.hxx".}
proc GetInteger*(this: var FSD_BinaryFile; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "GetInteger", header: "FSD_BinaryFile.hxx".}
proc GetInteger*(theIStream: var Standard_IStream; aValue: var Standard_Integer) {.
    importcpp: "FSD_BinaryFile::GetInteger(@)", header: "FSD_BinaryFile.hxx".}
proc GetBoolean*(this: var FSD_BinaryFile; aValue: var Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "GetBoolean", header: "FSD_BinaryFile.hxx".}
proc GetReal*(this: var FSD_BinaryFile; aValue: var Standard_Real): var Storage_BaseDriver {.
    importcpp: "GetReal", header: "FSD_BinaryFile.hxx".}
proc GetShortReal*(this: var FSD_BinaryFile; aValue: var Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "GetShortReal", header: "FSD_BinaryFile.hxx".}
proc Close*(this: var FSD_BinaryFile): Storage_Error {.importcpp: "Close",
    header: "FSD_BinaryFile.hxx".}
proc Destroy*(this: var FSD_BinaryFile) {.importcpp: "Destroy",
                                      header: "FSD_BinaryFile.hxx".}
proc destroyFSD_BinaryFile*(this: var FSD_BinaryFile) {.
    importcpp: "#.~FSD_BinaryFile()", header: "FSD_BinaryFile.hxx".}
proc InverseInt*(theValue: Standard_Integer): Standard_Integer {.
    importcpp: "FSD_BinaryFile::InverseInt(@)", header: "FSD_BinaryFile.hxx".}
proc InverseExtChar*(theValue: Standard_ExtCharacter): Standard_ExtCharacter {.
    importcpp: "FSD_BinaryFile::InverseExtChar(@)", header: "FSD_BinaryFile.hxx".}
proc InverseReal*(theValue: Standard_Real): Standard_Real {.
    importcpp: "FSD_BinaryFile::InverseReal(@)", header: "FSD_BinaryFile.hxx".}
proc InverseShortReal*(theValue: Standard_ShortReal): Standard_ShortReal {.
    importcpp: "FSD_BinaryFile::InverseShortReal(@)", header: "FSD_BinaryFile.hxx".}
proc InverseSize*(theValue: Standard_Size): Standard_Size {.
    importcpp: "FSD_BinaryFile::InverseSize(@)", header: "FSD_BinaryFile.hxx".}
proc InverseUint64*(theValue: uint64_t): uint64_t {.
    importcpp: "FSD_BinaryFile::InverseUint64(@)", header: "FSD_BinaryFile.hxx".}
proc ReadHeader*(theIStream: var Standard_IStream; theFileHeader: var FSD_FileHeader) {.
    importcpp: "FSD_BinaryFile::ReadHeader(@)", header: "FSD_BinaryFile.hxx".}
proc ReadHeaderData*(theIStream: var Standard_IStream;
                    theHeaderData: handle[Storage_HeaderData]) {.
    importcpp: "FSD_BinaryFile::ReadHeaderData(@)", header: "FSD_BinaryFile.hxx".}
proc ReadString*(theIStream: var Standard_IStream;
                buffer: var TCollection_AsciiString) {.
    importcpp: "FSD_BinaryFile::ReadString(@)", header: "FSD_BinaryFile.hxx".}
proc ReadExtendedString*(theIStream: var Standard_IStream;
                        buffer: var TCollection_ExtendedString) {.
    importcpp: "FSD_BinaryFile::ReadExtendedString(@)",
    header: "FSD_BinaryFile.hxx".}
proc WriteHeader*(theOStream: var Standard_OStream; theHeader: FSD_FileHeader;
                 theOnlyCount: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "FSD_BinaryFile::WriteHeader(@)", header: "FSD_BinaryFile.hxx".}
proc MagicNumber*(): Standard_CString {.importcpp: "FSD_BinaryFile::MagicNumber(@)",
                                     header: "FSD_BinaryFile.hxx".}