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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Vertex, ../TopoDS/TopoDS_Edge,
  BRepLib_MakeShape, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
type
  BRepLib_MakePolygon* {.importcpp: "BRepLib_MakePolygon",
                        header: "BRepLib_MakePolygon.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## MakePolygon.


proc constructBRepLib_MakePolygon*(): BRepLib_MakePolygon {.constructor,
    importcpp: "BRepLib_MakePolygon(@)", header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLib_MakePolygon*(P1: gp_Pnt; P2: gp_Pnt): BRepLib_MakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLib_MakePolygon*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt;
                                  Close: Standard_Boolean = Standard_False): BRepLib_MakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLib_MakePolygon*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt; P4: gp_Pnt;
                                  Close: Standard_Boolean = Standard_False): BRepLib_MakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLib_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepLib_MakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLib_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex;
                                  V3: TopoDS_Vertex;
                                  Close: Standard_Boolean = Standard_False): BRepLib_MakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc constructBRepLib_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex;
                                  V3: TopoDS_Vertex; V4: TopoDS_Vertex;
                                  Close: Standard_Boolean = Standard_False): BRepLib_MakePolygon {.
    constructor, importcpp: "BRepLib_MakePolygon(@)",
    header: "BRepLib_MakePolygon.hxx".}
proc Add*(this: var BRepLib_MakePolygon; P: gp_Pnt) {.importcpp: "Add",
    header: "BRepLib_MakePolygon.hxx".}
proc Add*(this: var BRepLib_MakePolygon; V: TopoDS_Vertex) {.importcpp: "Add",
    header: "BRepLib_MakePolygon.hxx".}
proc Added*(this: BRepLib_MakePolygon): Standard_Boolean {.noSideEffect,
    importcpp: "Added", header: "BRepLib_MakePolygon.hxx".}
proc Close*(this: var BRepLib_MakePolygon) {.importcpp: "Close",
    header: "BRepLib_MakePolygon.hxx".}
proc FirstVertex*(this: BRepLib_MakePolygon): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "BRepLib_MakePolygon.hxx".}
proc LastVertex*(this: BRepLib_MakePolygon): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "BRepLib_MakePolygon.hxx".}
proc Edge*(this: BRepLib_MakePolygon): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "BRepLib_MakePolygon.hxx".}
converter `TopoDS_Edge`*(this: BRepLib_MakePolygon): TopoDS_Edge {.noSideEffect,
    importcpp: "BRepLib_MakePolygon::operator TopoDS_Edge",
    header: "BRepLib_MakePolygon.hxx".}
proc Wire*(this: var BRepLib_MakePolygon): TopoDS_Wire {.importcpp: "Wire",
    header: "BRepLib_MakePolygon.hxx".}
converter `TopoDS_Wire`*(this: var BRepLib_MakePolygon): TopoDS_Wire {.
    importcpp: "BRepLib_MakePolygon::operator TopoDS_Wire",
    header: "BRepLib_MakePolygon.hxx".}