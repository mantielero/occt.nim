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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_ShapeIntersector"
discard "forward decl of TopOpeBRep_ShapeIntersector2d"
discard "forward decl of TopOpeBRep_FacesFiller"
discard "forward decl of TopOpeBRep_EdgesFiller"
discard "forward decl of TopOpeBRep_FaceEdgeFiller"
type
  TopOpeBRepDSFiller* {.importcpp: "TopOpeBRep_DSFiller",
                       header: "TopOpeBRep_DSFiller.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDSFiller; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_DSFiller::operator new",
    header: "TopOpeBRep_DSFiller.hxx".}
proc `delete`*(this: var TopOpeBRepDSFiller; theAddress: pointer) {.
    importcpp: "TopOpeBRep_DSFiller::operator delete",
    header: "TopOpeBRep_DSFiller.hxx".}
proc `new[]`*(this: var TopOpeBRepDSFiller; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_DSFiller::operator new[]",
    header: "TopOpeBRep_DSFiller.hxx".}
proc `delete[]`*(this: var TopOpeBRepDSFiller; theAddress: pointer) {.
    importcpp: "TopOpeBRep_DSFiller::operator delete[]",
    header: "TopOpeBRep_DSFiller.hxx".}
proc `new`*(this: var TopOpeBRepDSFiller; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_DSFiller::operator new",
    header: "TopOpeBRep_DSFiller.hxx".}
proc `delete`*(this: var TopOpeBRepDSFiller; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_DSFiller::operator delete",
    header: "TopOpeBRep_DSFiller.hxx".}
proc constructTopOpeBRepDSFiller*(): TopOpeBRepDSFiller {.constructor,
    importcpp: "TopOpeBRep_DSFiller(@)", header: "TopOpeBRep_DSFiller.hxx".}
proc destroyTopOpeBRepDSFiller*(this: var TopOpeBRepDSFiller) {.
    importcpp: "#.~TopOpeBRep_DSFiller()", header: "TopOpeBRep_DSFiller.hxx".}
proc pShapeClassifier*(this: TopOpeBRepDSFiller): TopOpeBRepToolPShapeClassifier {.
    noSideEffect, importcpp: "PShapeClassifier", header: "TopOpeBRep_DSFiller.hxx".}
proc insert*(this: var TopOpeBRepDSFiller; s1: TopoDS_Shape; s2: TopoDS_Shape;
            hds: Handle[TopOpeBRepDS_HDataStructure];
            orientFORWARD: StandardBoolean = true) {.importcpp: "Insert",
    header: "TopOpeBRep_DSFiller.hxx".}
proc insertIntersection*(this: var TopOpeBRepDSFiller; s1: TopoDS_Shape;
                        s2: TopoDS_Shape;
                        hds: Handle[TopOpeBRepDS_HDataStructure];
                        orientFORWARD: StandardBoolean = true) {.
    importcpp: "InsertIntersection", header: "TopOpeBRep_DSFiller.hxx".}
proc complete*(this: var TopOpeBRepDSFiller;
              hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Complete",
    header: "TopOpeBRep_DSFiller.hxx".}
proc insert2d*(this: var TopOpeBRepDSFiller; s1: TopoDS_Shape; s2: TopoDS_Shape;
              hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert2d",
    header: "TopOpeBRep_DSFiller.hxx".}
proc insertIntersection2d*(this: var TopOpeBRepDSFiller; s1: TopoDS_Shape;
                          s2: TopoDS_Shape;
                          hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "InsertIntersection2d", header: "TopOpeBRep_DSFiller.hxx".}
proc isMadeOf1d*(this: TopOpeBRepDSFiller; s: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsMadeOf1d", header: "TopOpeBRep_DSFiller.hxx".}
proc isContext1d*(this: TopOpeBRepDSFiller; s: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsContext1d", header: "TopOpeBRep_DSFiller.hxx".}
proc insert1d*(this: var TopOpeBRepDSFiller; s1: TopoDS_Shape; s2: TopoDS_Shape;
              f1: TopoDS_Face; f2: TopoDS_Face;
              hds: Handle[TopOpeBRepDS_HDataStructure];
              orientFORWARD: StandardBoolean = false) {.importcpp: "Insert1d",
    header: "TopOpeBRep_DSFiller.hxx".}
proc changeShapeIntersector*(this: var TopOpeBRepDSFiller): var TopOpeBRepShapeIntersector {.
    importcpp: "ChangeShapeIntersector", header: "TopOpeBRep_DSFiller.hxx".}
proc changeShapeIntersector2d*(this: var TopOpeBRepDSFiller): var TopOpeBRepShapeIntersector2d {.
    importcpp: "ChangeShapeIntersector2d", header: "TopOpeBRep_DSFiller.hxx".}
proc changeFacesFiller*(this: var TopOpeBRepDSFiller): var TopOpeBRepFacesFiller {.
    importcpp: "ChangeFacesFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc changeEdgesFiller*(this: var TopOpeBRepDSFiller): var TopOpeBRepEdgesFiller {.
    importcpp: "ChangeEdgesFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc changeFaceEdgeFiller*(this: var TopOpeBRepDSFiller): var TopOpeBRepFaceEdgeFiller {.
    importcpp: "ChangeFaceEdgeFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc gapFiller*(this: TopOpeBRepDSFiller; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "GapFiller", header: "TopOpeBRep_DSFiller.hxx".}
proc completeDS*(this: TopOpeBRepDSFiller; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "CompleteDS", header: "TopOpeBRep_DSFiller.hxx".}
proc filter*(this: TopOpeBRepDSFiller; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "Filter", header: "TopOpeBRep_DSFiller.hxx".}
proc reducer*(this: TopOpeBRepDSFiller; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "Reducer", header: "TopOpeBRep_DSFiller.hxx".}
proc removeUnsharedGeometry*(this: var TopOpeBRepDSFiller;
                            hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "RemoveUnsharedGeometry", header: "TopOpeBRep_DSFiller.hxx".}
proc checker*(this: TopOpeBRepDSFiller; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    noSideEffect, importcpp: "Checker", header: "TopOpeBRep_DSFiller.hxx".}
proc completeDS2d*(this: TopOpeBRepDSFiller;
                  hds: Handle[TopOpeBRepDS_HDataStructure]) {.noSideEffect,
    importcpp: "CompleteDS2d", header: "TopOpeBRep_DSFiller.hxx".}