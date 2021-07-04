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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../GeomAbs/GeomAbs_SurfaceType, ../Standard/Standard_Boolean,
  ../IntRes2d/IntRes2d_Domain, ../TopoDS/TopoDS_Edge,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../Standard/Standard_Real,
  ../Geom2dInt/Geom2dInt_GInter,
  ../IntRes2d/IntRes2d_SequenceOfIntersectionPoint,
  ../IntRes2d/IntRes2d_SequenceOfIntersectionSegment,
  ../Standard/Standard_Integer, ../TopoDS/TopoDS_Vertex,
  TopOpeBRep_SequenceOfPoint2d, TopOpeBRep_P2Dstatus,
  ../TopAbs/TopAbs_Orientation, ../TopOpeBRepDS/TopOpeBRepDS_Config

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
  TopOpeBRep_EdgesIntersector* {.importcpp: "TopOpeBRep_EdgesIntersector",
                                header: "TopOpeBRep_EdgesIntersector.hxx", bycopy.} = object


proc constructTopOpeBRep_EdgesIntersector*(): TopOpeBRep_EdgesIntersector {.
    constructor, importcpp: "TopOpeBRep_EdgesIntersector(@)",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc destroyTopOpeBRep_EdgesIntersector*(this: var TopOpeBRep_EdgesIntersector) {.
    importcpp: "#.~TopOpeBRep_EdgesIntersector()",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc SetFaces*(this: var TopOpeBRep_EdgesIntersector; F1: TopoDS_Shape;
              F2: TopoDS_Shape) {.importcpp: "SetFaces",
                                header: "TopOpeBRep_EdgesIntersector.hxx".}
proc SetFaces*(this: var TopOpeBRep_EdgesIntersector; F1: TopoDS_Shape;
              F2: TopoDS_Shape; B1: Bnd_Box; B2: Bnd_Box) {.importcpp: "SetFaces",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc ForceTolerances*(this: var TopOpeBRep_EdgesIntersector; Tol1: Standard_Real;
                     Tol2: Standard_Real) {.importcpp: "ForceTolerances",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Dimension*(this: var TopOpeBRep_EdgesIntersector; D: Standard_Integer) {.
    importcpp: "Dimension", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Dimension*(this: TopOpeBRep_EdgesIntersector): Standard_Integer {.noSideEffect,
    importcpp: "Dimension", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Perform*(this: var TopOpeBRep_EdgesIntersector; E1: TopoDS_Shape;
             E2: TopoDS_Shape; ReduceSegments: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc IsEmpty*(this: var TopOpeBRep_EdgesIntersector): Standard_Boolean {.
    importcpp: "IsEmpty", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc HasSegment*(this: TopOpeBRep_EdgesIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "HasSegment",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc SameDomain*(this: TopOpeBRep_EdgesIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "SameDomain",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Edge*(this: TopOpeBRep_EdgesIntersector; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Edge", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Curve*(this: TopOpeBRep_EdgesIntersector; Index: Standard_Integer): Geom2dAdaptor_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Face*(this: TopOpeBRep_EdgesIntersector; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Face", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Surface*(this: TopOpeBRep_EdgesIntersector; Index: Standard_Integer): BRepAdaptor_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc SurfacesSameOriented*(this: TopOpeBRep_EdgesIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "SurfacesSameOriented",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc FacesSameOriented*(this: TopOpeBRep_EdgesIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "FacesSameOriented",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc ToleranceMax*(this: TopOpeBRep_EdgesIntersector): Standard_Real {.noSideEffect,
    importcpp: "ToleranceMax", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Tolerances*(this: TopOpeBRep_EdgesIntersector; tol1: var Standard_Real;
                tol2: var Standard_Real) {.noSideEffect, importcpp: "Tolerances", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc NbPoints*(this: TopOpeBRep_EdgesIntersector): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc NbSegments*(this: TopOpeBRep_EdgesIntersector): Standard_Integer {.
    noSideEffect, importcpp: "NbSegments",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Dump*(this: var TopOpeBRep_EdgesIntersector; str: TCollection_AsciiString;
          ie1: Standard_Integer = 0; ie2: Standard_Integer = 0) {.importcpp: "Dump",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc InitPoint*(this: var TopOpeBRep_EdgesIntersector;
               selectkeep: Standard_Boolean = Standard_True) {.
    importcpp: "InitPoint", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc MorePoint*(this: TopOpeBRep_EdgesIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "MorePoint", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc NextPoint*(this: var TopOpeBRep_EdgesIntersector) {.importcpp: "NextPoint",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Points*(this: TopOpeBRep_EdgesIntersector): TopOpeBRep_SequenceOfPoint2d {.
    noSideEffect, importcpp: "Points", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Point*(this: TopOpeBRep_EdgesIntersector): TopOpeBRep_Point2d {.noSideEffect,
    importcpp: "Point", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Point*(this: TopOpeBRep_EdgesIntersector; I: Standard_Integer): TopOpeBRep_Point2d {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRep_EdgesIntersector.hxx".}
proc ReduceSegment*(this: TopOpeBRep_EdgesIntersector; P1: var TopOpeBRep_Point2d;
                   P2: var TopOpeBRep_Point2d; Pn: var TopOpeBRep_Point2d): Standard_Boolean {.
    noSideEffect, importcpp: "ReduceSegment",
    header: "TopOpeBRep_EdgesIntersector.hxx".}
proc Status1*(this: TopOpeBRep_EdgesIntersector): TopOpeBRep_P2Dstatus {.
    noSideEffect, importcpp: "Status1", header: "TopOpeBRep_EdgesIntersector.hxx".}