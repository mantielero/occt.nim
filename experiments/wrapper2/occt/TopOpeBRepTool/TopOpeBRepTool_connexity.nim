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

discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepToolConnexity* {.importcpp: "TopOpeBRepTool_connexity",
                            header: "TopOpeBRepTool_connexity.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolConnexity; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_connexity::operator new",
    header: "TopOpeBRepTool_connexity.hxx".}
proc `delete`*(this: var TopOpeBRepToolConnexity; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_connexity::operator delete",
    header: "TopOpeBRepTool_connexity.hxx".}
proc `new[]`*(this: var TopOpeBRepToolConnexity; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_connexity::operator new[]",
    header: "TopOpeBRepTool_connexity.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolConnexity; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_connexity::operator delete[]",
    header: "TopOpeBRepTool_connexity.hxx".}
proc `new`*(this: var TopOpeBRepToolConnexity; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_connexity::operator new",
    header: "TopOpeBRepTool_connexity.hxx".}
proc `delete`*(this: var TopOpeBRepToolConnexity; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_connexity::operator delete",
    header: "TopOpeBRepTool_connexity.hxx".}
proc constructTopOpeBRepToolConnexity*(): TopOpeBRepToolConnexity {.constructor,
    importcpp: "TopOpeBRepTool_connexity(@)",
    header: "TopOpeBRepTool_connexity.hxx".}
proc constructTopOpeBRepToolConnexity*(key: TopoDS_Shape): TopOpeBRepToolConnexity {.
    constructor, importcpp: "TopOpeBRepTool_connexity(@)",
    header: "TopOpeBRepTool_connexity.hxx".}
proc setKey*(this: var TopOpeBRepToolConnexity; key: TopoDS_Shape) {.
    importcpp: "SetKey", header: "TopOpeBRepTool_connexity.hxx".}
proc key*(this: TopOpeBRepToolConnexity): TopoDS_Shape {.noSideEffect,
    importcpp: "Key", header: "TopOpeBRepTool_connexity.hxx".}
proc item*(this: TopOpeBRepToolConnexity; oriKey: int; item: var TopToolsListOfShape): int {.
    noSideEffect, importcpp: "Item", header: "TopOpeBRepTool_connexity.hxx".}
proc allItems*(this: TopOpeBRepToolConnexity; item: var TopToolsListOfShape): int {.
    noSideEffect, importcpp: "AllItems", header: "TopOpeBRepTool_connexity.hxx".}
proc addItem*(this: var TopOpeBRepToolConnexity; oriKey: int;
             item: TopToolsListOfShape) {.importcpp: "AddItem",
                                        header: "TopOpeBRepTool_connexity.hxx".}
proc addItem*(this: var TopOpeBRepToolConnexity; oriKey: int; item: TopoDS_Shape) {.
    importcpp: "AddItem", header: "TopOpeBRepTool_connexity.hxx".}
proc removeItem*(this: var TopOpeBRepToolConnexity; oriKey: int; item: TopoDS_Shape): StandardBoolean {.
    importcpp: "RemoveItem", header: "TopOpeBRepTool_connexity.hxx".}
proc removeItem*(this: var TopOpeBRepToolConnexity; item: TopoDS_Shape): StandardBoolean {.
    importcpp: "RemoveItem", header: "TopOpeBRepTool_connexity.hxx".}
proc changeItem*(this: var TopOpeBRepToolConnexity; oriKey: int): var TopToolsListOfShape {.
    importcpp: "ChangeItem", header: "TopOpeBRepTool_connexity.hxx".}
proc isMultiple*(this: TopOpeBRepToolConnexity): StandardBoolean {.noSideEffect,
    importcpp: "IsMultiple", header: "TopOpeBRepTool_connexity.hxx".}
proc isFaulty*(this: TopOpeBRepToolConnexity): StandardBoolean {.noSideEffect,
    importcpp: "IsFaulty", header: "TopOpeBRepTool_connexity.hxx".}
proc isInternal*(this: TopOpeBRepToolConnexity; item: var TopToolsListOfShape): int {.
    noSideEffect, importcpp: "IsInternal", header: "TopOpeBRepTool_connexity.hxx".}