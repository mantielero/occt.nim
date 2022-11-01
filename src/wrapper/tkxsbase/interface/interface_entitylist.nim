import interface_types

import ../../tkernel/standard/standard_types




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



proc newInterfaceEntityList*(): InterfaceEntityList {.cdecl, constructor,
    importcpp: "Interface_EntityList(@)", header: "Interface_EntityList.hxx".}
proc clear*(this: var InterfaceEntityList) {.cdecl, importcpp: "Clear",
    header: "Interface_EntityList.hxx".}
proc append*(this: var InterfaceEntityList; ent: Handle[StandardTransient]) {.cdecl,
    importcpp: "Append", header: "Interface_EntityList.hxx".}
proc add*(this: var InterfaceEntityList; ent: Handle[StandardTransient]) {.cdecl,
    importcpp: "Add", header: "Interface_EntityList.hxx".}
proc remove*(this: var InterfaceEntityList; ent: Handle[StandardTransient]) {.cdecl,
    importcpp: "Remove", header: "Interface_EntityList.hxx".}
proc remove*(this: var InterfaceEntityList; num: cint) {.cdecl, importcpp: "Remove",
    header: "Interface_EntityList.hxx".}
proc isEmpty*(this: InterfaceEntityList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Interface_EntityList.hxx".}
proc nbEntities*(this: InterfaceEntityList): cint {.noSideEffect, cdecl,
    importcpp: "NbEntities", header: "Interface_EntityList.hxx".}
proc value*(this: InterfaceEntityList; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Interface_EntityList.hxx".}
proc setValue*(this: var InterfaceEntityList; num: cint;
              ent: Handle[StandardTransient]) {.cdecl, importcpp: "SetValue",
    header: "Interface_EntityList.hxx".}
proc fillIterator*(this: InterfaceEntityList; iter: var InterfaceEntityIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "Interface_EntityList.hxx".}
proc nbTypedEntities*(this: InterfaceEntityList; atype: Handle[StandardType]): cint {.
    noSideEffect, cdecl, importcpp: "NbTypedEntities", header: "Interface_EntityList.hxx".}
proc typedEntity*(this: InterfaceEntityList; atype: Handle[StandardType];
                 num: cint = 0): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "TypedEntity", header: "Interface_EntityList.hxx".}


