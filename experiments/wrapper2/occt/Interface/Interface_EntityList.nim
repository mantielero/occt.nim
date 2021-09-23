##  Created on: 1992-11-02
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_NullObject"
discard "forward decl of Interface_EntityIterator"
type
  Interface_EntityList* {.importcpp: "Interface_EntityList",
                         header: "Interface_EntityList.hxx", bycopy.} = object ## !
                                                                          ## Creates a List as beeing empty


proc constructInterface_EntityList*(): Interface_EntityList {.constructor,
    importcpp: "Interface_EntityList(@)", header: "Interface_EntityList.hxx".}
proc Clear*(this: var Interface_EntityList) {.importcpp: "Clear",
    header: "Interface_EntityList.hxx".}
proc Append*(this: var Interface_EntityList; ent: handle[Standard_Transient]) {.
    importcpp: "Append", header: "Interface_EntityList.hxx".}
proc Add*(this: var Interface_EntityList; ent: handle[Standard_Transient]) {.
    importcpp: "Add", header: "Interface_EntityList.hxx".}
proc Remove*(this: var Interface_EntityList; ent: handle[Standard_Transient]) {.
    importcpp: "Remove", header: "Interface_EntityList.hxx".}
proc Remove*(this: var Interface_EntityList; num: Standard_Integer) {.
    importcpp: "Remove", header: "Interface_EntityList.hxx".}
proc IsEmpty*(this: Interface_EntityList): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Interface_EntityList.hxx".}
proc NbEntities*(this: Interface_EntityList): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_EntityList.hxx".}
proc Value*(this: Interface_EntityList; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Value",
                         header: "Interface_EntityList.hxx".}
proc SetValue*(this: var Interface_EntityList; num: Standard_Integer;
              ent: handle[Standard_Transient]) {.importcpp: "SetValue",
    header: "Interface_EntityList.hxx".}
proc FillIterator*(this: Interface_EntityList; iter: var Interface_EntityIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "Interface_EntityList.hxx".}
proc NbTypedEntities*(this: Interface_EntityList; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "NbTypedEntities", header: "Interface_EntityList.hxx".}
proc TypedEntity*(this: Interface_EntityList; atype: handle[Standard_Type];
                 num: Standard_Integer = 0): handle[Standard_Transient] {.
    noSideEffect, importcpp: "TypedEntity", header: "Interface_EntityList.hxx".}