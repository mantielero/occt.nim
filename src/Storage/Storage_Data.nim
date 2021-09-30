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

discard "forward decl of Storage_HeaderData"
discard "forward decl of Storage_RootData"
discard "forward decl of Storage_TypeData"
discard "forward decl of Storage_InternalData"
discard "forward decl of Storage_Schema"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Root"
discard "forward decl of Storage_Data"
discard "forward decl of Storage_Data"
type
  HandleC1C1* = Handle[StorageData]

## ! A picture memorizing the data stored in a
## ! container (for example, in a file).
## ! A Storage_Data object represents either:
## ! -   persistent data to be written into a container,
## ! or
## ! -   persistent data which are read from a container.
## ! A Storage_Data object is used in both the
## ! storage and retrieval operations:
## ! -   Storage mechanism: create an empty
## ! Storage_Data object, then add successively
## ! persistent objects (roots) to be stored using
## ! the function AddRoot. When the set of data is
## ! complete, write it to a container using the
## ! function Write in your Storage_Schema
## ! storage/retrieval algorithm.
## ! -   Retrieval mechanism: a Storage_Data
## ! object is returned by the Read function from
## ! your Storage_Schema storage/retrieval
## ! algorithm. Use the functions NumberOfRoots
## ! and Roots to find the roots which were stored
## ! in the read container.
## ! The roots of a Storage_Data object may share
## ! references on objects. The shared internal
## ! references of a Storage_Data object are
## ! maintained by the storage/retrieval mechanism.
## ! Note: References shared by objects which are
## ! contained in two distinct Storage_Data objects
## ! are not maintained by the storage/retrieval
## ! mechanism: external references are not
## ! supported by Storage_Schema algorithm

type
  StorageData* {.importcpp: "Storage_Data", header: "Storage_Data.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## set
                                                                                                     ## of
                                                                                                     ## data.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## You
                                                                                                     ## explicitly
                                                                                                     ## create
                                                                                                     ## a
                                                                                                     ## Storage_Data
                                                                                                     ## object
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## when
                                                                                                     ## preparing
                                                                                                     ## the
                                                                                                     ## set
                                                                                                     ## of
                                                                                                     ## objects
                                                                                                     ## to
                                                                                                     ## be
                                                                                                     ## stored
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## together
                                                                                                     ## in
                                                                                                     ## a
                                                                                                     ## container
                                                                                                     ## (for
                                                                                                     ## example,
                                                                                                     ## in
                                                                                                     ## a
                                                                                                     ## file).
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Then
                                                                                                     ## use
                                                                                                     ## the
                                                                                                     ## function
                                                                                                     ## AddRoot
                                                                                                     ## to
                                                                                                     ## add
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## persistent
                                                                                                     ## objects
                                                                                                     ## to
                                                                                                     ## the
                                                                                                     ## set
                                                                                                     ## of
                                                                                                     ## data.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## A
                                                                                                     ## Storage_Data
                                                                                                     ## object
                                                                                                     ## is
                                                                                                     ## also
                                                                                                     ## returned
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Read
                                                                                                     ## function
                                                                                                     ## of
                                                                                                     ## a
                                                                                                     ## Storage_Schema
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## storage/retrieval
                                                                                                     ## algorithm.
                                                                                                     ## Use
                                                                                                     ## the
                                                                                                     ## functions
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## NumberOfRoots
                                                                                                     ## and
                                                                                                     ## Roots
                                                                                                     ## to
                                                                                                     ## find
                                                                                                     ## the
                                                                                                     ## roots
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## which
                                                                                                     ## were
                                                                                                     ## stored
                                                                                                     ## in
                                                                                                     ## the
                                                                                                     ## read
                                                                                                     ## container.


proc constructStorageData*(): StorageData {.constructor,
    importcpp: "Storage_Data(@)", header: "Storage_Data.hxx".}
proc errorStatus*(this: StorageData): StorageError {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_Data.hxx".}
proc clearErrorStatus*(this: var StorageData) {.importcpp: "ClearErrorStatus",
    header: "Storage_Data.hxx".}
proc errorStatusExtension*(this: StorageData): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension", header: "Storage_Data.hxx".}
proc creationDate*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    importcpp: "CreationDate", header: "Storage_Data.hxx".}
proc storageVersion*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    importcpp: "StorageVersion", header: "Storage_Data.hxx".}
proc schemaVersion*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    importcpp: "SchemaVersion", header: "Storage_Data.hxx".}
proc schemaName*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    importcpp: "SchemaName", header: "Storage_Data.hxx".}
proc setApplicationVersion*(this: var StorageData; aVersion: TCollectionAsciiString) {.
    importcpp: "SetApplicationVersion", header: "Storage_Data.hxx".}
proc applicationVersion*(this: StorageData): TCollectionAsciiString {.noSideEffect,
    importcpp: "ApplicationVersion", header: "Storage_Data.hxx".}
proc setApplicationName*(this: var StorageData; aName: TCollectionExtendedString) {.
    importcpp: "SetApplicationName", header: "Storage_Data.hxx".}
proc applicationName*(this: StorageData): TCollectionExtendedString {.noSideEffect,
    importcpp: "ApplicationName", header: "Storage_Data.hxx".}
proc setDataType*(this: var StorageData; aType: TCollectionExtendedString) {.
    importcpp: "SetDataType", header: "Storage_Data.hxx".}
proc dataType*(this: StorageData): TCollectionExtendedString {.noSideEffect,
    importcpp: "DataType", header: "Storage_Data.hxx".}
proc addToUserInfo*(this: var StorageData; anInfo: TCollectionAsciiString) {.
    importcpp: "AddToUserInfo", header: "Storage_Data.hxx".}
proc userInfo*(this: StorageData): TColStdSequenceOfAsciiString {.noSideEffect,
    importcpp: "UserInfo", header: "Storage_Data.hxx".}
proc addToComments*(this: var StorageData; aComment: TCollectionExtendedString) {.
    importcpp: "AddToComments", header: "Storage_Data.hxx".}
proc comments*(this: StorageData): TColStdSequenceOfExtendedString {.noSideEffect,
    importcpp: "Comments", header: "Storage_Data.hxx".}
proc numberOfObjects*(this: StorageData): cint {.noSideEffect,
    importcpp: "NumberOfObjects", header: "Storage_Data.hxx".}
proc numberOfRoots*(this: StorageData): cint {.noSideEffect,
    importcpp: "NumberOfRoots", header: "Storage_Data.hxx".}
proc addRoot*(this: StorageData; anObject: Handle[StandardPersistent]) {.
    noSideEffect, importcpp: "AddRoot", header: "Storage_Data.hxx".}
proc addRoot*(this: StorageData; aName: TCollectionAsciiString;
             anObject: Handle[StandardPersistent]) {.noSideEffect,
    importcpp: "AddRoot", header: "Storage_Data.hxx".}
proc removeRoot*(this: var StorageData; aName: TCollectionAsciiString) {.
    importcpp: "RemoveRoot", header: "Storage_Data.hxx".}
proc roots*(this: StorageData): Handle[StorageHSeqOfRoot] {.noSideEffect,
    importcpp: "Roots", header: "Storage_Data.hxx".}
proc find*(this: StorageData; aName: TCollectionAsciiString): Handle[StorageRoot] {.
    noSideEffect, importcpp: "Find", header: "Storage_Data.hxx".}
proc isRoot*(this: StorageData; aName: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "IsRoot", header: "Storage_Data.hxx".}
proc numberOfTypes*(this: StorageData): cint {.noSideEffect,
    importcpp: "NumberOfTypes", header: "Storage_Data.hxx".}
proc isType*(this: StorageData; aName: TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "IsType", header: "Storage_Data.hxx".}
proc types*(this: StorageData): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "Types", header: "Storage_Data.hxx".}
type
  StorageDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_Data::get_type_name(@)",
                            header: "Storage_Data.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_Data::get_type_descriptor(@)", header: "Storage_Data.hxx".}
proc dynamicType*(this: StorageData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_Data.hxx".}
proc headerData*(this: StorageData): Handle[StorageHeaderData] {.noSideEffect,
    importcpp: "HeaderData", header: "Storage_Data.hxx".}
proc rootData*(this: StorageData): Handle[StorageRootData] {.noSideEffect,
    importcpp: "RootData", header: "Storage_Data.hxx".}
proc typeData*(this: StorageData): Handle[StorageTypeData] {.noSideEffect,
    importcpp: "TypeData", header: "Storage_Data.hxx".}
proc internalData*(this: StorageData): Handle[StorageInternalData] {.noSideEffect,
    importcpp: "InternalData", header: "Storage_Data.hxx".}
proc clear*(this: StorageData) {.noSideEffect, importcpp: "Clear",
                              header: "Storage_Data.hxx".}

























