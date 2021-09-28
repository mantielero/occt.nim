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
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_FacesIntersector"
discard "forward decl of TopOpeBRep_EdgesIntersector"
discard "forward decl of TopOpeBRep_FaceEdgeIntersector"
type
  TopOpeBRepShapeIntersector* {.importcpp: "TopOpeBRep_ShapeIntersector",
                               header: "TopOpeBRep_ShapeIntersector.hxx", bycopy.} = object


proc constructTopOpeBRepShapeIntersector*(): TopOpeBRepShapeIntersector {.
    constructor, importcpp: "TopOpeBRep_ShapeIntersector(@)",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc initIntersection*(this: var TopOpeBRepShapeIntersector; s1: TopoDS_Shape;
                      s2: TopoDS_Shape) {.importcpp: "InitIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc initIntersection*(this: var TopOpeBRepShapeIntersector; s1: TopoDS_Shape;
                      s2: TopoDS_Shape; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "InitIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc shape*(this: TopOpeBRepShapeIntersector; index: cint): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc moreIntersection*(this: TopOpeBRepShapeIntersector): bool {.noSideEffect,
    importcpp: "MoreIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc nextIntersection*(this: var TopOpeBRepShapeIntersector) {.
    importcpp: "NextIntersection", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc changeFacesIntersector*(this: var TopOpeBRepShapeIntersector): var TopOpeBRepFacesIntersector {.
    importcpp: "ChangeFacesIntersector", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc changeEdgesIntersector*(this: var TopOpeBRepShapeIntersector): var TopOpeBRepEdgesIntersector {.
    importcpp: "ChangeEdgesIntersector", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc changeFaceEdgeIntersector*(this: var TopOpeBRepShapeIntersector): var TopOpeBRepFaceEdgeIntersector {.
    importcpp: "ChangeFaceEdgeIntersector",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc currentGeomShape*(this: TopOpeBRepShapeIntersector; index: cint): TopoDS_Shape {.
    noSideEffect, importcpp: "CurrentGeomShape",
    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc getTolerances*(this: TopOpeBRepShapeIntersector; tol1: var cfloat;
                   tol2: var cfloat) {.noSideEffect, importcpp: "GetTolerances",
                                    header: "TopOpeBRep_ShapeIntersector.hxx".}
proc dumpCurrent*(this: TopOpeBRepShapeIntersector; k: cint) {.noSideEffect,
    importcpp: "DumpCurrent", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc index*(this: TopOpeBRepShapeIntersector; k: cint): cint {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_ShapeIntersector.hxx".}
proc rejectedFaces*(this: var TopOpeBRepShapeIntersector; anObj: TopoDS_Shape;
                   aReference: TopoDS_Shape; aListOfShape: var TopToolsListOfShape) {.
    importcpp: "RejectedFaces", header: "TopOpeBRep_ShapeIntersector.hxx".}

























