import topopebreptool_types
import ../toptools/toptools_types
import ../topods/topods_types





##  Created on: 1998-12-09
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1998-1999 Matra Datavision
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



proc newTopOpeBRepToolConnexity*(): TopOpeBRepToolConnexity {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_connexity(@)", header: "TopOpeBRepTool_connexity.hxx".}
proc newTopOpeBRepToolConnexity*(key: TopoDS_Shape): TopOpeBRepToolConnexity {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_connexity(@)", header: "TopOpeBRepTool_connexity.hxx".}
proc setKey*(this: var TopOpeBRepToolConnexity; key: TopoDS_Shape) {.cdecl,
    importcpp: "SetKey", header: "TopOpeBRepTool_connexity.hxx".}
proc key*(this: TopOpeBRepToolConnexity): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Key", header: "TopOpeBRepTool_connexity.hxx".}
proc item*(this: TopOpeBRepToolConnexity; oriKey: cint; item: var TopToolsListOfShape): cint {.
    noSideEffect, cdecl, importcpp: "Item", header: "TopOpeBRepTool_connexity.hxx".}
proc allItems*(this: TopOpeBRepToolConnexity; item: var TopToolsListOfShape): cint {.
    noSideEffect, cdecl, importcpp: "AllItems", header: "TopOpeBRepTool_connexity.hxx".}
proc addItem*(this: var TopOpeBRepToolConnexity; oriKey: cint;
             item: TopToolsListOfShape) {.cdecl, importcpp: "AddItem", header: "TopOpeBRepTool_connexity.hxx".}
proc addItem*(this: var TopOpeBRepToolConnexity; oriKey: cint; item: TopoDS_Shape) {.
    cdecl, importcpp: "AddItem", header: "TopOpeBRepTool_connexity.hxx".}
proc removeItem*(this: var TopOpeBRepToolConnexity; oriKey: cint; item: TopoDS_Shape): bool {.
    cdecl, importcpp: "RemoveItem", header: "TopOpeBRepTool_connexity.hxx".}
proc removeItem*(this: var TopOpeBRepToolConnexity; item: TopoDS_Shape): bool {.cdecl,
    importcpp: "RemoveItem", header: "TopOpeBRepTool_connexity.hxx".}
proc changeItem*(this: var TopOpeBRepToolConnexity; oriKey: cint): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeItem", header: "TopOpeBRepTool_connexity.hxx".}
proc isMultiple*(this: TopOpeBRepToolConnexity): bool {.noSideEffect, cdecl,
    importcpp: "IsMultiple", header: "TopOpeBRepTool_connexity.hxx".}
proc isFaulty*(this: TopOpeBRepToolConnexity): bool {.noSideEffect, cdecl,
    importcpp: "IsFaulty", header: "TopOpeBRepTool_connexity.hxx".}
proc isInternal*(this: TopOpeBRepToolConnexity; item: var TopToolsListOfShape): cint {.
    noSideEffect, cdecl, importcpp: "IsInternal", header: "TopOpeBRepTool_connexity.hxx".}


