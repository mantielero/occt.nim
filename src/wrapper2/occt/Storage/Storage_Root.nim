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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_Root"
discard "forward decl of Storage_Root"
type
  Handle_Storage_Root* = handle[Storage_Root]

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
  Storage_Root* {.importcpp: "Storage_Root", header: "Storage_Root.hxx", bycopy.} = object of Standard_Transient


proc constructStorage_Root*(): Storage_Root {.constructor,
    importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc constructStorage_Root*(theName: TCollection_AsciiString;
                           theObject: handle[Standard_Persistent]): Storage_Root {.
    constructor, importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc constructStorage_Root*(theName: TCollection_AsciiString;
                           theRef: Standard_Integer;
                           theType: TCollection_AsciiString): Storage_Root {.
    constructor, importcpp: "Storage_Root(@)", header: "Storage_Root.hxx".}
proc SetName*(this: var Storage_Root; theName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Storage_Root.hxx".}
proc Name*(this: Storage_Root): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Storage_Root.hxx".}
proc SetObject*(this: var Storage_Root; anObject: handle[Standard_Persistent]) {.
    importcpp: "SetObject", header: "Storage_Root.hxx".}
proc Object*(this: Storage_Root): handle[Standard_Persistent] {.noSideEffect,
    importcpp: "Object", header: "Storage_Root.hxx".}
proc Type*(this: Storage_Root): TCollection_AsciiString {.noSideEffect,
    importcpp: "Type", header: "Storage_Root.hxx".}
proc SetReference*(this: var Storage_Root; aRef: Standard_Integer) {.
    importcpp: "SetReference", header: "Storage_Root.hxx".}
proc Reference*(this: Storage_Root): Standard_Integer {.noSideEffect,
    importcpp: "Reference", header: "Storage_Root.hxx".}
proc SetType*(this: var Storage_Root; aType: TCollection_AsciiString) {.
    importcpp: "SetType", header: "Storage_Root.hxx".}
type
  Storage_Rootbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_Root::get_type_name(@)",
                              header: "Storage_Root.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_Root::get_type_descriptor(@)", header: "Storage_Root.hxx".}
proc DynamicType*(this: Storage_Root): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_Root.hxx".}