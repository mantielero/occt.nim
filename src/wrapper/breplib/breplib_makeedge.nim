import breplib_types
import ../topods/topods_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types
import ../geom2d/geom2d_types

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

discard "forward decl of gp_Pnt"
discard "forward decl of LinObj"
discard "forward decl of CircObj"
discard "forward decl of ElipsObj"
discard "forward decl of HyprObj"
discard "forward decl of ParabObj"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"

proc newBRepLib_MakeEdge*(): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: LinObj): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: LinObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: LinObj; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: LinObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: CircObj): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: CircObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: CircObj; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: CircObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ElipsObj): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ElipsObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ElipsObj; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ElipsObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: HyprObj): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: HyprObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: HyprObj; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: HyprObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ParabObj): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ParabObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ParabObj; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: ParabObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom_Curve]): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom_Curve]; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom_Curve]; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt; p1: cfloat;
                         p2: cfloat): BRepLib_MakeEdge {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom_Curve]; V1: TopoDS_Vertex;
                         V2: TopoDS_Vertex; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom2d_Curve]; S: Handle[Geom_Surface]): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom2d_Curve]; S: Handle[Geom_Surface];
                         p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom2d_Curve]; S: Handle[Geom_Surface];
                         P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom2d_Curve]; S: Handle[Geom_Surface];
                         V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom2d_Curve]; S: Handle[Geom_Surface];
                         P1: gp_Pnt; P2: gp_Pnt; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc newBRepLib_MakeEdge*(L: Handle[Geom2d_Curve]; S: Handle[Geom_Surface];
                         V1: TopoDS_Vertex; V2: TopoDS_Vertex; p1: cfloat; p2: cfloat): BRepLib_MakeEdge {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge(@)".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom_Curve]) {.cdecl,
    importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom_Curve]; p1: cfloat; p2: cfloat) {.
    cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt) {.
    cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom_Curve]; V1: TopoDS_Vertex;
          V2: TopoDS_Vertex) {.cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt;
          p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom_Curve]; V1: TopoDS_Vertex;
          V2: TopoDS_Vertex; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom2d_Curve];
          S: Handle[Geom_Surface]) {.cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom2d_Curve];
          S: Handle[Geom_Surface]; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom2d_Curve];
          S: Handle[Geom_Surface]; P1: gp_Pnt; P2: gp_Pnt) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom2d_Curve];
          S: Handle[Geom_Surface]; V1: TopoDS_Vertex; V2: TopoDS_Vertex) {.cdecl,
    importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom2d_Curve];
          S: Handle[Geom_Surface]; P1: gp_Pnt; P2: gp_Pnt; p1: cfloat; p2: cfloat) {.
    cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge; C: Handle[Geom2d_Curve];
          S: Handle[Geom_Surface]; V1: TopoDS_Vertex; V2: TopoDS_Vertex; p1: cfloat;
          p2: cfloat) {.cdecl, importcpp: "Init".}
proc Error*(this: BRepLib_MakeEdge): BRepLib_EdgeError {.noSideEffect, cdecl,
    importcpp: "Error".}
proc Edge*(this: var BRepLib_MakeEdge): TopoDS_Edge {.cdecl, importcpp: "Edge",
    .}
converter `TopoDS_Edge`*(this: var BRepLib_MakeEdge): TopoDS_Edge {.cdecl,
    importcpp: "BRepLib_MakeEdge::operator TopoDS_Edge".}
proc Vertex1*(this: BRepLib_MakeEdge): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex1".}
proc Vertex2*(this: BRepLib_MakeEdge): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex2".}