import ../gp/gp_types
import brepbuilderapi_types
import ../standard/standard_types
import ../topods/topods_types
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



proc edge*(): EdgeObj {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Lin): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Lin; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Lin; p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Lin; v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Circ): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Circ; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Circ; p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Circ; v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Elips): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Elips; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Elips; p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Elips; v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Hypr): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Hypr; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Hypr; p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Hypr; v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Parab): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Parab; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Parab; p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: gp_Parab; v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeomCurve): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeomCurve; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeomCurve; p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeomCurve; v1: TopoDS_Vertex;
                                v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeomCurve; p1: gp_Pnt; p2: gp_Pnt; p3: cfloat;
                                p4: cfloat): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeomCurve; v1: TopoDS_Vertex;
                                v2: TopoDS_Vertex; p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeom2dCurve; s: Handle[GeomSurface]): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeom2dCurve; s: Handle[GeomSurface];
                                p1: cfloat; p2: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeom2dCurve; s: Handle[GeomSurface];
                                p1: gp_Pnt; p2: gp_Pnt): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeom2dCurve; s: Handle[GeomSurface];
                                v1: TopoDS_Vertex; v2: TopoDS_Vertex): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeom2dCurve; s: Handle[GeomSurface];
                                p1: gp_Pnt; p2: gp_Pnt; p3: cfloat; p4: cfloat): EdgeObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(L: HandleGeom2dCurve; s: Handle[GeomSurface];
                                v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: cfloat;
                                p2: cfloat): EdgeObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
    
proc init*(this: var EdgeObj; c: HandleGeomCurve) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeomCurve; p1: cfloat;
          p2: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeomCurve; p1: gp_Pnt; p2: gp_Pnt) {.
    cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeomCurve; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeomCurve; p1: gp_Pnt; p2: gp_Pnt;
          p3: cfloat; p4: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeomCurve; v1: TopoDS_Vertex;
          v2: TopoDS_Vertex; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeom2dCurve;
          s: Handle[GeomSurface]) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeom2dCurve;
          s: Handle[GeomSurface]; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeom2dCurve;
          s: Handle[GeomSurface]; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeom2dCurve;
          s: Handle[GeomSurface]; v1: TopoDS_Vertex; v2: TopoDS_Vertex) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeom2dCurve;
          s: Handle[GeomSurface]; p1: gp_Pnt; p2: gp_Pnt; p3: cfloat; p4: cfloat) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc init*(this: var EdgeObj; c: HandleGeom2dCurve;
          s: Handle[GeomSurface]; v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: cfloat;
          p2: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc isDone*(this: EdgeObj): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc error*(this: EdgeObj): BRepBuilderAPI_EdgeError {.noSideEffect,
    cdecl, importcpp: "Error", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc edge*(this: var EdgeObj): TopoDS_Edge {.cdecl, importcpp: "Edge",
    header: "BRepBuilderAPI_MakeEdge.hxx".}
converter toTopoDS_Edge*(this: var EdgeObj): TopoDS_Edge {.cdecl,
    importcpp: "(@)", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc vertex1*(this: EdgeObj): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge.hxx".}
proc vertex2*(this: EdgeObj): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge.hxx".}


