##  Created on: 1994-10-13
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopoDS_Vertex"
type
  TopOpeBRepFaceEdgeIntersector* {.importcpp: "TopOpeBRep_FaceEdgeIntersector",
                                  header: "TopOpeBRep_FaceEdgeIntersector.hxx",
                                  bycopy.} = object


proc `new`*(this: var TopOpeBRepFaceEdgeIntersector; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_FaceEdgeIntersector::operator new",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc `delete`*(this: var TopOpeBRepFaceEdgeIntersector; theAddress: pointer) {.
    importcpp: "TopOpeBRep_FaceEdgeIntersector::operator delete",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc `new[]`*(this: var TopOpeBRepFaceEdgeIntersector; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_FaceEdgeIntersector::operator new[]",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc `delete[]`*(this: var TopOpeBRepFaceEdgeIntersector; theAddress: pointer) {.
    importcpp: "TopOpeBRep_FaceEdgeIntersector::operator delete[]",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc `new`*(this: var TopOpeBRepFaceEdgeIntersector; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_FaceEdgeIntersector::operator new",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc `delete`*(this: var TopOpeBRepFaceEdgeIntersector; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_FaceEdgeIntersector::operator delete",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc constructTopOpeBRepFaceEdgeIntersector*(): TopOpeBRepFaceEdgeIntersector {.
    constructor, importcpp: "TopOpeBRep_FaceEdgeIntersector(@)",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc perform*(this: var TopOpeBRepFaceEdgeIntersector; f: TopoDS_Shape;
             e: TopoDS_Shape) {.importcpp: "Perform",
                              header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc isEmpty*(this: var TopOpeBRepFaceEdgeIntersector): StandardBoolean {.
    importcpp: "IsEmpty", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc shape*(this: TopOpeBRepFaceEdgeIntersector; index: int): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc forceTolerance*(this: var TopOpeBRepFaceEdgeIntersector; tol: StandardReal) {.
    importcpp: "ForceTolerance", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc tolerance*(this: TopOpeBRepFaceEdgeIntersector): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc nbPoints*(this: TopOpeBRepFaceEdgeIntersector): int {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc initPoint*(this: var TopOpeBRepFaceEdgeIntersector) {.importcpp: "InitPoint",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc morePoint*(this: TopOpeBRepFaceEdgeIntersector): StandardBoolean {.
    noSideEffect, importcpp: "MorePoint",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc nextPoint*(this: var TopOpeBRepFaceEdgeIntersector) {.importcpp: "NextPoint",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc value*(this: TopOpeBRepFaceEdgeIntersector): Pnt {.noSideEffect,
    importcpp: "Value", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc parameter*(this: TopOpeBRepFaceEdgeIntersector): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc uVPoint*(this: TopOpeBRepFaceEdgeIntersector; p: var Pnt2d) {.noSideEffect,
    importcpp: "UVPoint", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc state*(this: TopOpeBRepFaceEdgeIntersector): TopAbsState {.noSideEffect,
    importcpp: "State", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc transition*(this: TopOpeBRepFaceEdgeIntersector; index: int;
                faceOrientation: TopAbsOrientation): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Transition",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc isVertex*(this: var TopOpeBRepFaceEdgeIntersector; s: TopoDS_Shape; p: Pnt;
              tol: StandardReal; v: var TopoDS_Vertex): StandardBoolean {.
    importcpp: "IsVertex", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc isVertex*(this: var TopOpeBRepFaceEdgeIntersector; i: int; v: var TopoDS_Vertex): StandardBoolean {.
    importcpp: "IsVertex", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc index*(this: TopOpeBRepFaceEdgeIntersector): int {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}