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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepLib_EdgeError, ../TopoDS/TopoDS_Vertex,
  BRepLib_MakeShape, ../Standard/Standard_Real

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
  BRepLib_MakeEdge* {.importcpp: "BRepLib_MakeEdge",
                     header: "BRepLib_MakeEdge.hxx", bycopy.} = object of BRepLib_MakeShape


proc constructBRepLib_MakeEdge*(): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Lin): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Lin; p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Lin; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Lin; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Circ): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Circ; p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Circ; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Circ; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Elips): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Elips; p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Elips; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Elips; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Hypr): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Hypr; p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Hypr; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Hypr; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Parab): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Parab; p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Parab; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: gp_Parab; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom_Curve]): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom_Curve]; p1: Standard_Real;
                               p2: Standard_Real): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom_Curve]; V1: TopoDS_Vertex;
                               V2: TopoDS_Vertex): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt;
                               p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom_Curve]; V1: TopoDS_Vertex;
                               V2: TopoDS_Vertex; p1: Standard_Real;
                               p2: Standard_Real): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom2d_Curve]; S: handle[Geom_Surface]): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                               p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                               P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                               V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                               P1: gp_Pnt; P2: gp_Pnt; p1: Standard_Real;
                               p2: Standard_Real): BRepLib_MakeEdge {.constructor,
    importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc constructBRepLib_MakeEdge*(L: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                               V1: TopoDS_Vertex; V2: TopoDS_Vertex;
                               p1: Standard_Real; p2: Standard_Real): BRepLib_MakeEdge {.
    constructor, importcpp: "BRepLib_MakeEdge(@)", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom_Curve]) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom_Curve]; p1: Standard_Real;
          p2: Standard_Real) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom_Curve]; V1: TopoDS_Vertex;
          V2: TopoDS_Vertex) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt;
          p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom_Curve]; V1: TopoDS_Vertex;
          V2: TopoDS_Vertex; p1: Standard_Real; p2: Standard_Real) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]) {.importcpp: "Init",
                                   header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; p1: Standard_Real; p2: Standard_Real) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; V1: TopoDS_Vertex; V2: TopoDS_Vertex) {.
    importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; P1: gp_Pnt; P2: gp_Pnt; p1: Standard_Real;
          p2: Standard_Real) {.importcpp: "Init", header: "BRepLib_MakeEdge.hxx".}
proc Init*(this: var BRepLib_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; V1: TopoDS_Vertex; V2: TopoDS_Vertex;
          p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepLib_MakeEdge.hxx".}
proc Error*(this: BRepLib_MakeEdge): BRepLib_EdgeError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeEdge.hxx".}
proc Edge*(this: var BRepLib_MakeEdge): TopoDS_Edge {.importcpp: "Edge",
    header: "BRepLib_MakeEdge.hxx".}
converter `TopoDS_Edge`*(this: var BRepLib_MakeEdge): TopoDS_Edge {.
    importcpp: "BRepLib_MakeEdge::operator TopoDS_Edge",
    header: "BRepLib_MakeEdge.hxx".}
proc Vertex1*(this: BRepLib_MakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex1", header: "BRepLib_MakeEdge.hxx".}
proc Vertex2*(this: BRepLib_MakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex2", header: "BRepLib_MakeEdge.hxx".}