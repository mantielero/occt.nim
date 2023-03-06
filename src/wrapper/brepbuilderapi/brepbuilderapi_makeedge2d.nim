import ../gp/gp_types
import brepbuilderapi_types
import ../topods/topods_types
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



proc edge2d*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Lin2d): Edge2dObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Lin2d; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Lin2d; p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Lin2d; v1: TopoDS_Vertex; v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Circ2d): Edge2dObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Circ2d; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Circ2d; p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Circ2d; v1: TopoDS_Vertex; v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Elips2d): Edge2dObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Elips2d; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Elips2d; p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Elips2d; v1: TopoDS_Vertex; v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Hypr2d): Edge2dObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Hypr2d; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Hypr2d; p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Hypr2d; v1: TopoDS_Vertex; v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Parab2d): Edge2dObj {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Parab2d; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Parab2d; p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: gp_Parab2d; v1: TopoDS_Vertex; v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}

proc edge2d*(L: HandleGeom2dCurve): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: HandleGeom2dCurve; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: HandleGeom2dCurve; p1: gp_Pnt2d; p2: gp_Pnt2d): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: HandleGeom2dCurve; v1: TopoDS_Vertex;
                                  v2: TopoDS_Vertex): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: HandleGeom2dCurve; p1: gp_Pnt2d; p2: gp_Pnt2d;
                                  p3: cfloat; p4: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge2d*(L: HandleGeom2dCurve; v1: TopoDS_Vertex;
                                  v2: TopoDS_Vertex; p1: cfloat; p2: cfloat): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}


proc init*(this: var Edge2dObj; c: HandleGeom2dCurve) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var Edge2dObj; c: HandleGeom2dCurve; p1: cfloat;
          p2: cfloat) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var Edge2dObj; c: HandleGeom2dCurve; p1: gp_Pnt2d;
          p2: gp_Pnt2d) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var Edge2dObj; c: HandleGeom2dCurve;
          v1: TopoDS_Vertex; v2: TopoDS_Vertex) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var Edge2dObj; c: HandleGeom2dCurve; p1: gp_Pnt2d;
          p2: gp_Pnt2d; p3: cfloat; p4: cfloat) {.cdecl, importcpp: "Init",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc init*(this: var Edge2dObj; c: HandleGeom2dCurve;
          v1: TopoDS_Vertex; v2: TopoDS_Vertex; p1: cfloat; p2: cfloat) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc isDone*(this: Edge2dObj): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc error*(this: Edge2dObj): BRepBuilderAPI_EdgeError {.
    noSideEffect, cdecl, importcpp: "Error", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc edge*(this: var Edge2dObj): TopoDS_Edge {.cdecl,
    importcpp: "Edge", header: "BRepBuilderAPI_MakeEdge2d.hxx".}

converter toTopoDS_Edge*(this: Edge2dObj): TopoDS_Edge {.cdecl,
    importcpp: "(@)",
    header: "BRepBuilderAPI_MakeEdge2d.hxx".}

proc vertex1*(this: Edge2dObj): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex1", header: "BRepBuilderAPI_MakeEdge2d.hxx".}
proc vertex2*(this: Edge2dObj): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex2", header: "BRepBuilderAPI_MakeEdge2d.hxx".}


