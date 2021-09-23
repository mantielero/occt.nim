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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Edge,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../GeomAdaptor/GeomAdaptor_Curve,
  ../IntCurveSurface/IntCurveSurface_SequenceOfPnt,
  ../TColStd/TColStd_SequenceOfInteger, ../Standard/Standard_Integer,
  ../TopExp/TopExp_Explorer, ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Vertex,
  ../TopAbs/TopAbs_State, ../TopAbs/TopAbs_Orientation, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopoDS_Vertex"
type
  TopOpeBRep_FaceEdgeIntersector* {.importcpp: "TopOpeBRep_FaceEdgeIntersector", header: "TopOpeBRep_FaceEdgeIntersector.hxx",
                                   bycopy.} = object


proc constructTopOpeBRep_FaceEdgeIntersector*(): TopOpeBRep_FaceEdgeIntersector {.
    constructor, importcpp: "TopOpeBRep_FaceEdgeIntersector(@)",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Perform*(this: var TopOpeBRep_FaceEdgeIntersector; F: TopoDS_Shape;
             E: TopoDS_Shape) {.importcpp: "Perform",
                              header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc IsEmpty*(this: var TopOpeBRep_FaceEdgeIntersector): Standard_Boolean {.
    importcpp: "IsEmpty", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Shape*(this: TopOpeBRep_FaceEdgeIntersector; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc ForceTolerance*(this: var TopOpeBRep_FaceEdgeIntersector; tol: Standard_Real) {.
    importcpp: "ForceTolerance", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Tolerance*(this: TopOpeBRep_FaceEdgeIntersector): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc NbPoints*(this: TopOpeBRep_FaceEdgeIntersector): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc InitPoint*(this: var TopOpeBRep_FaceEdgeIntersector) {.importcpp: "InitPoint",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc MorePoint*(this: TopOpeBRep_FaceEdgeIntersector): Standard_Boolean {.
    noSideEffect, importcpp: "MorePoint",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc NextPoint*(this: var TopOpeBRep_FaceEdgeIntersector) {.importcpp: "NextPoint",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Value*(this: TopOpeBRep_FaceEdgeIntersector): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Parameter*(this: TopOpeBRep_FaceEdgeIntersector): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc UVPoint*(this: TopOpeBRep_FaceEdgeIntersector; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "UVPoint", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc State*(this: TopOpeBRep_FaceEdgeIntersector): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Transition*(this: TopOpeBRep_FaceEdgeIntersector; Index: Standard_Integer;
                FaceOrientation: TopAbs_Orientation): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Transition",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc IsVertex*(this: var TopOpeBRep_FaceEdgeIntersector; S: TopoDS_Shape; P: gp_Pnt;
              Tol: Standard_Real; V: var TopoDS_Vertex): Standard_Boolean {.
    importcpp: "IsVertex", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc IsVertex*(this: var TopOpeBRep_FaceEdgeIntersector; I: Standard_Integer;
              V: var TopoDS_Vertex): Standard_Boolean {.importcpp: "IsVertex",
    header: "TopOpeBRep_FaceEdgeIntersector.hxx".}
proc Index*(this: TopOpeBRep_FaceEdgeIntersector): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_FaceEdgeIntersector.hxx".}