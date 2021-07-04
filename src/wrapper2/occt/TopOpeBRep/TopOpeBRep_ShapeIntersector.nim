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
  TopOpeBRep_FacesIntersector, ../Standard/Standard_Boolean,
  TopOpeBRep_EdgesIntersector, TopOpeBRep_FaceEdgeIntersector,
  ../TopoDS/TopoDS_Face, ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_FacesIntersector"
discard "forward decl of TopOpeBRep_EdgesIntersector"
discard "forward decl of TopOpeBRep_FaceEdgeIntersector"
type
  TopOpeBRep_ShapeIntersector* {.importcpp: "TopOpeBRep_ShapeIntersector",
                                header: "TopOpeBRep_ShapeIntersector.hxx", bycopy.} = object


proc constructTopOpeBRep_ShapeIntersector*(): TopOpeBRep_ShapeIntersector {.
    constructor, importcpp: "TopOpeBRep_ShapeIntersector(@)",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc InitIntersection*(this: var TopOpeBRep_ShapeIntersector; S1: TopoDS_Shape;
                      S2: TopoDS_Shape) {.importcpp: "InitIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc InitIntersection*(this: var TopOpeBRep_ShapeIntersector; S1: TopoDS_Shape;
                      S2: TopoDS_Shape; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "InitIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc Shape*(this: TopOpeBRep_ShapeIntersector; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc MoreIntersection*(this: TopOpeBRep_ShapeIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "MoreIntersection",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc NextIntersection*(this: var TopOpeBRep_ShapeIntersector) {.
    importcpp: "NextIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc ChangeFacesIntersector*(this: var TopOpeBRep_ShapeIntersector): var TopOpeBRep_FacesIntersector {.
    importcpp: "ChangeFacesIntersector", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc ChangeEdgesIntersector*(this: var TopOpeBRep_ShapeIntersector): var TopOpeBRep_EdgesIntersector {.
    importcpp: "ChangeEdgesIntersector", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc ChangeFaceEdgeIntersector*(this: var TopOpeBRep_ShapeIntersector): var TopOpeBRep_FaceEdgeIntersector {.
    importcpp: "ChangeFaceEdgeIntersector",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc CurrentGeomShape*(this: TopOpeBRep_ShapeIntersector; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "CurrentGeomShape",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc GetTolerances*(this: TopOpeBRep_ShapeIntersector; tol1: var Standard_Real;
                   tol2: var Standard_Real) {.noSideEffect,
    importcpp: "GetTolerances", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc DumpCurrent*(this: TopOpeBRep_ShapeIntersector; K: Standard_Integer) {.
    noSideEffect, importcpp: "DumpCurrent",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc Index*(this: TopOpeBRep_ShapeIntersector; K: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc RejectedFaces*(this: var TopOpeBRep_ShapeIntersector; anObj: TopoDS_Shape;
                   aReference: TopoDS_Shape;
                   aListOfShape: var TopTools_ListOfShape) {.
    importcpp: "RejectedFaces", header: "TopOpeBRep_ShapeIntersector.hxx".}