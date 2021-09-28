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


proc constructBRepBuilderAPI_MakeEdge2d*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Lin2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Lin2d; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Lin2d; p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Lin2d; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Circ2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Circ2d; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Circ2d; p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Circ2d; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Elips2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Elips2d; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Elips2d; p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Elips2d; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Hypr2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Hypr2d; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Hypr2d; p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Hypr2d; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Parab2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Parab2d; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Parab2d; p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Parab2d; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; p1: cfloat;
                                        p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; p1: Pnt2d; p2: Pnt2d): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; p1: Pnt2d;
                                        p2: Pnt2d; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc constructBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; v1: TopoDS_Vertex;
                                        v2: TopoDS_Vertex; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve]) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve]; p1: cfloat;
          p2: cfloat) {.importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve]; p1: Pnt2d;
          p2: Pnt2d) {.importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve];
          v1: TopoDS_Vertex; v2: TopoDS_Vertex) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve]; p1: Pnt2d;
          p2: Pnt2d; p1: cfloat; p2: cfloat) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve];
          v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: cfloat; p2: cfloat) {.
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeEdge2d): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc error*(this: BRepBuilderAPI_MakeEdge2d): BRepBuilderAPI_EdgeError {.
    noSideEffect, importcpp: "Error", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge*(this: var BRepBuilderAPI_MakeEdge2d): TopoDS_Edge {.importcpp: "Edge",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
converter `topoDS_Edge`*(this: var BRepBuilderAPI_MakeEdge2d): TopoDS_Edge {.
    importcpp: "BRepBuilderAPI_MakeEdge2d::operator TopoDS_Edge",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc vertex1*(this: BRepBuilderAPI_MakeEdge2d): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc vertex2*(this: BRepBuilderAPI_MakeEdge2d): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge2d.hxx".}

























