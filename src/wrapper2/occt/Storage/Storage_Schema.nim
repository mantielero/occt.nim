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

import
  Storage_BaseDriver, Storage_HArrayOfSchema, Storage_InternalData,
  Storage_MapOfCallBack, Storage_SolveMode,
  ../TCollection/TCollection_AsciiString,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_HSequenceOfAsciiString

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
  Handle_Storage_Schema* = handle[Storage_Schema]

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
  Storage_Schema* {.importcpp: "Storage_Schema", header: "Storage_Schema.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructStorage_Schema*(): Storage_Schema {.constructor,
    importcpp: "Storage_Schema(@)", header: "Storage_Schema.hxx".}
proc SetVersion*(this: var Storage_Schema; aVersion: TCollection_AsciiString) {.
    importcpp: "SetVersion", header: "Storage_Schema.hxx".}
proc Version*(this: Storage_Schema): TCollection_AsciiString {.noSideEffect,
    importcpp: "Version", header: "Storage_Schema.hxx".}
proc SetName*(this: var Storage_Schema; aSchemaName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Storage_Schema.hxx".}
proc Name*(this: Storage_Schema): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Storage_Schema.hxx".}
proc Write*(this: Storage_Schema; s: handle[Storage_BaseDriver];
           aData: handle[Storage_Data]) {.noSideEffect, importcpp: "Write",
                                        header: "Storage_Schema.hxx".}
proc ICreationDate*(): TCollection_AsciiString {.
    importcpp: "Storage_Schema::ICreationDate(@)", header: "Storage_Schema.hxx".}
proc CheckTypeMigration*(theTypeName: TCollection_AsciiString;
                        theNewName: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "Storage_Schema::CheckTypeMigration(@)",
    header: "Storage_Schema.hxx".}
proc AddReadUnknownTypeCallBack*(this: var Storage_Schema;
                                aTypeName: TCollection_AsciiString;
                                aCallBack: handle[Storage_CallBack]) {.
    importcpp: "AddReadUnknownTypeCallBack", header: "Storage_Schema.hxx".}
proc RemoveReadUnknownTypeCallBack*(this: var Storage_Schema;
                                   aTypeName: TCollection_AsciiString) {.
    importcpp: "RemoveReadUnknownTypeCallBack", header: "Storage_Schema.hxx".}
proc InstalledCallBackList*(this: Storage_Schema): handle[
    TColStd_HSequenceOfAsciiString] {.noSideEffect,
                                     importcpp: "InstalledCallBackList",
                                     header: "Storage_Schema.hxx".}
proc ClearCallBackList*(this: var Storage_Schema) {.importcpp: "ClearCallBackList",
    header: "Storage_Schema.hxx".}
proc UseDefaultCallBack*(this: var Storage_Schema) {.
    importcpp: "UseDefaultCallBack", header: "Storage_Schema.hxx".}
proc DontUseDefaultCallBack*(this: var Storage_Schema) {.
    importcpp: "DontUseDefaultCallBack", header: "Storage_Schema.hxx".}
proc IsUsingDefaultCallBack*(this: Storage_Schema): Standard_Boolean {.noSideEffect,
    importcpp: "IsUsingDefaultCallBack", header: "Storage_Schema.hxx".}
proc SetDefaultCallBack*(this: var Storage_Schema; f: handle[Storage_CallBack]) {.
    importcpp: "SetDefaultCallBack", header: "Storage_Schema.hxx".}
proc ResetDefaultCallBack*(this: var Storage_Schema) {.
    importcpp: "ResetDefaultCallBack", header: "Storage_Schema.hxx".}
proc DefaultCallBack*(this: Storage_Schema): handle[Storage_CallBack] {.
    noSideEffect, importcpp: "DefaultCallBack", header: "Storage_Schema.hxx".}
proc WritePersistentObjectHeader*(this: var Storage_Schema;
                                 sp: handle[Standard_Persistent];
                                 theDriver: handle[Storage_BaseDriver]) {.
    importcpp: "WritePersistentObjectHeader", header: "Storage_Schema.hxx".}
proc WritePersistentReference*(this: var Storage_Schema;
                              sp: handle[Standard_Persistent];
                              theDriver: handle[Storage_BaseDriver]) {.
    importcpp: "WritePersistentReference", header: "Storage_Schema.hxx".}
proc AddPersistent*(this: Storage_Schema; sp: handle[Standard_Persistent];
                   tName: Standard_CString): Standard_Boolean {.noSideEffect,
    importcpp: "AddPersistent", header: "Storage_Schema.hxx".}
proc PersistentToAdd*(this: Storage_Schema; sp: handle[Standard_Persistent]): Standard_Boolean {.
    noSideEffect, importcpp: "PersistentToAdd", header: "Storage_Schema.hxx".}
type
  Storage_Schemabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_Schema::get_type_name(@)",
                              header: "Storage_Schema.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_Schema::get_type_descriptor(@)",
    header: "Storage_Schema.hxx".}
proc DynamicType*(this: Storage_Schema): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_Schema.hxx".}