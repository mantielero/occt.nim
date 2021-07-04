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

import
  ../Standard/Standard, ../Standard/Standard_Type, Storage_Error,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../TColStd/TColStd_SequenceOfAsciiString,
  ../TColStd/TColStd_SequenceOfExtendedString, ../Standard/Standard_Integer,
  Storage_HSeqOfRoot, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HSequenceOfAsciiString

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
  Handle_Storage_Data* = handle[Storage_Data]

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
  Storage_Data* {.importcpp: "Storage_Data", header: "Storage_Data.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructStorage_Data*(): Storage_Data {.constructor,
    importcpp: "Storage_Data(@)", header: "Storage_Data.hxx".}
proc ErrorStatus*(this: Storage_Data): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_Data.hxx".}
proc ClearErrorStatus*(this: var Storage_Data) {.importcpp: "ClearErrorStatus",
    header: "Storage_Data.hxx".}
proc ErrorStatusExtension*(this: Storage_Data): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension", header: "Storage_Data.hxx".}
proc CreationDate*(this: Storage_Data): TCollection_AsciiString {.noSideEffect,
    importcpp: "CreationDate", header: "Storage_Data.hxx".}
proc StorageVersion*(this: Storage_Data): TCollection_AsciiString {.noSideEffect,
    importcpp: "StorageVersion", header: "Storage_Data.hxx".}
proc SchemaVersion*(this: Storage_Data): TCollection_AsciiString {.noSideEffect,
    importcpp: "SchemaVersion", header: "Storage_Data.hxx".}
proc SchemaName*(this: Storage_Data): TCollection_AsciiString {.noSideEffect,
    importcpp: "SchemaName", header: "Storage_Data.hxx".}
proc SetApplicationVersion*(this: var Storage_Data;
                           aVersion: TCollection_AsciiString) {.
    importcpp: "SetApplicationVersion", header: "Storage_Data.hxx".}
proc ApplicationVersion*(this: Storage_Data): TCollection_AsciiString {.
    noSideEffect, importcpp: "ApplicationVersion", header: "Storage_Data.hxx".}
proc SetApplicationName*(this: var Storage_Data; aName: TCollection_ExtendedString) {.
    importcpp: "SetApplicationName", header: "Storage_Data.hxx".}
proc ApplicationName*(this: Storage_Data): TCollection_ExtendedString {.
    noSideEffect, importcpp: "ApplicationName", header: "Storage_Data.hxx".}
proc SetDataType*(this: var Storage_Data; aType: TCollection_ExtendedString) {.
    importcpp: "SetDataType", header: "Storage_Data.hxx".}
proc DataType*(this: Storage_Data): TCollection_ExtendedString {.noSideEffect,
    importcpp: "DataType", header: "Storage_Data.hxx".}
proc AddToUserInfo*(this: var Storage_Data; anInfo: TCollection_AsciiString) {.
    importcpp: "AddToUserInfo", header: "Storage_Data.hxx".}
proc UserInfo*(this: Storage_Data): TColStd_SequenceOfAsciiString {.noSideEffect,
    importcpp: "UserInfo", header: "Storage_Data.hxx".}
proc AddToComments*(this: var Storage_Data; aComment: TCollection_ExtendedString) {.
    importcpp: "AddToComments", header: "Storage_Data.hxx".}
proc Comments*(this: Storage_Data): TColStd_SequenceOfExtendedString {.noSideEffect,
    importcpp: "Comments", header: "Storage_Data.hxx".}
proc NumberOfObjects*(this: Storage_Data): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfObjects", header: "Storage_Data.hxx".}
proc NumberOfRoots*(this: Storage_Data): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfRoots", header: "Storage_Data.hxx".}
proc AddRoot*(this: Storage_Data; anObject: handle[Standard_Persistent]) {.
    noSideEffect, importcpp: "AddRoot", header: "Storage_Data.hxx".}
proc AddRoot*(this: Storage_Data; aName: TCollection_AsciiString;
             anObject: handle[Standard_Persistent]) {.noSideEffect,
    importcpp: "AddRoot", header: "Storage_Data.hxx".}
proc RemoveRoot*(this: var Storage_Data; aName: TCollection_AsciiString) {.
    importcpp: "RemoveRoot", header: "Storage_Data.hxx".}
proc Roots*(this: Storage_Data): handle[Storage_HSeqOfRoot] {.noSideEffect,
    importcpp: "Roots", header: "Storage_Data.hxx".}
proc Find*(this: Storage_Data; aName: TCollection_AsciiString): handle[Storage_Root] {.
    noSideEffect, importcpp: "Find", header: "Storage_Data.hxx".}
proc IsRoot*(this: Storage_Data; aName: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsRoot", header: "Storage_Data.hxx".}
proc NumberOfTypes*(this: Storage_Data): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfTypes", header: "Storage_Data.hxx".}
proc IsType*(this: Storage_Data; aName: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsType", header: "Storage_Data.hxx".}
proc Types*(this: Storage_Data): handle[TColStd_HSequenceOfAsciiString] {.
    noSideEffect, importcpp: "Types", header: "Storage_Data.hxx".}
type
  Storage_Database_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_Data::get_type_name(@)",
                              header: "Storage_Data.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_Data::get_type_descriptor(@)", header: "Storage_Data.hxx".}
proc DynamicType*(this: Storage_Data): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_Data.hxx".}
proc HeaderData*(this: Storage_Data): handle[Storage_HeaderData] {.noSideEffect,
    importcpp: "HeaderData", header: "Storage_Data.hxx".}
proc RootData*(this: Storage_Data): handle[Storage_RootData] {.noSideEffect,
    importcpp: "RootData", header: "Storage_Data.hxx".}
proc TypeData*(this: Storage_Data): handle[Storage_TypeData] {.noSideEffect,
    importcpp: "TypeData", header: "Storage_Data.hxx".}
proc InternalData*(this: Storage_Data): handle[Storage_InternalData] {.noSideEffect,
    importcpp: "InternalData", header: "Storage_Data.hxx".}
proc Clear*(this: Storage_Data) {.noSideEffect, importcpp: "Clear",
                               header: "Storage_Data.hxx".}