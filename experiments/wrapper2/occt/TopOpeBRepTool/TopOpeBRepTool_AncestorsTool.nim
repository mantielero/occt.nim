##  Created on: 1993-08-12
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  TopOpeBRepToolAncestorsTool* {.importcpp: "TopOpeBRepTool_AncestorsTool",
                                header: "TopOpeBRepTool_AncestorsTool.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolAncestorsTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_AncestorsTool::operator new",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}
proc `delete`*(this: var TopOpeBRepToolAncestorsTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_AncestorsTool::operator delete",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}
proc `new[]`*(this: var TopOpeBRepToolAncestorsTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_AncestorsTool::operator new[]",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolAncestorsTool; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_AncestorsTool::operator delete[]",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}
proc `new`*(this: var TopOpeBRepToolAncestorsTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_AncestorsTool::operator new",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}
proc `delete`*(this: var TopOpeBRepToolAncestorsTool; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_AncestorsTool::operator delete",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}
proc makeAncestors*(s: TopoDS_Shape; ts: TopAbsShapeEnum; ta: TopAbsShapeEnum;
                   m: var TopToolsIndexedDataMapOfShapeListOfShape) {.
    importcpp: "TopOpeBRepTool_AncestorsTool::MakeAncestors(@)",
    header: "TopOpeBRepTool_AncestorsTool.hxx".}