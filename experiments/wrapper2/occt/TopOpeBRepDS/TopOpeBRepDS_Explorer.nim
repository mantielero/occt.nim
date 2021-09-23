##  Created on: 1999-01-05
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  TopOpeBRepDS_Explorer* {.importcpp: "TopOpeBRepDS_Explorer",
                          header: "TopOpeBRepDS_Explorer.hxx", bycopy.} = object


proc constructTopOpeBRepDS_Explorer*(): TopOpeBRepDS_Explorer {.constructor,
    importcpp: "TopOpeBRepDS_Explorer(@)", header: "TopOpeBRepDS_Explorer.hxx".}
proc constructTopOpeBRepDS_Explorer*(HDS: handle[TopOpeBRepDS_HDataStructure];
                                    T: TopAbs_ShapeEnum = TopAbs_SHAPE;
                                    findkeep: Standard_Boolean = Standard_True): TopOpeBRepDS_Explorer {.
    constructor, importcpp: "TopOpeBRepDS_Explorer(@)",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc Init*(this: var TopOpeBRepDS_Explorer;
          HDS: handle[TopOpeBRepDS_HDataStructure];
          T: TopAbs_ShapeEnum = TopAbs_SHAPE;
          findkeep: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc Type*(this: TopOpeBRepDS_Explorer): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "Type", header: "TopOpeBRepDS_Explorer.hxx".}
proc More*(this: TopOpeBRepDS_Explorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_Explorer.hxx".}
proc Next*(this: var TopOpeBRepDS_Explorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc Current*(this: TopOpeBRepDS_Explorer): TopoDS_Shape {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRepDS_Explorer.hxx".}
proc Index*(this: TopOpeBRepDS_Explorer): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_Explorer.hxx".}
proc Face*(this: TopOpeBRepDS_Explorer): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepDS_Explorer.hxx".}
proc Edge*(this: TopOpeBRepDS_Explorer): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRepDS_Explorer.hxx".}
proc Vertex*(this: TopOpeBRepDS_Explorer): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRepDS_Explorer.hxx".}