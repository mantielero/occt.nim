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
type
  BRepLibMakePolygon* {.importcpp: "BRepLib_MakePolygon",
                       header: "BRepLib_MakePolygon.hxx", bycopy.} = object of BRepLibMakeShape ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## MakePolygon.


proc constructBRepLibMakePolygon*(): BRepLibMakePolygon {.constructor,
    importcpp: "BRepLib_MakePolygon(@)", header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLibMakePolygon*(p1: Pnt; p2: Pnt): BRepLibMakePolygon {.constructor,
    importcpp: "BRepLib_MakePolygon(@)", header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLibMakePolygon*(p1: Pnt; p2: Pnt; p3: Pnt; close: bool = false): BRepLibMakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLibMakePolygon*(p1: Pnt; p2: Pnt; p3: Pnt; p4: Pnt; close: bool = false): BRepLibMakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLibMakePolygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepLibMakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLibMakePolygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex;
                                 v3: TopoDS_Vertex; close: bool = false): BRepLibMakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLibMakePolygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex;
                                 v3: TopoDS_Vertex; v4: TopoDS_Vertex;
                                 close: bool = false): BRepLibMakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc add*(this: var BRepLibMakePolygon; p: Pnt) {.importcpp: "Add",
    header: "BRepLib_MakePolygon.hxx".}
proc add*(this: var BRepLibMakePolygon; v: TopoDS_Vertex) {.importcpp: "Add",
    header: "BRepLib_MakePolygon.hxx".}
proc added*(this: BRepLibMakePolygon): bool {.noSideEffect, importcpp: "Added",
    header: "BRepLib_MakePolygon.hxx".}
proc close*(this: var BRepLibMakePolygon) {.importcpp: "Close",
                                        header: "BRepLib_MakePolygon.hxx".}
proc firstVertex*(this: BRepLibMakePolygon): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "BRepLib_MakePolygon.hxx".}
proc lastVertex*(this: BRepLibMakePolygon): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "BRepLib_MakePolygon.hxx".}
proc edge*(this: BRepLibMakePolygon): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepLib_MakePolygon.hxx".}
converter `topoDS_Edge`*(this: BRepLibMakePolygon): TopoDS_Edge {.noSideEffect,
    importcpp: "BRepLib_MakePolygon::operator TopoDS_Edge",
    header: "BRepLib_MakePolygon.hxx".}
proc wire*(this: var BRepLibMakePolygon): TopoDS_Wire {.importcpp: "Wire",
    header: "BRepLib_MakePolygon.hxx".}
converter `topoDS_Wire`*(this: var BRepLibMakePolygon): TopoDS_Wire {.
    importcpp: "BRepLib_MakePolygon::operator TopoDS_Wire",
    header: "BRepLib_MakePolygon.hxx".}

























