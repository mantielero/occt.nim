##  Created on: 1993-06-23
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
  ../Standard/Standard_Handle, TopOpeBRep_ShapeIntersector,
  TopOpeBRep_ShapeIntersector2d, TopOpeBRep_FacesFiller, TopOpeBRep_EdgesFiller,
  TopOpeBRep_FaceEdgeFiller, ../TopOpeBRepTool/TopOpeBRepTool_PShapeClassifier,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_ShapeIntersector"
discard "forward decl of TopOpeBRep_ShapeIntersector2d"
discard "forward decl of TopOpeBRep_FacesFiller"
discard "forward decl of TopOpeBRep_EdgesFiller"
discard "forward decl of TopOpeBRep_FaceEdgeFiller"
type
  TopOpeBRep_DSFiller* {.importcpp: "TopOpeBRep_DSFiller",
                        header: "TopOpeBRep_DSFiller.hxx", bycopy.} = object


proc constructTopOpeBRep_DSFiller*(): TopOpeBRep_DSFiller {.constructor,
    importcpp: "TopOpeBRep_DSFiller(@)", header: "TopOpeBRep_DSFiller.hxx".}
proc destroyTopOpeBRep_DSFiller*(this: var TopOpeBRep_DSFiller) {.
    importcpp: "#.~TopOpeBRep_DSFiller()", header: "TopOpeBRep_DSFiller.hxx".}
proc PShapeClassifier*(this: TopOpeBRep_DSFiller): TopOpeBRepTool_PShapeClassifier {.
    noSideEffect, importcpp: "PShapeClassifier", header: "TopOpeBRep_DSFiller.hxx".}
proc Insert*(this: var TopOpeBRep_DSFiller; S1: TopoDS_Shape; S2: TopoDS_Shape;
            HDS: handle[TopOpeBRepDS_HDataStructure];
            orientFORWARD: Standard_Boolean = Standard_True) {.importcpp: "Insert",
    header: "TopOpeBRep_DSFiller.hxx".}
proc InsertIntersection*(this: var TopOpeBRep_DSFiller; S1: TopoDS_Shape;
                        S2: TopoDS_Shape;
                        HDS: handle[TopOpeBRepDS_HDataStructure];
                        orientFORWARD: Standard_Boolean = Standard_True) {.
    importcpp: "InsertIntersection", header: "TopOpeBRep_DSFiller.hxx".}
proc Complete*(this: var TopOpeBRep_DSFiller;
              HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Complete",
    header: "TopOpeBRep_DSFiller.hxx".}
proc Insert2d*(this: var TopOpeBRep_DSFiller; S1: TopoDS_Shape; S2: TopoDS_Shape;
              HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert2d",
    header: "TopOpeBRep_DSFiller.hxx".}
proc InsertIntersection2d*(this: var TopOpeBRep_DSFiller; S1: TopoDS_Shape;
                          S2: TopoDS_Shape;
                          HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "InsertIntersection2d", header: "TopOpeBRep_DSFiller.hxx".}
proc IsMadeOf1d*(this: TopOpeBRep_DSFiller; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsMadeOf1d", header: "TopOpeBRep_DSFiller.hxx".}
proc IsContext1d*(this: TopOpeBRep_DSFiller; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsContext1d", header: "TopOpeBRep_DSFiller.hxx".}
proc Insert1d*(this: var TopOpeBRep_DSFiller; S1: TopoDS_Shape; S2: TopoDS_Shape;
              F1: TopoDS_Face; F2: TopoDS_Face;
              HDS: handle[TopOpeBRepDS_HDataStructure];
              orientFORWARD: Standard_Boolean = Standard_False) {.
    importcpp: "Insert1d", header: "TopOpeBRep_DSFiller.hxx".}
proc ChangeShapeIntersector*(this: var TopOpeBRep_DSFiller): var TopOpeBRep_ShapeIntersector {.
    importcpp: "ChangeShapeIntersector", header: "TopOpeBRep_DSFiller.hxx".}
proc ChangeShapeIntersector2d*(this: var TopOpeBRep_DSFiller): var TopOpeBRep_ShapeIntersector2d {.
    importcpp: "ChangeShapeIntersector2d", header: "TopOpeBRep_DSFiller.hxx".}
proc ChangeFacesFiller*(this: var TopOpeBRep_DSFiller): var TopOpeBRep_FacesFiller {.
    importcpp: "ChangeFacesFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc ChangeEdgesFiller*(this: var TopOpeBRep_DSFiller): var TopOpeBRep_EdgesFiller {.
    importcpp: "ChangeEdgesFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc ChangeFaceEdgeFiller*(this: var TopOpeBRep_DSFiller): var TopOpeBRep_FaceEdgeFiller {.
    importcpp: "ChangeFaceEdgeFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc GapFiller*(this: TopOpeBRep_DSFiller; HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "GapFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc CompleteDS*(this: TopOpeBRep_DSFiller;
                HDS: handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect,
    importcpp: "CompleteDS", header: "TopOpeBRep_DSFiller.hxx".}
proc Filter*(this: TopOpeBRep_DSFiller; HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "Filter", header: "TopOpeBRep_DSFiller.hxx".}
proc Reducer*(this: TopOpeBRep_DSFiller; HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "Reducer", header: "TopOpeBRep_DSFiller.hxx".}
proc RemoveUnsharedGeometry*(this: var TopOpeBRep_DSFiller;
                            HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "RemoveUnsharedGeometry", header: "TopOpeBRep_DSFiller.hxx".}
proc Checker*(this: TopOpeBRep_DSFiller; HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "Checker", header: "TopOpeBRep_DSFiller.hxx".}
proc CompleteDS2d*(this: TopOpeBRep_DSFiller;
                  HDS: handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect,
    importcpp: "CompleteDS2d", header: "TopOpeBRep_DSFiller.hxx".}