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
  BRepLibMakeEdge* {.importcpp: "BRepLib_MakeEdge", header: "BRepLib_MakeEdge.hxx",
                    bycopy.} = object of BRepLibMakeShape


proc constructBRepLibMakeEdge*(): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(p1: Pnt; p2: Pnt): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Lin): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Lin; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Lin; p1: Pnt; p2: Pnt): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Lin; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Circ): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Circ; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Circ; p1: Pnt; p2: Pnt): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Circ; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Elips): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Elips; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Elips; p1: Pnt; p2: Pnt): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Elips; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Hypr): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Hypr; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Hypr; p1: Pnt; p2: Pnt): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Hypr; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Parab): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Parab; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Parab; p1: Pnt; p2: Pnt): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Parab; v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[GeomCurve]): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[GeomCurve]; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[GeomCurve]; v1: TopoDS_Vertex;
                              v2: TopoDS_Vertex): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt; p1: float;
                              p2: float): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[GeomCurve]; v1: TopoDS_Vertex;
                              v2: TopoDS_Vertex; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface]): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                              p1: float; p2: float): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                              p1: Pnt; p2: Pnt): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                              v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                              p1: Pnt; p2: Pnt; p1: float; p2: float): BRepLibMakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLibMakeEdge*(L: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                              v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: float;
                              p2: float): BRepLibMakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[GeomCurve]) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[GeomCurve]; p1: float; p2: float) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[GeomCurve]; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt; p1: float;
          p2: float) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[GeomCurve]; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex; p1: float; p2: float) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[Geom2dCurve]; s: Handle[GeomSurface]) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[Geom2dCurve]; s: Handle[GeomSurface];
          p1: float; p2: float) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[Geom2dCurve]; s: Handle[GeomSurface];
          p1: Pnt; p2: Pnt) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[Geom2dCurve]; s: Handle[GeomSurface];
          v1: TopoDS_Vertex; v2: TopoDS_Vertex) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[Geom2dCurve]; s: Handle[GeomSurface];
          p1: Pnt; p2: Pnt; p1: float; p2: float) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc init*(this: var BRepLibMakeEdge; c: Handle[Geom2dCurve]; s: Handle[GeomSurface];
          v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: float; p2: float) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc error*(this: BRepLibMakeEdge): BRepLibEdgeError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeEdge.hxx".}
proc edge*(this: var BRepLibMakeEdge): TopoDS_Edge {.importcpp: "Edge",
    header: "BRepLib_MakeEdge.hxx".}
converter `topoDS_Edge`*(this: var BRepLibMakeEdge): TopoDS_Edge {.
    importcpp: "BRepLib_MakeEdge::operator TopoDS_Edge",
    header: "BRepLib_MakeEdge.hxx".}
proc vertex1*(this: BRepLibMakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex1", header: "BRepLib_MakeEdge.hxx".}
proc vertex2*(this: BRepLibMakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex2", header: "BRepLib_MakeEdge.hxx".}
