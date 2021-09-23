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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_Array1OfListOfShape, ../Standard/Standard_Integer,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepTool_connexity* {.importcpp: "TopOpeBRepTool_connexity",
                             header: "TopOpeBRepTool_connexity.hxx", bycopy.} = object


proc constructTopOpeBRepTool_connexity*(): TopOpeBRepTool_connexity {.constructor,
    importcpp: "TopOpeBRepTool_connexity(@)",
    header: "TopOpeBRepTool_connexity.hxx".}
proc constructTopOpeBRepTool_connexity*(Key: TopoDS_Shape): TopOpeBRepTool_connexity {.
    constructor, importcpp: "TopOpeBRepTool_connexity(@)",
    header: "TopOpeBRepTool_connexity.hxx".}
proc SetKey*(this: var TopOpeBRepTool_connexity; Key: TopoDS_Shape) {.
    importcpp: "SetKey", header: "TopOpeBRepTool_connexity.hxx".}
proc Key*(this: TopOpeBRepTool_connexity): TopoDS_Shape {.noSideEffect,
    importcpp: "Key", header: "TopOpeBRepTool_connexity.hxx".}
proc Item*(this: TopOpeBRepTool_connexity; OriKey: Standard_Integer;
          Item: var TopTools_ListOfShape): Standard_Integer {.noSideEffect,
    importcpp: "Item", header: "TopOpeBRepTool_connexity.hxx".}
proc AllItems*(this: TopOpeBRepTool_connexity; Item: var TopTools_ListOfShape): Standard_Integer {.
    noSideEffect, importcpp: "AllItems", header: "TopOpeBRepTool_connexity.hxx".}
proc AddItem*(this: var TopOpeBRepTool_connexity; OriKey: Standard_Integer;
             Item: TopTools_ListOfShape) {.importcpp: "AddItem",
    header: "TopOpeBRepTool_connexity.hxx".}
proc AddItem*(this: var TopOpeBRepTool_connexity; OriKey: Standard_Integer;
             Item: TopoDS_Shape) {.importcpp: "AddItem",
                                 header: "TopOpeBRepTool_connexity.hxx".}
proc RemoveItem*(this: var TopOpeBRepTool_connexity; OriKey: Standard_Integer;
                Item: TopoDS_Shape): Standard_Boolean {.importcpp: "RemoveItem",
    header: "TopOpeBRepTool_connexity.hxx".}
proc RemoveItem*(this: var TopOpeBRepTool_connexity; Item: TopoDS_Shape): Standard_Boolean {.
    importcpp: "RemoveItem", header: "TopOpeBRepTool_connexity.hxx".}
proc ChangeItem*(this: var TopOpeBRepTool_connexity; OriKey: Standard_Integer): var TopTools_ListOfShape {.
    importcpp: "ChangeItem", header: "TopOpeBRepTool_connexity.hxx".}
proc IsMultiple*(this: TopOpeBRepTool_connexity): Standard_Boolean {.noSideEffect,
    importcpp: "IsMultiple", header: "TopOpeBRepTool_connexity.hxx".}
proc IsFaulty*(this: TopOpeBRepTool_connexity): Standard_Boolean {.noSideEffect,
    importcpp: "IsFaulty", header: "TopOpeBRepTool_connexity.hxx".}
proc IsInternal*(this: TopOpeBRepTool_connexity; Item: var TopTools_ListOfShape): Standard_Integer {.
    noSideEffect, importcpp: "IsInternal", header: "TopOpeBRepTool_connexity.hxx".}