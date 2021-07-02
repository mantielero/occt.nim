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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_NullObject"
discard "forward decl of Interface_EntityIterator"
type
  InterfaceEntityList* {.importcpp: "Interface_EntityList",
                        header: "Interface_EntityList.hxx", bycopy.} = object ## ! Creates a List as beeing empty


proc constructInterfaceEntityList*(): InterfaceEntityList {.constructor,
    importcpp: "Interface_EntityList(@)", header: "Interface_EntityList.hxx".}
proc clear*(this: var InterfaceEntityList) {.importcpp: "Clear",
    header: "Interface_EntityList.hxx".}
proc append*(this: var InterfaceEntityList; ent: Handle[StandardTransient]) {.
    importcpp: "Append", header: "Interface_EntityList.hxx".}
proc add*(this: var InterfaceEntityList; ent: Handle[StandardTransient]) {.
    importcpp: "Add", header: "Interface_EntityList.hxx".}
proc remove*(this: var InterfaceEntityList; ent: Handle[StandardTransient]) {.
    importcpp: "Remove", header: "Interface_EntityList.hxx".}
proc remove*(this: var InterfaceEntityList; num: StandardInteger) {.
    importcpp: "Remove", header: "Interface_EntityList.hxx".}
proc isEmpty*(this: InterfaceEntityList): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Interface_EntityList.hxx".}
proc nbEntities*(this: InterfaceEntityList): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_EntityList.hxx".}
proc value*(this: InterfaceEntityList; num: StandardInteger): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Value",
                        header: "Interface_EntityList.hxx".}
proc setValue*(this: var InterfaceEntityList; num: StandardInteger;
              ent: Handle[StandardTransient]) {.importcpp: "SetValue",
    header: "Interface_EntityList.hxx".}
proc fillIterator*(this: InterfaceEntityList; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "Interface_EntityList.hxx".}
proc nbTypedEntities*(this: InterfaceEntityList; atype: Handle[StandardType]): StandardInteger {.
    noSideEffect, importcpp: "NbTypedEntities", header: "Interface_EntityList.hxx".}
proc typedEntity*(this: InterfaceEntityList; atype: Handle[StandardType];
                 num: StandardInteger = 0): Handle[StandardTransient] {.noSideEffect,
    importcpp: "TypedEntity", header: "Interface_EntityList.hxx".}

