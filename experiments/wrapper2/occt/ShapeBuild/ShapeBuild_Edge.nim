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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom_Curve"
type
  ShapeBuildEdge* {.importcpp: "ShapeBuild_Edge", header: "ShapeBuild_Edge.hxx",
                   bycopy.} = object ## ! Copy edge and replace one or both its vertices to a given
                                  ## ! one(s). Vertex V1 replaces FORWARD vertex, and V2 - REVERSED,
                                  ## ! as they are found by TopoDS_Iterator.
                                  ## ! If V1 or V2 is NULL, the original vertex is taken


proc copyReplaceVertices*(this: ShapeBuildEdge; edge: TopoDS_Edge; v1: TopoDS_Vertex;
                         v2: TopoDS_Vertex): TopoDS_Edge {.noSideEffect,
    importcpp: "CopyReplaceVertices", header: "ShapeBuild_Edge.hxx".}
proc copyRanges*(this: ShapeBuildEdge; toedge: TopoDS_Edge; fromedge: TopoDS_Edge;
                alpha: float = 0; beta: float = 1) {.noSideEffect,
    importcpp: "CopyRanges", header: "ShapeBuild_Edge.hxx".}
proc setRange3d*(this: ShapeBuildEdge; edge: TopoDS_Edge; first: float; last: float) {.
    noSideEffect, importcpp: "SetRange3d", header: "ShapeBuild_Edge.hxx".}
proc copyPCurves*(this: ShapeBuildEdge; toedge: TopoDS_Edge; fromedge: TopoDS_Edge) {.
    noSideEffect, importcpp: "CopyPCurves", header: "ShapeBuild_Edge.hxx".}
proc copy*(this: ShapeBuildEdge; edge: TopoDS_Edge; sharepcurves: bool = true): TopoDS_Edge {.
    noSideEffect, importcpp: "Copy", header: "ShapeBuild_Edge.hxx".}
proc removePCurve*(this: ShapeBuildEdge; edge: TopoDS_Edge; face: TopoDS_Face) {.
    noSideEffect, importcpp: "RemovePCurve", header: "ShapeBuild_Edge.hxx".}
proc removePCurve*(this: ShapeBuildEdge; edge: TopoDS_Edge; surf: Handle[GeomSurface]) {.
    noSideEffect, importcpp: "RemovePCurve", header: "ShapeBuild_Edge.hxx".}
proc removePCurve*(this: ShapeBuildEdge; edge: TopoDS_Edge;
                  surf: Handle[GeomSurface]; loc: TopLocLocation) {.noSideEffect,
    importcpp: "RemovePCurve", header: "ShapeBuild_Edge.hxx".}
proc replacePCurve*(this: ShapeBuildEdge; edge: TopoDS_Edge;
                   pcurve: Handle[Geom2dCurve]; face: TopoDS_Face) {.noSideEffect,
    importcpp: "ReplacePCurve", header: "ShapeBuild_Edge.hxx".}
proc reassignPCurve*(this: ShapeBuildEdge; edge: TopoDS_Edge; old: TopoDS_Face;
                    sub: TopoDS_Face): bool {.noSideEffect,
    importcpp: "ReassignPCurve", header: "ShapeBuild_Edge.hxx".}
proc transformPCurve*(this: ShapeBuildEdge; pcurve: Handle[Geom2dCurve];
                     trans: Trsf2d; uFact: float; aFirst: var float; aLast: var float): Handle[
    Geom2dCurve] {.noSideEffect, importcpp: "TransformPCurve",
                  header: "ShapeBuild_Edge.hxx".}
proc removeCurve3d*(this: ShapeBuildEdge; edge: TopoDS_Edge) {.noSideEffect,
    importcpp: "RemoveCurve3d", header: "ShapeBuild_Edge.hxx".}
proc buildCurve3d*(this: ShapeBuildEdge; edge: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "BuildCurve3d", header: "ShapeBuild_Edge.hxx".}
proc makeEdge*(this: ShapeBuildEdge; edge: var TopoDS_Edge; curve: Handle[GeomCurve];
              L: TopLocLocation) {.noSideEffect, importcpp: "MakeEdge",
                                 header: "ShapeBuild_Edge.hxx".}
proc makeEdge*(this: ShapeBuildEdge; edge: var TopoDS_Edge; curve: Handle[GeomCurve];
              L: TopLocLocation; p1: float; p2: float) {.noSideEffect,
    importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
proc makeEdge*(this: ShapeBuildEdge; edge: var TopoDS_Edge;
              pcurve: Handle[Geom2dCurve]; face: TopoDS_Face) {.noSideEffect,
    importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
proc makeEdge*(this: ShapeBuildEdge; edge: var TopoDS_Edge;
              pcurve: Handle[Geom2dCurve]; face: TopoDS_Face; p1: float; p2: float) {.
    noSideEffect, importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
proc makeEdge*(this: ShapeBuildEdge; edge: var TopoDS_Edge;
              pcurve: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation) {.
    noSideEffect, importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
proc makeEdge*(this: ShapeBuildEdge; edge: var TopoDS_Edge;
              pcurve: Handle[Geom2dCurve]; s: Handle[GeomSurface];
              L: TopLocLocation; p1: float; p2: float) {.noSideEffect,
    importcpp: "MakeEdge", header: "ShapeBuild_Edge.hxx".}
