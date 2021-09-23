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
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakeEdge2d,
  BRepBuilderAPI_MakeShape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, BRepBuilderAPI_EdgeError

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Edge"
type
  BRepBuilderAPI_MakeEdge2d* {.importcpp: "BRepBuilderAPI_MakeEdge2d",
                              header: "BRepBuilderAPI_MakeEdge2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc constructBRepBuilderAPI_MakeEdge2d*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(P1: gp_Pnt2d; P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d; p1: Standard_Real;
                                        p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d; P1: gp_Pnt2d; P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Lin2d; V1: TopoDS_Vertex;
                                        V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d; p1: Standard_Real;
                                        p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d; P1: gp_Pnt2d; P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Circ2d; V1: TopoDS_Vertex;
                                        V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d; p1: Standard_Real;
                                        p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d; P1: gp_Pnt2d; P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Elips2d; V1: TopoDS_Vertex;
                                        V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d; p1: Standard_Real;
                                        p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d; P1: gp_Pnt2d; P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Hypr2d; V1: TopoDS_Vertex;
                                        V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d; p1: Standard_Real;
                                        p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d; P1: gp_Pnt2d; P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: gp_Parab2d; V1: TopoDS_Vertex;
                                        V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve]): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve];
                                        p1: Standard_Real; p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve]; P1: gp_Pnt2d;
                                        P2: gp_Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve];
                                        V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve]; P1: gp_Pnt2d;
                                        P2: gp_Pnt2d; p1: Standard_Real;
                                        p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: handle[Geom2d_Curve];
                                        V1: TopoDS_Vertex; V2: TopoDS_Vertex;
                                        p1: Standard_Real; p2: Standard_Real): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge2d; C: handle[Geom2d_Curve]) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge2d; C: handle[Geom2d_Curve];
          p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge2d; C: handle[Geom2d_Curve]; P1: gp_Pnt2d;
          P2: gp_Pnt2d) {.importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge2d; C: handle[Geom2d_Curve];
          V1: TopoDS_Vertex; V2: TopoDS_Vertex) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge2d; C: handle[Geom2d_Curve]; P1: gp_Pnt2d;
          P2: gp_Pnt2d; p1: Standard_Real; p2: Standard_Real) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Init*(this: var BRepBuilderAPI_MakeEdge2d; C: handle[Geom2d_Curve];
          V1: TopoDS_Vertex; V2: TopoDS_Vertex; p1: Standard_Real; p2: Standard_Real) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc IsDone*(this: BRepBuilderAPI_MakeEdge2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Error*(this: BRepBuilderAPI_MakeEdge2d): BRepBuilderAPI_EdgeError {.
    noSideEffect, importcpp: "Error", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Edge*(this: var BRepBuilderAPI_MakeEdge2d): TopoDS_Edge {.importcpp: "Edge",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
converter `TopoDS_Edge`*(this: var BRepBuilderAPI_MakeEdge2d): TopoDS_Edge {.
    importcpp: "BRepBuilderAPI_MakeEdge2d::operator TopoDS_Edge",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Vertex1*(this: BRepBuilderAPI_MakeEdge2d): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc Vertex2*(this: BRepBuilderAPI_MakeEdge2d): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge2d.hxx".}