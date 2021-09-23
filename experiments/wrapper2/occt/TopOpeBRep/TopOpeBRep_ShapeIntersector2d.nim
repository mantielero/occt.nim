##  Created on: 1993-05-07
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopOpeBRepTool/TopOpeBRepTool_ShapeExplorer, TopOpeBRep_ShapeScanner,
  TopOpeBRep_EdgesIntersector, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_EdgesIntersector"
type
  TopOpeBRep_ShapeIntersector2d* {.importcpp: "TopOpeBRep_ShapeIntersector2d",
                                  header: "TopOpeBRep_ShapeIntersector2d.hxx",
                                  bycopy.} = object


proc constructTopOpeBRep_ShapeIntersector2d*(): TopOpeBRep_ShapeIntersector2d {.
    constructor, importcpp: "TopOpeBRep_ShapeIntersector2d(@)",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc InitIntersection*(this: var TopOpeBRep_ShapeIntersector2d; S1: TopoDS_Shape;
                      S2: TopoDS_Shape) {.importcpp: "InitIntersection", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc Shape*(this: TopOpeBRep_ShapeIntersector2d; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc MoreIntersection*(this: TopOpeBRep_ShapeIntersector2d): Standard_Boolean {.
    noSideEffect, importcpp: "MoreIntersection",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc NextIntersection*(this: var TopOpeBRep_ShapeIntersector2d) {.
    importcpp: "NextIntersection", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc ChangeEdgesIntersector*(this: var TopOpeBRep_ShapeIntersector2d): var TopOpeBRep_EdgesIntersector {.
    importcpp: "ChangeEdgesIntersector",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc CurrentGeomShape*(this: TopOpeBRep_ShapeIntersector2d; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "CurrentGeomShape",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc DumpCurrent*(this: TopOpeBRep_ShapeIntersector2d; K: Standard_Integer) {.
    noSideEffect, importcpp: "DumpCurrent",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc Index*(this: TopOpeBRep_ShapeIntersector2d; K: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "TopOpeBRep_ShapeIntersector2d.hxx".}