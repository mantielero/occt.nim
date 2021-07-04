##  Created on: 1998-06-09
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom_Curve"
type
  ShapeBuild_Edge* {.importcpp: "ShapeBuild_Edge", header: "ShapeBuild_Edge.hxx",
                    bycopy.} = object ## ! Copy edge and replace one or both its vertices to a given
                                   ## ! one(s). Vertex V1 replaces FORWARD vertex, and V2 - REVERSED,
                                   ## ! as they are found by TopoDS_Iterator.
                                   ## ! If V1 or V2 is NULL, the original vertex is taken


proc CopyReplaceVertices*(this: ShapeBuild_Edge; edge: TopoDS_Edge;
                         V1: TopoDS_Vertex; V2: TopoDS_Vertex): TopoDS_Edge {.
    noSideEffect, importcpp: "CopyReplaceVertices", header: "ShapeBuild_Edge.hxx".}
proc CopyRanges*(this: ShapeBuild_Edge; toedge: TopoDS_Edge; fromedge: TopoDS_Edge;
                alpha: Standard_Real = 0; beta: Standard_Real = 1) {.noSideEffect,
    importcpp: "CopyRanges", header: "ShapeBuild_Edge.hxx".}
proc SetRange3d*(this: ShapeBuild_Edge; edge: TopoDS_Edge; first: Standard_Real;
                last: Standard_Real) {.noSideEffect, importcpp: "SetRange3d",
                                     header: "ShapeBuild_Edge.hxx".}
proc CopyPCurves*(this: ShapeBuild_Edge; toedge: TopoDS_Edge; fromedge: TopoDS_Edge) {.
    noSideEffect, importcpp: "CopyPCurves", header: "ShapeBuild_Edge.hxx".}
proc Copy*(this: ShapeBuild_Edge; edge: TopoDS_Edge;
          sharepcurves: Standard_Boolean = Standard_True): TopoDS_Edge {.
    noSideEffect, importcpp: "Copy", header: "ShapeBuild_Edge.hxx".}
proc RemovePCurve*(this: ShapeBuild_Edge; edge: TopoDS_Edge; face: TopoDS_Face) {.
    noSideEffect, importcpp: "RemovePCurve", header: "ShapeBuild_Edge.hxx".}
proc RemovePCurve*(this: ShapeBuild_Edge; edge: TopoDS_Edge;
                  surf: handle[Geom_Surface]) {.noSideEffect,
    importcpp: "RemovePCurve", header: "ShapeBuild_Edge.hxx".}
proc RemovePCurve*(this: ShapeBuild_Edge; edge: TopoDS_Edge;
                  surf: handle[Geom_Surface]; loc: TopLoc_Location) {.noSideEffect,
    importcpp: "RemovePCurve", header: "ShapeBuild_Edge.hxx".}
proc ReplacePCurve*(this: ShapeBuild_Edge; edge: TopoDS_Edge;
                   pcurve: handle[Geom2d_Curve]; face: TopoDS_Face) {.noSideEffect,
    importcpp: "ReplacePCurve", header: "ShapeBuild_Edge.hxx".}
proc ReassignPCurve*(this: ShapeBuild_Edge; edge: TopoDS_Edge; old: TopoDS_Face;
                    sub: TopoDS_Face): Standard_Boolean {.noSideEffect,
    importcpp: "ReassignPCurve", header: "ShapeBuild_Edge.hxx".}
proc TransformPCurve*(this: ShapeBuild_Edge; pcurve: handle[Geom2d_Curve];
                     trans: gp_Trsf2d; uFact: Standard_Real;
                     aFirst: var Standard_Real; aLast: var Standard_Real): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "TransformPCurve",
                   header: "ShapeBuild_Edge.hxx".}
proc RemoveCurve3d*(this: ShapeBuild_Edge; edge: TopoDS_Edge) {.noSideEffect,
    importcpp: "RemoveCurve3d", header: "ShapeBuild_Edge.hxx".}
proc BuildCurve3d*(this: ShapeBuild_Edge; edge: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "BuildCurve3d", header: "ShapeBuild_Edge.hxx".}
proc MakeEdge*(this: ShapeBuild_Edge; edge: var TopoDS_Edge;
              curve: handle[Geom_Curve]; L: TopLoc_Location) {.noSideEffect,
    importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
proc MakeEdge*(this: ShapeBuild_Edge; edge: var TopoDS_Edge;
              curve: handle[Geom_Curve]; L: TopLoc_Location; p1: Standard_Real;
              p2: Standard_Real) {.noSideEffect, importcpp: "MakeEdge",
                                 header: "ShapeBuild_Edge.hxx".}
proc MakeEdge*(this: ShapeBuild_Edge; edge: var TopoDS_Edge;
              pcurve: handle[Geom2d_Curve]; face: TopoDS_Face) {.noSideEffect,
    importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
proc MakeEdge*(this: ShapeBuild_Edge; edge: var TopoDS_Edge;
              pcurve: handle[Geom2d_Curve]; face: TopoDS_Face; p1: Standard_Real;
              p2: Standard_Real) {.noSideEffect, importcpp: "MakeEdge",
                                 header: "ShapeBuild_Edge.hxx".}
proc MakeEdge*(this: ShapeBuild_Edge; edge: var TopoDS_Edge;
              pcurve: handle[Geom2d_Curve]; S: handle[Geom_Surface];
              L: TopLoc_Location) {.noSideEffect, importcpp: "MakeEdge",
                                  header: "ShapeBuild_Edge.hxx".}
proc MakeEdge*(this: ShapeBuild_Edge; edge: var TopoDS_Edge;
              pcurve: handle[Geom2d_Curve]; S: handle[Geom_Surface];
              L: TopLoc_Location; p1: Standard_Real; p2: Standard_Real) {.
    noSideEffect, importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}