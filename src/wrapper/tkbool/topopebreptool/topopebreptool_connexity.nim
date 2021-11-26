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


proc newTopOpeBRepToolConnexity*(): TopOpeBRepToolConnexity {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_connexity(@)", dynlib: tkbool.}
proc newTopOpeBRepToolConnexity*(key: TopoDS_Shape): TopOpeBRepToolConnexity {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_connexity(@)", dynlib: tkbool.}
proc setKey*(this: var TopOpeBRepToolConnexity; key: TopoDS_Shape) {.cdecl,
    importcpp: "SetKey", dynlib: tkbool.}
proc key*(this: TopOpeBRepToolConnexity): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkbool.}
proc item*(this: TopOpeBRepToolConnexity; oriKey: cint; item: var TopToolsListOfShape): cint {.
    noSideEffect, cdecl, importcpp: "Item", dynlib: tkbool.}
proc allItems*(this: TopOpeBRepToolConnexity; item: var TopToolsListOfShape): cint {.
    noSideEffect, cdecl, importcpp: "AllItems", dynlib: tkbool.}
proc addItem*(this: var TopOpeBRepToolConnexity; oriKey: cint;
             item: TopToolsListOfShape) {.cdecl, importcpp: "AddItem", dynlib: tkbool.}
proc addItem*(this: var TopOpeBRepToolConnexity; oriKey: cint; item: TopoDS_Shape) {.
    cdecl, importcpp: "AddItem", dynlib: tkbool.}
proc removeItem*(this: var TopOpeBRepToolConnexity; oriKey: cint; item: TopoDS_Shape): bool {.
    cdecl, importcpp: "RemoveItem", dynlib: tkbool.}
proc removeItem*(this: var TopOpeBRepToolConnexity; item: TopoDS_Shape): bool {.cdecl,
    importcpp: "RemoveItem", dynlib: tkbool.}
proc changeItem*(this: var TopOpeBRepToolConnexity; oriKey: cint): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeItem", dynlib: tkbool.}
proc isMultiple*(this: TopOpeBRepToolConnexity): bool {.noSideEffect, cdecl,
    importcpp: "IsMultiple", dynlib: tkbool.}
proc isFaulty*(this: TopOpeBRepToolConnexity): bool {.noSideEffect, cdecl,
    importcpp: "IsFaulty", dynlib: tkbool.}
proc isInternal*(this: TopOpeBRepToolConnexity; item: var TopToolsListOfShape): cint {.
    noSideEffect, cdecl, importcpp: "IsInternal", dynlib: tkbool.}