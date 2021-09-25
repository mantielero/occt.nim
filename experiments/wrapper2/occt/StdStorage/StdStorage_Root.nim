##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_Root"
discard "forward decl of StdStorage_Root"
type
  HandleStdStorageRoot* = Handle[StdStorageRoot]

## ! Describes a named persistent root

type
  StdStorageRoot* {.importcpp: "StdStorage_Root", header: "StdStorage_Root.hxx",
                   bycopy.} = object of StandardTransient

  StdStorageRootbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StdStorage_Root::get_type_name(@)",
                            header: "StdStorage_Root.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdStorage_Root::get_type_descriptor(@)",
    header: "StdStorage_Root.hxx".}
proc dynamicType*(this: StdStorageRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_Root.hxx".}
proc constructStdStorageRoot*(): StdStorageRoot {.constructor,
    importcpp: "StdStorage_Root(@)", header: "StdStorage_Root.hxx".}
proc constructStdStorageRoot*(theName: TCollectionAsciiString;
                             theObject: Handle[StdObjMgtPersistent]): StdStorageRoot {.
    constructor, importcpp: "StdStorage_Root(@)", header: "StdStorage_Root.hxx".}
proc name*(this: StdStorageRoot): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "StdStorage_Root.hxx".}
proc setName*(this: var StdStorageRoot; theName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "StdStorage_Root.hxx".}
proc `object`*(this: StdStorageRoot): Handle[StdObjMgtPersistent] {.noSideEffect,
    importcpp: "Object", header: "StdStorage_Root.hxx".}
proc setObject*(this: var StdStorageRoot; anObject: Handle[StdObjMgtPersistent]) {.
    importcpp: "SetObject", header: "StdStorage_Root.hxx".}
proc `type`*(this: StdStorageRoot): TCollectionAsciiString {.noSideEffect,
    importcpp: "Type", header: "StdStorage_Root.hxx".}
proc setType*(this: var StdStorageRoot; aType: TCollectionAsciiString) {.
    importcpp: "SetType", header: "StdStorage_Root.hxx".}
proc reference*(this: StdStorageRoot): int {.noSideEffect, importcpp: "Reference",
    header: "StdStorage_Root.hxx".}
