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
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakeEdge,
  BRepBuilderAPI_MakeShape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, BRepBuilderAPI_EdgeError

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


proc constructBRepBuilderAPI_MakeEdge*(): BRepBuilderAPI_MakeEdge {.constructor,
    importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Lin): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Lin; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Lin; P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Lin; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Circ): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Circ; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Circ; P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Circ; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Elips): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Elips; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Elips; P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Elips; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Hypr): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Hypr; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Hypr; P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Hypr; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Parab): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Parab; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Parab; P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: gp_Parab; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom_Curve]): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom_Curve]; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom_Curve]; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom_Curve]; P1: gp_Pnt; P2: gp_Pnt;
                                      p1: Standard_Real; p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom_Curve]; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom2d_Curve];
                                      S: handle[Geom_Surface]): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom2d_Curve];
                                      S: handle[Geom_Surface]; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom2d_Curve];
                                      S: handle[Geom_Surface]; P1: gp_Pnt;
                                      P2: gp_Pnt): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom2d_Curve];
                                      S: handle[Geom_Surface]; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom2d_Curve];
                                      S: handle[Geom_Surface]; P1: gp_Pnt;
                                      P2: gp_Pnt; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc constructBRepBuilderAPI_MakeEdge*(L: handle[Geom2d_Curve];
                                      S: handle[Geom_Surface]; V1: TopoDS_Vertex;
                                      V2: TopoDS_Vertex; p1: Standard_Real;
                                      p2: Standard_Real): BRepBuilderAPI_MakeEdge {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom_Curve]) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom_Curve];
          p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom_Curve]; P1: gp_Pnt;
          P2: gp_Pnt) {.importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom_Curve];
          V1: TopoDS_Vertex; V2: TopoDS_Vertex) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom_Curve]; P1: gp_Pnt;
          P2: gp_Pnt; p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom_Curve];
          V1: TopoDS_Vertex; V2: TopoDS_Vertex; p1: Standard_Real; p2: Standard_Real) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]) {.importcpp: "Init",
                                   header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; p1: Standard_Real; p2: Standard_Real) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; V1: TopoDS_Vertex; V2: TopoDS_Vertex) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; P1: gp_Pnt; P2: gp_Pnt; p1: Standard_Real;
          p2: Standard_Real) {.importcpp: "Init",
                             header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge; C: handle[Geom2d_Curve];
          S: handle[Geom_Surface]; V1: TopoDS_Vertex; V2: TopoDS_Vertex;
          p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc IsDone*(this: BRepBuilderAPI_MakeEdge): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Error*(this: BRepBuilderAPI_MakeEdge): BRepBuilderAPI_EdgeError {.noSideEffect,
    importcpp: "Error", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Edge*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge {.importcpp: "Edge",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
converter `TopoDS_Edge`*(this: var BRepBuilderAPI_MakeEdge): TopoDS_Edge {.
    importcpp: "BRepBuilderAPI_MakeEdge::operator TopoDS_Edge",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Vertex1*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc Vertex2*(this: BRepBuilderAPI_MakeEdge): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge.hxx".}