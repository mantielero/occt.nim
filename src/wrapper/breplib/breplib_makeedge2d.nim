import breplib_types
import ../topods/topods_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom2d/geom2d_types

##  Created on: 1995-01-04
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Pnt2dObj"
discard "forward decl of Lin2dObj"
discard "forward decl of Circ2dObj"
discard "forward decl of Elips2dObj"
discard "forward decl of Hypr2dObj"
discard "forward decl of Parab2dObj"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Edge"

proc newBRepLib_MakeEdge2d*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Lin2dObj): BRepLib_MakeEdge2d {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Lin2dObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Lin2dObj; P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Lin2dObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Circ2dObj): BRepLib_MakeEdge2d {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Circ2dObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Circ2dObj; P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Circ2dObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Elips2dObj): BRepLib_MakeEdge2d {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Elips2dObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Elips2dObj; P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Elips2dObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Hypr2dObj): BRepLib_MakeEdge2d {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Hypr2dObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Hypr2dObj; P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Hypr2dObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Parab2dObj): BRepLib_MakeEdge2d {.cdecl, constructor,
    importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Parab2dObj; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Parab2dObj; P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Parab2dObj; V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Handle[Geom2d_Curve]): BRepLib_MakeEdge2d {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Handle[Geom2d_Curve]; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Handle[Geom2d_Curve]; P1: Pnt2dObj; P2: Pnt2dObj): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Handle[Geom2d_Curve]; V1: TopoDS_Vertex;
                           V2: TopoDS_Vertex): BRepLib_MakeEdge2d {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Handle[Geom2d_Curve]; P1: Pnt2dObj; P2: Pnt2dObj;
                           p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.cdecl,
    constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc newBRepLib_MakeEdge2d*(L: Handle[Geom2d_Curve]; V1: TopoDS_Vertex;
                           V2: TopoDS_Vertex; p1: cfloat; p2: cfloat): BRepLib_MakeEdge2d {.
    cdecl, constructor, importcpp: "BRepLib_MakeEdge2d(@)".}
proc Init*(this: var BRepLib_MakeEdge2d; C: Handle[Geom2d_Curve]) {.cdecl,
    importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge2d; C: Handle[Geom2d_Curve]; p1: cfloat; p2: cfloat) {.
    cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge2d; C: Handle[Geom2d_Curve]; P1: Pnt2dObj;
          P2: Pnt2dObj) {.cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge2d; C: Handle[Geom2d_Curve]; V1: TopoDS_Vertex;
          V2: TopoDS_Vertex) {.cdecl, importcpp: "Init".}
proc Init*(this: var BRepLib_MakeEdge2d; C: Handle[Geom2d_Curve]; P1: Pnt2dObj;
          P2: Pnt2dObj; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepLib_MakeEdge2d; C: Handle[Geom2d_Curve]; V1: TopoDS_Vertex;
          V2: TopoDS_Vertex; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    .}
proc Error*(this: BRepLib_MakeEdge2d): BRepLib_EdgeError {.noSideEffect, cdecl,
    importcpp: "Error".}
proc Edge*(this: var BRepLib_MakeEdge2d): TopoDS_Edge {.cdecl, importcpp: "Edge",
    .}
converter `TopoDS_Edge`*(this: var BRepLib_MakeEdge2d): TopoDS_Edge {.cdecl,
    importcpp: "BRepLib_MakeEdge2d::operator TopoDS_Edge".}
proc Vertex1*(this: BRepLib_MakeEdge2d): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex1".}
proc Vertex2*(this: BRepLib_MakeEdge2d): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex2".}