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


proc `new`*(this: var BRepBuilderAPI_MakeEdge; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator new",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeEdge; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator delete",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_MakeEdge; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator new[]",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_MakeEdge; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator delete[]",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc `new`*(this: var BRepBuilderAPI_MakeEdge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator new",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeEdge; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator delete",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(): BRepBuilderAPI_MakeEdge {.constructor,
    importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Lin): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Lin; p1: StandardReal; p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Lin; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Lin; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Circ): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Circ; p1: StandardReal; p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Circ; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Circ; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Elips): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Elips; p1: StandardReal; p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Elips; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Elips; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Hypr): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Hypr; p1: StandardReal; p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Hypr; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Hypr; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Parab): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Parab; p1: StandardReal; p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Parab; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Parab; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}

proc makeEdge*(L: Handle[GeomCurve]): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[GeomTrimmedCurve]): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}

proc makeEdge*(L: Handle[GeomCurve]; p1: StandardReal;
                                      p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[GeomCurve]; v1: TopoDS_Vertex;
                                      v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt;
                                      p3: StandardReal; p4: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[GeomCurve]; v1: TopoDS_Vertex;
                                      v2: TopoDS_Vertex; p1: StandardReal;
                                      p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[Geom2dCurve];
                                      s: Handle[GeomSurface]): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[Geom2dCurve];
                                      s: Handle[GeomSurface]; p1: StandardReal;
                                      p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[Geom2dCurve];
                                      s: Handle[GeomSurface]; p1: Pnt; p2: Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[Geom2dCurve];
                                      s: Handle[GeomSurface]; v1: TopoDS_Vertex;
                                      v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[Geom2dCurve];
                                      s: Handle[GeomSurface]; p1: Pnt; p2: Pnt;
                                      p3: StandardReal; p4: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc makeEdge*(L: Handle[Geom2dCurve];
                                      s: Handle[GeomSurface]; v1: TopoDS_Vertex;
                                      v2: TopoDS_Vertex; p1: StandardReal;
                                      p2: StandardReal): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: StandardReal;
          p2: StandardReal) {.importcpp: "Init",
                            header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex) {.importcpp: "Init",
                             header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt;
          p3: StandardReal; p4: StandardReal) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex; p1: StandardReal; p2: StandardReal) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]) {.importcpp: "Init",
                                  header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; p1: StandardReal; p2: StandardReal) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; p1: Pnt; p2: Pnt) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; v1: TopoDS_Vertex; v2: TopoDS_Vertex) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; p1: Pnt; p2: Pnt; p3: StandardReal; p4: StandardReal) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[Geom2dCurve];
          s: Handle[GeomSurface]; v1: TopoDS_Vertex; v2: TopoDS_Vertex;
          p1: StandardReal; p2: StandardReal) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeEdge): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc error*(this: BRepBuilderAPI_MakeEdge): BRepBuilderAPI_EdgeError {.noSideEffect,
    importcpp: "Error", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge {.importcpp: "Edge",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
converter `toTopoDS_Edge`*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator TopoDS_Edge",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc vertex1*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc vertex2*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge.hxx".}