import ../standard/standard_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types
import storage_types



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





proc destroyStorageBaseDriver*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "#.~Storage_BaseDriver()", header: "Storage_BaseDriver.hxx".}
proc name*(this: StorageBaseDriver): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "Storage_BaseDriver.hxx".}
proc openMode*(this: StorageBaseDriver): StorageOpenMode {.noSideEffect, cdecl,
    importcpp: "OpenMode", header: "Storage_BaseDriver.hxx".}
proc readMagicNumber*(theIStream: var StandardIStream): TCollectionAsciiString {.
    cdecl, importcpp: "Storage_BaseDriver::ReadMagicNumber(@)",
    header: "Storage_BaseDriver.hxx".}
proc open*(this: var StorageBaseDriver; aName: TCollectionAsciiString;
          aMode: StorageOpenMode): StorageError {.cdecl, importcpp: "Open",
    header: "Storage_BaseDriver.hxx".}
proc isEnd*(this: var StorageBaseDriver): bool {.cdecl, importcpp: "IsEnd",
    header: "Storage_BaseDriver.hxx".}
proc tell*(this: var StorageBaseDriver): StoragePosition {.cdecl, importcpp: "Tell",
    header: "Storage_BaseDriver.hxx".}
proc beginWriteInfoSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginWriteInfoSection", header: "Storage_BaseDriver.hxx".}
proc writeInfo*(this: var StorageBaseDriver; nbObj: cint;
               dbVersion: TCollectionAsciiString; date: TCollectionAsciiString;
               schemaName: TCollectionAsciiString;
               schemaVersion: TCollectionAsciiString;
               appName: TCollectionExtendedString;
               appVersion: TCollectionAsciiString;
               objectType: TCollectionExtendedString;
               userInfo: TColStdSequenceOfAsciiString) {.cdecl,
    importcpp: "WriteInfo", header: "Storage_BaseDriver.hxx".}
proc endWriteInfoSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndWriteInfoSection", header: "Storage_BaseDriver.hxx".}
proc beginReadInfoSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginReadInfoSection", header: "Storage_BaseDriver.hxx".}
proc readInfo*(this: var StorageBaseDriver; nbObj: var cint;
              dbVersion: var TCollectionAsciiString;
              date: var TCollectionAsciiString;
              schemaName: var TCollectionAsciiString;
              schemaVersion: var TCollectionAsciiString;
              appName: var TCollectionExtendedString;
              appVersion: var TCollectionAsciiString;
              objectType: var TCollectionExtendedString;
              userInfo: var TColStdSequenceOfAsciiString) {.cdecl,
    importcpp: "ReadInfo", header: "Storage_BaseDriver.hxx".}
proc readCompleteInfo*(this: var StorageBaseDriver; theIStream: var StandardIStream;
                      theData: var Handle[StorageData]) {.cdecl,
    importcpp: "ReadCompleteInfo", header: "Storage_BaseDriver.hxx".}
proc endReadInfoSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndReadInfoSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteCommentSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginWriteCommentSection", header: "Storage_BaseDriver.hxx".}
proc writeComment*(this: var StorageBaseDriver;
                  userComments: TColStdSequenceOfExtendedString) {.cdecl,
    importcpp: "WriteComment", header: "Storage_BaseDriver.hxx".}
proc endWriteCommentSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndWriteCommentSection", header: "Storage_BaseDriver.hxx".}
proc beginReadCommentSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginReadCommentSection", header: "Storage_BaseDriver.hxx".}
proc readComment*(this: var StorageBaseDriver;
                 userComments: var TColStdSequenceOfExtendedString) {.cdecl,
    importcpp: "ReadComment", header: "Storage_BaseDriver.hxx".}
proc endReadCommentSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndReadCommentSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteTypeSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginWriteTypeSection", header: "Storage_BaseDriver.hxx".}
proc setTypeSectionSize*(this: var StorageBaseDriver; aSize: cint) {.cdecl,
    importcpp: "SetTypeSectionSize", header: "Storage_BaseDriver.hxx".}
proc writeTypeInformations*(this: var StorageBaseDriver; typeNum: cint;
                           typeName: TCollectionAsciiString) {.cdecl,
    importcpp: "WriteTypeInformations", header: "Storage_BaseDriver.hxx".}
proc endWriteTypeSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndWriteTypeSection", header: "Storage_BaseDriver.hxx".}
proc beginReadTypeSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginReadTypeSection", header: "Storage_BaseDriver.hxx".}
proc typeSectionSize*(this: var StorageBaseDriver): cint {.cdecl,
    importcpp: "TypeSectionSize", header: "Storage_BaseDriver.hxx".}
proc readTypeInformations*(this: var StorageBaseDriver; typeNum: var cint;
                          typeName: var TCollectionAsciiString) {.cdecl,
    importcpp: "ReadTypeInformations", header: "Storage_BaseDriver.hxx".}
proc endReadTypeSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndReadTypeSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteRootSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginWriteRootSection", header: "Storage_BaseDriver.hxx".}
proc setRootSectionSize*(this: var StorageBaseDriver; aSize: cint) {.cdecl,
    importcpp: "SetRootSectionSize", header: "Storage_BaseDriver.hxx".}
proc writeRoot*(this: var StorageBaseDriver; rootName: TCollectionAsciiString;
               aRef: cint; aType: TCollectionAsciiString) {.cdecl,
    importcpp: "WriteRoot", header: "Storage_BaseDriver.hxx".}
proc endWriteRootSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndWriteRootSection", header: "Storage_BaseDriver.hxx".}
proc beginReadRootSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginReadRootSection", header: "Storage_BaseDriver.hxx".}
proc rootSectionSize*(this: var StorageBaseDriver): cint {.cdecl,
    importcpp: "RootSectionSize", header: "Storage_BaseDriver.hxx".}
proc readRoot*(this: var StorageBaseDriver; rootName: var TCollectionAsciiString;
              aRef: var cint; aType: var TCollectionAsciiString) {.cdecl,
    importcpp: "ReadRoot", header: "Storage_BaseDriver.hxx".}
proc endReadRootSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndReadRootSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteRefSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginWriteRefSection", header: "Storage_BaseDriver.hxx".}
proc setRefSectionSize*(this: var StorageBaseDriver; aSize: cint) {.cdecl,
    importcpp: "SetRefSectionSize", header: "Storage_BaseDriver.hxx".}
proc writeReferenceType*(this: var StorageBaseDriver; reference: cint; typeNum: cint) {.
    cdecl, importcpp: "WriteReferenceType", header: "Storage_BaseDriver.hxx".}
proc endWriteRefSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndWriteRefSection", header: "Storage_BaseDriver.hxx".}
proc beginReadRefSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginReadRefSection", header: "Storage_BaseDriver.hxx".}
proc refSectionSize*(this: var StorageBaseDriver): cint {.cdecl,
    importcpp: "RefSectionSize", header: "Storage_BaseDriver.hxx".}
proc readReferenceType*(this: var StorageBaseDriver; reference: var cint;
                       typeNum: var cint) {.cdecl, importcpp: "ReadReferenceType",
    header: "Storage_BaseDriver.hxx".}
proc endReadRefSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndReadRefSection", header: "Storage_BaseDriver.hxx".}
proc beginWriteDataSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginWriteDataSection", header: "Storage_BaseDriver.hxx".}
proc writePersistentObjectHeader*(this: var StorageBaseDriver; aRef: cint; aType: cint) {.
    cdecl, importcpp: "WritePersistentObjectHeader",
    header: "Storage_BaseDriver.hxx".}
proc beginWritePersistentObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "BeginWritePersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc beginWriteObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "BeginWriteObjectData", header: "Storage_BaseDriver.hxx".}
proc endWriteObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "EndWriteObjectData", header: "Storage_BaseDriver.hxx".}
proc endWritePersistentObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "EndWritePersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc endWriteDataSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndWriteDataSection", header: "Storage_BaseDriver.hxx".}
proc beginReadDataSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "BeginReadDataSection", header: "Storage_BaseDriver.hxx".}
proc readPersistentObjectHeader*(this: var StorageBaseDriver; aRef: var cint;
                                aType: var cint) {.cdecl,
    importcpp: "ReadPersistentObjectHeader", header: "Storage_BaseDriver.hxx".}
proc beginReadPersistentObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "BeginReadPersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc beginReadObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "BeginReadObjectData", header: "Storage_BaseDriver.hxx".}
proc endReadObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "EndReadObjectData", header: "Storage_BaseDriver.hxx".}
proc endReadPersistentObjectData*(this: var StorageBaseDriver) {.cdecl,
    importcpp: "EndReadPersistentObjectData", header: "Storage_BaseDriver.hxx".}
proc endReadDataSection*(this: var StorageBaseDriver): StorageError {.cdecl,
    importcpp: "EndReadDataSection", header: "Storage_BaseDriver.hxx".}
proc skipObject*(this: var StorageBaseDriver) {.cdecl, importcpp: "SkipObject",
    header: "Storage_BaseDriver.hxx".}
proc close*(this: var StorageBaseDriver): StorageError {.cdecl, importcpp: "Close",
    header: "Storage_BaseDriver.hxx".}
proc putReference*(this: var StorageBaseDriver; aValue: cint): var StorageBaseDriver {.
    cdecl, importcpp: "PutReference", header: "Storage_BaseDriver.hxx".}
proc putCharacter*(this: var StorageBaseDriver; aValue: cchar): var StorageBaseDriver {.
    cdecl, importcpp: "PutCharacter", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: cchar): var StorageBaseDriver {.cdecl,
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putExtCharacter*(this: var StorageBaseDriver; aValue: StandardExtCharacter): var StorageBaseDriver {.
    cdecl, importcpp: "PutExtCharacter", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: StandardExtCharacter): var StorageBaseDriver {.
    cdecl, importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putInteger*(this: var StorageBaseDriver; aValue: cint): var StorageBaseDriver {.
    cdecl, importcpp: "PutInteger", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: cint): var StorageBaseDriver {.cdecl,
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putBoolean*(this: var StorageBaseDriver; aValue: bool): var StorageBaseDriver {.
    cdecl, importcpp: "PutBoolean", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: bool): var StorageBaseDriver {.cdecl,
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putReal*(this: var StorageBaseDriver; aValue: cfloat): var StorageBaseDriver {.
    cdecl, importcpp: "PutReal", header: "Storage_BaseDriver.hxx".}
proc `<<`*(this: var StorageBaseDriver; aValue: cfloat): var StorageBaseDriver {.cdecl,
    importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc putShortReal*(this: var StorageBaseDriver; aValue: StandardShortReal): var StorageBaseDriver {.
    cdecl, importcpp: "PutShortReal", header: "Storage_BaseDriver.hxx".}
# proc `<<`*(this: var StorageBaseDriver; aValue: StandardShortReal): var StorageBaseDriver {.
#     cdecl, importcpp: "(# << #)", header: "Storage_BaseDriver.hxx".}
proc getReference*(this: var StorageBaseDriver; aValue: var cint): var StorageBaseDriver {.
    cdecl, importcpp: "GetReference", header: "Storage_BaseDriver.hxx".}
proc getCharacter*(this: var StorageBaseDriver; aValue: var cchar): var StorageBaseDriver {.
    cdecl, importcpp: "GetCharacter", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var cchar): var StorageBaseDriver {.
    cdecl, importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getExtCharacter*(this: var StorageBaseDriver; aValue: var StandardExtCharacter): var StorageBaseDriver {.
    cdecl, importcpp: "GetExtCharacter", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var StandardExtCharacter): var StorageBaseDriver {.
    cdecl, importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getInteger*(this: var StorageBaseDriver; aValue: var cint): var StorageBaseDriver {.
    cdecl, importcpp: "GetInteger", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var cint): var StorageBaseDriver {.cdecl,
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getBoolean*(this: var StorageBaseDriver; aValue: var bool): var StorageBaseDriver {.
    cdecl, importcpp: "GetBoolean", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var bool): var StorageBaseDriver {.cdecl,
    importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getReal*(this: var StorageBaseDriver; aValue: var cfloat): var StorageBaseDriver {.
    cdecl, importcpp: "GetReal", header: "Storage_BaseDriver.hxx".}
proc `>>`*(this: var StorageBaseDriver; aValue: var cfloat): var StorageBaseDriver {.
    cdecl, importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}
proc getShortReal*(this: var StorageBaseDriver; aValue: var StandardShortReal): var StorageBaseDriver {.
    cdecl, importcpp: "GetShortReal", header: "Storage_BaseDriver.hxx".}
# proc `>>`*(this: var StorageBaseDriver; aValue: var StandardShortReal): var StorageBaseDriver {.
#     cdecl, importcpp: "(# >> #)", header: "Storage_BaseDriver.hxx".}

