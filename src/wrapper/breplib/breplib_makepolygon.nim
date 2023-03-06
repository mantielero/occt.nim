import breplib_types
import ../topods/topods_types
import ../gp/gp_types
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

discard "forward decl of PntObj"
discard "forward decl of TopoDS_Wire"


proc newBRepLib_MakePolygon*(): BRepLib_MakePolygon {.cdecl, constructor,
    importcpp: "BRepLib_MakePolygon(@)".}
proc newBRepLib_MakePolygon*(P1: PntObj; P2: PntObj): BRepLib_MakePolygon {.cdecl,
    constructor, importcpp: "BRepLib_MakePolygon(@)".}
proc newBRepLib_MakePolygon*(P1: PntObj; P2: PntObj; P3: PntObj; Close: bool = false): BRepLib_MakePolygon {.
    cdecl, constructor, importcpp: "BRepLib_MakePolygon(@)".}
proc newBRepLib_MakePolygon*(P1: PntObj; P2: PntObj; P3: PntObj; P4: PntObj;
                            Close: bool = false): BRepLib_MakePolygon {.cdecl,
    constructor, importcpp: "BRepLib_MakePolygon(@)".}
proc newBRepLib_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakePolygon {.
    cdecl, constructor, importcpp: "BRepLib_MakePolygon(@)".}
proc newBRepLib_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex; V3: TopoDS_Vertex;
                            Close: bool = false): BRepLib_MakePolygon {.cdecl,
    constructor, importcpp: "BRepLib_MakePolygon(@)".}
proc newBRepLib_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex; V3: TopoDS_Vertex;
                            V4: TopoDS_Vertex; Close: bool = false): BRepLib_MakePolygon {.
    cdecl, constructor, importcpp: "BRepLib_MakePolygon(@)".}
proc Add*(this: var BRepLib_MakePolygon; P: PntObj) {.cdecl, importcpp: "Add",
    .}
proc Add*(this: var BRepLib_MakePolygon; V: TopoDS_Vertex) {.cdecl, importcpp: "Add",
    .}
proc Added*(this: BRepLib_MakePolygon): bool {.noSideEffect, cdecl,
    importcpp: "Added".}
proc Close*(this: var BRepLib_MakePolygon) {.cdecl, importcpp: "Close",
    .}
proc FirstVertex*(this: BRepLib_MakePolygon): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FirstVertex".}
proc LastVertex*(this: BRepLib_MakePolygon): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "LastVertex".}
proc Edge*(this: BRepLib_MakePolygon): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge".}
converter `TopoDS_Edge`*(this: BRepLib_MakePolygon): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "BRepLib_MakePolygon::operator TopoDS_Edge",
    .}
proc Wire*(this: var BRepLib_MakePolygon): TopoDS_Wire {.cdecl, importcpp: "Wire",
    .}
converter `TopoDS_Wire`*(this: var BRepLib_MakePolygon): TopoDS_Wire {.cdecl,
    importcpp: "BRepLib_MakePolygon::operator TopoDS_Wire".}