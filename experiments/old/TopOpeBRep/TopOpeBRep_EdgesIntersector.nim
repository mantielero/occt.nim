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

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopOpeBRep_Point2d"
discard "forward decl of IntRes2d_IntersectionSegment"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepEdgesIntersector* {.importcpp: "TopOpeBRep_EdgesIntersector",
                               header: "TopOpeBRep_EdgesIntersector.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepEdgesIntersector; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_EdgesIntersector::operator new",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc `delete`*(this: var TopOpeBRepEdgesIntersector; theAddress: pointer) {.
    importcpp: "TopOpeBRep_EdgesIntersector::operator delete",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc `new[]`*(this: var TopOpeBRepEdgesIntersector; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_EdgesIntersector::operator new[]",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc `delete[]`*(this: var TopOpeBRepEdgesIntersector; theAddress: pointer) {.
    importcpp: "TopOpeBRep_EdgesIntersector::operator delete[]",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc `new`*(this: var TopOpeBRepEdgesIntersector; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_EdgesIntersector::operator new",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc `delete`*(this: var TopOpeBRepEdgesIntersector; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_EdgesIntersector::operator delete",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc constructTopOpeBRepEdgesIntersector*(): TopOpeBRepEdgesIntersector {.
    constructor, importcpp: "TopOpeBRep_EdgesIntersector(@)",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc destroyTopOpeBRepEdgesIntersector*(this: var TopOpeBRepEdgesIntersector) {.
    importcpp: "#.~TopOpeBRep_EdgesIntersector()",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc setFaces*(this: var TopOpeBRepEdgesIntersector; f1: TopoDS_Shape;
              f2: TopoDS_Shape) {.importcpp: "SetFaces",
                                header: "TopOpeBRep_EdgesIntersector.hxx".}
proc setFaces*(this: var TopOpeBRepEdgesIntersector; f1: TopoDS_Shape;
              f2: TopoDS_Shape; b1: BndBox; b2: BndBox) {.importcpp: "SetFaces",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc forceTolerances*(this: var TopOpeBRepEdgesIntersector; tol1: StandardReal;
                     tol2: StandardReal) {.importcpp: "ForceTolerances",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc dimension*(this: var TopOpeBRepEdgesIntersector; d: int) {.
    importcpp: "Dimension", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc dimension*(this: TopOpeBRepEdgesIntersector): int {.noSideEffect,
    importcpp: "Dimension", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc perform*(this: var TopOpeBRepEdgesIntersector; e1: TopoDS_Shape;
             e2: TopoDS_Shape; reduceSegments: StandardBoolean = true) {.
    importcpp: "Perform", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc isEmpty*(this: var TopOpeBRepEdgesIntersector): StandardBoolean {.
    importcpp: "IsEmpty", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc hasSegment*(this: TopOpeBRepEdgesIntersector): StandardBoolean {.noSideEffect,
    importcpp: "HasSegment", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc sameDomain*(this: TopOpeBRepEdgesIntersector): StandardBoolean {.noSideEffect,
    importcpp: "SameDomain", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc edge*(this: TopOpeBRepEdgesIntersector; index: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc curve*(this: TopOpeBRepEdgesIntersector; index: int): Geom2dAdaptorCurve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc face*(this: TopOpeBRepEdgesIntersector; index: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc surface*(this: TopOpeBRepEdgesIntersector; index: int): BRepAdaptorSurface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc surfacesSameOriented*(this: TopOpeBRepEdgesIntersector): StandardBoolean {.
    noSideEffect, importcpp: "SurfacesSameOriented",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc facesSameOriented*(this: TopOpeBRepEdgesIntersector): StandardBoolean {.
    noSideEffect, importcpp: "FacesSameOriented",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc toleranceMax*(this: TopOpeBRepEdgesIntersector): StandardReal {.noSideEffect,
    importcpp: "ToleranceMax", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc tolerances*(this: TopOpeBRepEdgesIntersector; tol1: var StandardReal;
                tol2: var StandardReal) {.noSideEffect, importcpp: "Tolerances", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc nbPoints*(this: TopOpeBRepEdgesIntersector): int {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc nbSegments*(this: TopOpeBRepEdgesIntersector): int {.noSideEffect,
    importcpp: "NbSegments", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc dump*(this: var TopOpeBRepEdgesIntersector; str: TCollectionAsciiString;
          ie1: int = 0; ie2: int = 0) {.importcpp: "Dump",
                                header: "TopOpeBRep_EdgesIntersector.hxx".}
proc initPoint*(this: var TopOpeBRepEdgesIntersector;
               selectkeep: StandardBoolean = true) {.importcpp: "InitPoint",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc morePoint*(this: TopOpeBRepEdgesIntersector): StandardBoolean {.noSideEffect,
    importcpp: "MorePoint", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc nextPoint*(this: var TopOpeBRepEdgesIntersector) {.importcpp: "NextPoint",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc points*(this: TopOpeBRepEdgesIntersector): TopOpeBRepSequenceOfPoint2d {.
    noSideEffect, importcpp: "Points", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc point*(this: TopOpeBRepEdgesIntersector): TopOpeBRepPoint2d {.noSideEffect,
    importcpp: "Point", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc point*(this: TopOpeBRepEdgesIntersector; i: int): TopOpeBRepPoint2d {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc reduceSegment*(this: TopOpeBRepEdgesIntersector; p1: var TopOpeBRepPoint2d;
                   p2: var TopOpeBRepPoint2d; pn: var TopOpeBRepPoint2d): StandardBoolean {.
    noSideEffect, importcpp: "ReduceSegment",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc status1*(this: TopOpeBRepEdgesIntersector): TopOpeBRepP2Dstatus {.noSideEffect,
    importcpp: "Status1", header: "TopOpeBRep_EdgesIntersector.hxx".}