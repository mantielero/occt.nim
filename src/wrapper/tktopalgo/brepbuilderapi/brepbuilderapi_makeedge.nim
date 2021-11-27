##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"
type
  BRepBuilderAPI_MakeEdge* {.importcpp: "BRepBuilderAPI_MakeEdge",
                            header: "BRepBuilderAPI_MakeEdge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc newBRepBuilderAPI_MakeEdge*(): BRepBuilderAPI_MakeEdge {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Lin): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Lin; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Lin; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Lin; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Circ): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Circ; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Circ; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Circ; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Elips): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Elips; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Elips; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Elips; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Hypr): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Hypr; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Hypr; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Hypr; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Parab): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Parab; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Parab; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Parab; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; v1: TopoDS_Vertex;
                                v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt; p3: cfloat;
                                p4: cfloat): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; v1: TopoDS_Vertex;
                                v2: TopoDS_Vertex; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface]): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                p1: Pnt; p2: Pnt; p3: cfloat; p4: cfloat): BRepBuilderAPI_MakeEdge {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc newBRepBuilderAPI_MakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: cfloat;
                                p2: cfloat): BRepBuilderAPI_MakeEdge {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: cfloat;
          p2: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt) {.
    cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt;
          p3: cfloat; p4: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; v1: TopoDS_Vertex; v2: TopoDS_Vertex) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; p1: Pnt; p2: Pnt; p3: cfloat; p4: cfloat) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: cfloat;
          p2: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeEdge): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc error*(this: BRepBuilderAPI_MakeEdge): BRepBuilderAPI_EdgeError {.noSideEffect,
    cdecl, importcpp: "Error", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge {.cdecl, importcpp: "Edge",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
converter `topoDS_Edge`*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge {.cdecl,
    importcpp: "BRepBuilderAPI_MakeEdge::operator TopoDS_Edge", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc vertex1*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc vertex2*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge.hxx".}