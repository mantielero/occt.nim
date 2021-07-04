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
  FSD_FStream, ../Storage/Storage_BaseDriver

discard "forward decl of Storage_StreamTypeMismatchError"
discard "forward decl of Storage_StreamFormatError"
discard "forward decl of Storage_StreamWriteError"
discard "forward decl of Storage_StreamExtCharParityError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of FSD_File"
type
  Handle_FSD_File* = handle[FSD_File]

## ! A general driver which defines as a file, the
## ! physical container for data to be stored or retrieved.

type
  FSD_File* {.importcpp: "FSD_File", header: "FSD_File.hxx", bycopy.} = object of Storage_BaseDriver ##
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
# 
#   FSD_Filebase_type* = Storage_BaseDriver
# 
# proc get_type_name*(): cstring {.importcpp: "FSD_File::get_type_name(@)",
                              header: "FSD_File.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FSD_File::get_type_descriptor(@)", header: "FSD_File.hxx".}
proc DynamicType*(this: FSD_File): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "FSD_File.hxx".}
proc constructFSD_File*(): FSD_File {.constructor, importcpp: "FSD_File(@)",
                                   header: "FSD_File.hxx".}
proc Open*(this: var FSD_File; aName: TCollection_AsciiString; aMode: Storage_OpenMode): Storage_Error {.
    importcpp: "Open", header: "FSD_File.hxx".}
proc IsEnd*(this: var FSD_File): Standard_Boolean {.importcpp: "IsEnd",
#     header: "FSD_File.hxx".}
# proc Tell*(this: var FSD_File): Storage_Position {.importcpp: "Tell",
    header: "FSD_File.hxx".}
proc IsGoodFileType*(aName: TCollection_AsciiString): Storage_Error {.
    importcpp: "FSD_File::IsGoodFileType(@)", header: "FSD_File.hxx".}
proc BeginWriteInfoSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginWriteInfoSection", header: "FSD_File.hxx".}
proc WriteInfo*(this: var FSD_File; nbObj: Standard_Integer;
               dbVersion: TCollection_AsciiString; date: TCollection_AsciiString;
               schemaName: TCollection_AsciiString;
               schemaVersion: TCollection_AsciiString;
               appName: TCollection_ExtendedString;
               appVersion: TCollection_AsciiString;
               objectType: TCollection_ExtendedString;
               userInfo: TColStd_SequenceOfAsciiString) {.importcpp: "WriteInfo",
    header: "FSD_File.hxx".}
proc EndWriteInfoSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndWriteInfoSection", header: "FSD_File.hxx".}
proc BeginReadInfoSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginReadInfoSection", header: "FSD_File.hxx".}
proc ReadInfo*(this: var FSD_File; nbObj: var Standard_Integer;
              dbVersion: var TCollection_AsciiString;
              date: var TCollection_AsciiString;
              schemaName: var TCollection_AsciiString;
              schemaVersion: var TCollection_AsciiString;
              appName: var TCollection_ExtendedString;
              appVersion: var TCollection_AsciiString;
              objectType: var TCollection_ExtendedString;
              userInfo: var TColStd_SequenceOfAsciiString) {.importcpp: "ReadInfo",
    header: "FSD_File.hxx".}
proc ReadCompleteInfo*(this: var FSD_File; theIStream: var Standard_IStream;
                      theData: var handle[Storage_Data]) {.
    importcpp: "ReadCompleteInfo", header: "FSD_File.hxx".}
proc EndReadInfoSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndReadInfoSection", header: "FSD_File.hxx".}
proc BeginWriteCommentSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginWriteCommentSection", header: "FSD_File.hxx".}
proc WriteComment*(this: var FSD_File;
                  userComments: TColStd_SequenceOfExtendedString) {.
    importcpp: "WriteComment", header: "FSD_File.hxx".}
proc EndWriteCommentSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndWriteCommentSection", header: "FSD_File.hxx".}
proc BeginReadCommentSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginReadCommentSection", header: "FSD_File.hxx".}
proc ReadComment*(this: var FSD_File;
                 userComments: var TColStd_SequenceOfExtendedString) {.
    importcpp: "ReadComment", header: "FSD_File.hxx".}
proc EndReadCommentSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndReadCommentSection", header: "FSD_File.hxx".}
proc BeginWriteTypeSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginWriteTypeSection", header: "FSD_File.hxx".}
proc SetTypeSectionSize*(this: var FSD_File; aSize: Standard_Integer) {.
    importcpp: "SetTypeSectionSize", header: "FSD_File.hxx".}
proc WriteTypeInformations*(this: var FSD_File; typeNum: Standard_Integer;
                           typeName: TCollection_AsciiString) {.
    importcpp: "WriteTypeInformations", header: "FSD_File.hxx".}
proc EndWriteTypeSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndWriteTypeSection", header: "FSD_File.hxx".}
proc BeginReadTypeSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginReadTypeSection", header: "FSD_File.hxx".}
proc TypeSectionSize*(this: var FSD_File): Standard_Integer {.
    importcpp: "TypeSectionSize", header: "FSD_File.hxx".}
proc ReadTypeInformations*(this: var FSD_File; typeNum: var Standard_Integer;
                          typeName: var TCollection_AsciiString) {.
    importcpp: "ReadTypeInformations", header: "FSD_File.hxx".}
proc EndReadTypeSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndReadTypeSection", header: "FSD_File.hxx".}
proc BeginWriteRootSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginWriteRootSection", header: "FSD_File.hxx".}
proc SetRootSectionSize*(this: var FSD_File; aSize: Standard_Integer) {.
    importcpp: "SetRootSectionSize", header: "FSD_File.hxx".}
proc WriteRoot*(this: var FSD_File; rootName: TCollection_AsciiString;
               aRef: Standard_Integer; aType: TCollection_AsciiString) {.
    importcpp: "WriteRoot", header: "FSD_File.hxx".}
proc EndWriteRootSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndWriteRootSection", header: "FSD_File.hxx".}
proc BeginReadRootSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginReadRootSection", header: "FSD_File.hxx".}
proc RootSectionSize*(this: var FSD_File): Standard_Integer {.
    importcpp: "RootSectionSize", header: "FSD_File.hxx".}
proc ReadRoot*(this: var FSD_File; rootName: var TCollection_AsciiString;
              aRef: var Standard_Integer; aType: var TCollection_AsciiString) {.
    importcpp: "ReadRoot", header: "FSD_File.hxx".}
proc EndReadRootSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndReadRootSection", header: "FSD_File.hxx".}
proc BeginWriteRefSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginWriteRefSection", header: "FSD_File.hxx".}
proc SetRefSectionSize*(this: var FSD_File; aSize: Standard_Integer) {.
    importcpp: "SetRefSectionSize", header: "FSD_File.hxx".}
proc WriteReferenceType*(this: var FSD_File; reference: Standard_Integer;
                        typeNum: Standard_Integer) {.
    importcpp: "WriteReferenceType", header: "FSD_File.hxx".}
proc EndWriteRefSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndWriteRefSection", header: "FSD_File.hxx".}
proc BeginReadRefSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginReadRefSection", header: "FSD_File.hxx".}
proc RefSectionSize*(this: var FSD_File): Standard_Integer {.
    importcpp: "RefSectionSize", header: "FSD_File.hxx".}
proc ReadReferenceType*(this: var FSD_File; reference: var Standard_Integer;
                       typeNum: var Standard_Integer) {.
    importcpp: "ReadReferenceType", header: "FSD_File.hxx".}
proc EndReadRefSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndReadRefSection", header: "FSD_File.hxx".}
proc BeginWriteDataSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginWriteDataSection", header: "FSD_File.hxx".}
proc WritePersistentObjectHeader*(this: var FSD_File; aRef: Standard_Integer;
                                 aType: Standard_Integer) {.
    importcpp: "WritePersistentObjectHeader", header: "FSD_File.hxx".}
proc BeginWritePersistentObjectData*(this: var FSD_File) {.
    importcpp: "BeginWritePersistentObjectData", header: "FSD_File.hxx".}
proc BeginWriteObjectData*(this: var FSD_File) {.importcpp: "BeginWriteObjectData",
    header: "FSD_File.hxx".}
proc EndWriteObjectData*(this: var FSD_File) {.importcpp: "EndWriteObjectData",
    header: "FSD_File.hxx".}
proc EndWritePersistentObjectData*(this: var FSD_File) {.
    importcpp: "EndWritePersistentObjectData", header: "FSD_File.hxx".}
proc EndWriteDataSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndWriteDataSection", header: "FSD_File.hxx".}
proc BeginReadDataSection*(this: var FSD_File): Storage_Error {.
    importcpp: "BeginReadDataSection", header: "FSD_File.hxx".}
proc ReadPersistentObjectHeader*(this: var FSD_File; aRef: var Standard_Integer;
                                aType: var Standard_Integer) {.
    importcpp: "ReadPersistentObjectHeader", header: "FSD_File.hxx".}
proc BeginReadPersistentObjectData*(this: var FSD_File) {.
    importcpp: "BeginReadPersistentObjectData", header: "FSD_File.hxx".}
proc BeginReadObjectData*(this: var FSD_File) {.importcpp: "BeginReadObjectData",
    header: "FSD_File.hxx".}
proc EndReadObjectData*(this: var FSD_File) {.importcpp: "EndReadObjectData",
    header: "FSD_File.hxx".}
proc EndReadPersistentObjectData*(this: var FSD_File) {.
    importcpp: "EndReadPersistentObjectData", header: "FSD_File.hxx".}
proc EndReadDataSection*(this: var FSD_File): Storage_Error {.
    importcpp: "EndReadDataSection", header: "FSD_File.hxx".}
proc SkipObject*(this: var FSD_File) {.importcpp: "SkipObject", header: "FSD_File.hxx".}
proc PutReference*(this: var FSD_File; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "PutReference", header: "FSD_File.hxx".}
proc PutCharacter*(this: var FSD_File; aValue: Standard_Character): var Storage_BaseDriver {.
    importcpp: "PutCharacter", header: "FSD_File.hxx".}
proc PutExtCharacter*(this: var FSD_File; aValue: Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "PutExtCharacter", header: "FSD_File.hxx".}
proc PutInteger*(this: var FSD_File; aValue: Standard_Integer): var Storage_BaseDriver {.
    importcpp: "PutInteger", header: "FSD_File.hxx".}
proc PutBoolean*(this: var FSD_File; aValue: Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "PutBoolean", header: "FSD_File.hxx".}
proc PutReal*(this: var FSD_File; aValue: Standard_Real): var Storage_BaseDriver {.
    importcpp: "PutReal", header: "FSD_File.hxx".}
proc PutShortReal*(this: var FSD_File; aValue: Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "PutShortReal", header: "FSD_File.hxx".}
proc GetReference*(this: var FSD_File; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "GetReference", header: "FSD_File.hxx".}
proc GetCharacter*(this: var FSD_File; aValue: var Standard_Character): var Storage_BaseDriver {.
    importcpp: "GetCharacter", header: "FSD_File.hxx".}
proc GetExtCharacter*(this: var FSD_File; aValue: var Standard_ExtCharacter): var Storage_BaseDriver {.
    importcpp: "GetExtCharacter", header: "FSD_File.hxx".}
proc GetInteger*(this: var FSD_File; aValue: var Standard_Integer): var Storage_BaseDriver {.
    importcpp: "GetInteger", header: "FSD_File.hxx".}
proc GetBoolean*(this: var FSD_File; aValue: var Standard_Boolean): var Storage_BaseDriver {.
    importcpp: "GetBoolean", header: "FSD_File.hxx".}
proc GetReal*(this: var FSD_File; aValue: var Standard_Real): var Storage_BaseDriver {.
    importcpp: "GetReal", header: "FSD_File.hxx".}
proc GetShortReal*(this: var FSD_File; aValue: var Standard_ShortReal): var Storage_BaseDriver {.
    importcpp: "GetShortReal", header: "FSD_File.hxx".}
proc Close*(this: var FSD_File): Storage_Error {.importcpp: "Close",
#     header: "FSD_File.hxx".}
# proc Destroy*(this: var FSD_File) {.importcpp: "Destroy", header: "FSD_File.hxx".}
proc destroyFSD_File*(this: var FSD_File) {.importcpp: "#.~FSD_File()",
                                        header: "FSD_File.hxx".}
proc MagicNumber*(): Standard_CString {.importcpp: "FSD_File::MagicNumber(@)",
                                     header: "FSD_File.hxx".}


