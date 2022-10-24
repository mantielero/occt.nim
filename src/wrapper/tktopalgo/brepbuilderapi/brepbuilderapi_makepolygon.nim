import brepbuilderapi_types

##  Created on: 1993-07-29
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
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"


proc polygon*(): BRepBuilderAPI_MakePolygon {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc polygon*(p1: PntObj; p2: PntObj): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc polygon*(p1: PntObj; p2: PntObj; p3: PntObj; close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc polygon*(p1: PntObj; p2: PntObj; p3: PntObj; p4: PntObj;
                                   close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc polygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc polygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex;
                                   v3: TopoDS_Vertex; close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc polygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex;
                                   v3: TopoDS_Vertex; v4: TopoDS_Vertex;
                                   close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc add*(this: var BRepBuilderAPI_MakePolygon; p: PntObj) {.cdecl, importcpp: "Add",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc add*(this: var BRepBuilderAPI_MakePolygon; v: TopoDS_Vertex) {.cdecl,
    importcpp: "Add", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc added*(this: BRepBuilderAPI_MakePolygon): bool {.noSideEffect, cdecl,
    importcpp: "Added", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc close*(this: var BRepBuilderAPI_MakePolygon) {.cdecl, importcpp: "Close",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc firstVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex {.noSideEffect,
    cdecl, importcpp: "FirstVertex", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc lastVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex {.noSideEffect,
    cdecl, importcpp: "LastVertex", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc isDone*(this: BRepBuilderAPI_MakePolygon): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc edge*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", header: "BRepBuilderAPI_MakePolygon.hxx".}
converter `topoDS_Edge`*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge {.
    noSideEffect, cdecl,
    importcpp: "BRepBuilderAPI_MakePolygon::operator TopoDS_Edge",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc wire*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire {.cdecl,
    importcpp: "Wire", header: "BRepBuilderAPI_MakePolygon.hxx".}
converter `topoDS_Wire`*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire {.cdecl,
    importcpp: "BRepBuilderAPI_MakePolygon::operator TopoDS_Wire",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
