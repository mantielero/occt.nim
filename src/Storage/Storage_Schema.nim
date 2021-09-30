##  Created on: 1996-12-03
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

discard "forward decl of Storage_CallBack"
discard "forward decl of Storage_StreamFormatError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_Data"
discard "forward decl of Storage_HeaderData"
discard "forward decl of Storage_TypeData"
discard "forward decl of Storage_RootData"
discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_Schema"
type
  HandleC1C1* = Handle[StorageSchema]

## ! Root class for basic storage/retrieval algorithms.
## ! A Storage_Schema object processes:
## ! -   writing of a set of persistent data into a
## ! container (store mechanism),
## ! -   reading of a container to extract all the
## ! contained persistent data (retrieve mechanism).
## ! A Storage_Schema object is based on the data
## ! schema for the persistent data of the application, i.e.:
## ! -   the list of all persistent objects which may be
## ! known by the application,
## ! -   the organization of their data; a data schema
## ! knows how to browse each persistent object it contains.
## ! During the store or retrieve operation, only
## ! persistent objects known from the data schema
## ! can be processed; they are then stored or
## ! retrieved according to their description in the schema.
## ! A data schema is specific to the object classes to
## ! be read or written. Tools dedicated to the
## ! environment in use allow a description of the
## ! application persistent data structure.
## ! Storage_Schema algorithms are called basic
## ! because they do not support external references
## ! between containers.

type
  StorageSchema* {.importcpp: "Storage_Schema", header: "Storage_Schema.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Builds
                                                                                                           ## a
                                                                                                           ## storage/retrieval
                                                                                                           ## algorithm
                                                                                                           ## based
                                                                                                           ## on
                                                                                                           ## a
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## given
                                                                                                           ## data
                                                                                                           ## schema.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Example
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## For
                                                                                                           ## example,
                                                                                                           ## if
                                                                                                           ## ShapeSchema
                                                                                                           ## is
                                                                                                           ## the
                                                                                                           ## class
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## inheriting
                                                                                                           ## from
                                                                                                           ## Storage_Schema
                                                                                                           ## and
                                                                                                           ## containing
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## the
                                                                                                           ## description
                                                                                                           ## of
                                                                                                           ## your
                                                                                                           ## application
                                                                                                           ## data
                                                                                                           ## schema,
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## you
                                                                                                           ## create
                                                                                                           ## a
                                                                                                           ## storage/retrieval
                                                                                                           ## algorithm
                                                                                                           ## as
                                                                                                           ## follows:
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Handle(ShapeSchema)
                                                                                                           ## s
                                                                                                           ## =
                                                                                                           ## new
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## ShapeSchema;
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## --------
                                                                                                           ## --
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## USER
                                                                                                           ## API
                                                                                                           ## --
                                                                                                           ## --------------------------------------------------------------
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## --------
                                                                                                           ## --


proc constructStorageSchema*(): StorageSchema {.constructor,
    importcpp: "Storage_Schema(@)", header: "Storage_Schema.hxx".}
proc setVersion*(this: var StorageSchema; aVersion: TCollectionAsciiString) {.
    importcpp: "SetVersion", header: "Storage_Schema.hxx".}
proc version*(this: StorageSchema): TCollectionAsciiString {.noSideEffect,
    importcpp: "Version", header: "Storage_Schema.hxx".}
proc setName*(this: var StorageSchema; aSchemaName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Storage_Schema.hxx".}
proc name*(this: StorageSchema): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Storage_Schema.hxx".}
proc write*(this: StorageSchema; s: Handle[StorageBaseDriver];
           aData: Handle[StorageData]) {.noSideEffect, importcpp: "Write",
                                       header: "Storage_Schema.hxx".}
proc iCreationDate*(): TCollectionAsciiString {.
    importcpp: "Storage_Schema::ICreationDate(@)", header: "Storage_Schema.hxx".}
proc checkTypeMigration*(theTypeName: TCollectionAsciiString;
                        theNewName: var TCollectionAsciiString): bool {.
    importcpp: "Storage_Schema::CheckTypeMigration(@)",
    header: "Storage_Schema.hxx".}
proc addReadUnknownTypeCallBack*(this: var StorageSchema;
                                aTypeName: TCollectionAsciiString;
                                aCallBack: Handle[StorageCallBack]) {.
    importcpp: "AddReadUnknownTypeCallBack", header: "Storage_Schema.hxx".}
proc removeReadUnknownTypeCallBack*(this: var StorageSchema;
                                   aTypeName: TCollectionAsciiString) {.
    importcpp: "RemoveReadUnknownTypeCallBack", header: "Storage_Schema.hxx".}
proc installedCallBackList*(this: StorageSchema): Handle[
    TColStdHSequenceOfAsciiString] {.noSideEffect,
                                    importcpp: "InstalledCallBackList",
                                    header: "Storage_Schema.hxx".}
proc clearCallBackList*(this: var StorageSchema) {.importcpp: "ClearCallBackList",
    header: "Storage_Schema.hxx".}
proc useDefaultCallBack*(this: var StorageSchema) {.importcpp: "UseDefaultCallBack",
    header: "Storage_Schema.hxx".}
proc dontUseDefaultCallBack*(this: var StorageSchema) {.
    importcpp: "DontUseDefaultCallBack", header: "Storage_Schema.hxx".}
proc isUsingDefaultCallBack*(this: StorageSchema): bool {.noSideEffect,
    importcpp: "IsUsingDefaultCallBack", header: "Storage_Schema.hxx".}
proc setDefaultCallBack*(this: var StorageSchema; f: Handle[StorageCallBack]) {.
    importcpp: "SetDefaultCallBack", header: "Storage_Schema.hxx".}
proc resetDefaultCallBack*(this: var StorageSchema) {.
    importcpp: "ResetDefaultCallBack", header: "Storage_Schema.hxx".}
proc defaultCallBack*(this: StorageSchema): Handle[StorageCallBack] {.noSideEffect,
    importcpp: "DefaultCallBack", header: "Storage_Schema.hxx".}
proc writePersistentObjectHeader*(this: var StorageSchema;
                                 sp: Handle[StandardPersistent];
                                 theDriver: Handle[StorageBaseDriver]) {.
    importcpp: "WritePersistentObjectHeader", header: "Storage_Schema.hxx".}
proc writePersistentReference*(this: var StorageSchema;
                              sp: Handle[StandardPersistent];
                              theDriver: Handle[StorageBaseDriver]) {.
    importcpp: "WritePersistentReference", header: "Storage_Schema.hxx".}
proc addPersistent*(this: StorageSchema; sp: Handle[StandardPersistent];
                   tName: StandardCString): bool {.noSideEffect,
    importcpp: "AddPersistent", header: "Storage_Schema.hxx".}
proc persistentToAdd*(this: StorageSchema; sp: Handle[StandardPersistent]): bool {.
    noSideEffect, importcpp: "PersistentToAdd", header: "Storage_Schema.hxx".}
type
  StorageSchemabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_Schema::get_type_name(@)",
                            header: "Storage_Schema.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_Schema::get_type_descriptor(@)",
    header: "Storage_Schema.hxx".}
proc dynamicType*(this: StorageSchema): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_Schema.hxx".}

























