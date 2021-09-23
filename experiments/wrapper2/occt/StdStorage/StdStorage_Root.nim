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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of Storage_Schema"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_Root"
discard "forward decl of StdStorage_Root"
type
  Handle_StdStorage_Root* = handle[StdStorage_Root]

## ! Describes a named persistent root

type
  StdStorage_Root* {.importcpp: "StdStorage_Root", header: "StdStorage_Root.hxx",
                    bycopy.} = object of Standard_Transient

  StdStorage_Rootbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StdStorage_Root::get_type_name(@)",
                              header: "StdStorage_Root.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdStorage_Root::get_type_descriptor(@)",
    header: "StdStorage_Root.hxx".}
proc DynamicType*(this: StdStorage_Root): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_Root.hxx".}
proc constructStdStorage_Root*(): StdStorage_Root {.constructor,
    importcpp: "StdStorage_Root(@)", header: "StdStorage_Root.hxx".}
proc constructStdStorage_Root*(theName: TCollection_AsciiString;
                              theObject: handle[StdObjMgt_Persistent]): StdStorage_Root {.
    constructor, importcpp: "StdStorage_Root(@)", header: "StdStorage_Root.hxx".}
proc Name*(this: StdStorage_Root): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "StdStorage_Root.hxx".}
proc SetName*(this: var StdStorage_Root; theName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "StdStorage_Root.hxx".}
proc Object*(this: StdStorage_Root): handle[StdObjMgt_Persistent] {.noSideEffect,
    importcpp: "Object", header: "StdStorage_Root.hxx".}
proc SetObject*(this: var StdStorage_Root; anObject: handle[StdObjMgt_Persistent]) {.
    importcpp: "SetObject", header: "StdStorage_Root.hxx".}
proc Type*(this: StdStorage_Root): TCollection_AsciiString {.noSideEffect,
    importcpp: "Type", header: "StdStorage_Root.hxx".}
proc SetType*(this: var StdStorage_Root; aType: TCollection_AsciiString) {.
    importcpp: "SetType", header: "StdStorage_Root.hxx".}
proc Reference*(this: StdStorage_Root): Standard_Integer {.noSideEffect,
    importcpp: "Reference", header: "StdStorage_Root.hxx".}