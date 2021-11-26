##  Created on: 1997-02-24
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

discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_Root"
discard "forward decl of Storage_Root"
type
  HandleC1C1* = Handle[StorageRoot]

## ! A root object extracted from a Storage_Data object.
## ! A Storage_Root encapsulates a persistent
## ! object which is a root of a Storage_Data object.
## ! It contains additional information: the name and
## ! the data type of the persistent object.
## ! When retrieving a Storage_Data object from a
## ! container (for example, a file) you access its
## ! roots with the function Roots which returns a
## ! sequence of root objects. The provided functions
## ! allow you to request information about each root of the sequence.
## ! You do not create explicit roots: when inserting
## ! data in a Storage_Data object, you just provide
## ! the persistent object and optionally its name to the function AddRoot.

type
  StorageRoot* {.importcpp: "Storage_Root", header: "Storage_Root.hxx", bycopy.} = object of StandardTransient


proc constructStorageRoot*(): StorageRoot {.constructor,
    importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc constructStorageRoot*(theName: TCollectionAsciiString;
                          theObject: Handle[StandardPersistent]): StorageRoot {.
    constructor, importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc constructStorageRoot*(theName: TCollectionAsciiString; theRef: cint;
                          theType: TCollectionAsciiString): StorageRoot {.
    constructor, importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc setName*(this: var StorageRoot; theName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Storage_Root.hxx".}
proc name*(this: StorageRoot): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Storage_Root.hxx".}
proc setObject*(this: var StorageRoot; anObject: Handle[StandardPersistent]) {.
    importcpp: "SetObject", header: "Storage_Root.hxx".}
proc `object`*(this: StorageRoot): Handle[StandardPersistent] {.noSideEffect,
    importcpp: "Object", header: "Storage_Root.hxx".}
proc `type`*(this: StorageRoot): TCollectionAsciiString {.noSideEffect,
    importcpp: "Type", header: "Storage_Root.hxx".}
proc setReference*(this: var StorageRoot; aRef: cint) {.importcpp: "SetReference",
    header: "Storage_Root.hxx".}
proc reference*(this: StorageRoot): cint {.noSideEffect, importcpp: "Reference",
                                       header: "Storage_Root.hxx".}
proc setType*(this: var StorageRoot; aType: TCollectionAsciiString) {.
    importcpp: "SetType", header: "Storage_Root.hxx".}
type
  StorageRootbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Storage_Root::get_type_name(@)",
                            header: "Storage_Root.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Storage_Root::get_type_descriptor(@)", header: "Storage_Root.hxx".}
proc dynamicType*(this: StorageRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_Root.hxx".}

























