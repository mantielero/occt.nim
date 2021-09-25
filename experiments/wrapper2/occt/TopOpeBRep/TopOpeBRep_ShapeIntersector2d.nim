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

discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_EdgesIntersector"
type
  TopOpeBRepShapeIntersector2d* {.importcpp: "TopOpeBRep_ShapeIntersector2d",
                                 header: "TopOpeBRep_ShapeIntersector2d.hxx",
                                 bycopy.} = object


proc constructTopOpeBRepShapeIntersector2d*(): TopOpeBRepShapeIntersector2d {.
    constructor, importcpp: "TopOpeBRep_ShapeIntersector2d(@)",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc initIntersection*(this: var TopOpeBRepShapeIntersector2d; s1: TopoDS_Shape;
                      s2: TopoDS_Shape) {.importcpp: "InitIntersection", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc shape*(this: TopOpeBRepShapeIntersector2d; index: int): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc moreIntersection*(this: TopOpeBRepShapeIntersector2d): bool {.noSideEffect,
    importcpp: "MoreIntersection", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc nextIntersection*(this: var TopOpeBRepShapeIntersector2d) {.
    importcpp: "NextIntersection", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc changeEdgesIntersector*(this: var TopOpeBRepShapeIntersector2d): var TopOpeBRepEdgesIntersector {.
    importcpp: "ChangeEdgesIntersector",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc currentGeomShape*(this: TopOpeBRepShapeIntersector2d; index: int): TopoDS_Shape {.
    noSideEffect, importcpp: "CurrentGeomShape",
    header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc dumpCurrent*(this: TopOpeBRepShapeIntersector2d; k: int) {.noSideEffect,
    importcpp: "DumpCurrent", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
proc index*(this: TopOpeBRepShapeIntersector2d; k: int): int {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_ShapeIntersector2d.hxx".}
