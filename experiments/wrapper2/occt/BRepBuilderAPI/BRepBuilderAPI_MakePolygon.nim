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
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakePolygon,
  BRepBuilderAPI_MakeShape, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
type
  BRepBuilderAPI_MakePolygon* {.importcpp: "BRepBuilderAPI_MakePolygon",
                               header: "BRepBuilderAPI_MakePolygon.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## an
                                                                                                                ## empty
                                                                                                                ## polygonal
                                                                                                                ## wire,
                                                                                                                ## to
                                                                                                                ## which
                                                                                                                ## points
                                                                                                                ## or
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## vertices
                                                                                                                ## are
                                                                                                                ## added
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## Add
                                                                                                                ## function.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## As
                                                                                                                ## soon
                                                                                                                ## as
                                                                                                                ## the
                                                                                                                ## polygonal
                                                                                                                ## wire
                                                                                                                ## under
                                                                                                                ## construction
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## contains
                                                                                                                ## vertices,
                                                                                                                ## it
                                                                                                                ## can
                                                                                                                ## be
                                                                                                                ## consulted
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## Wire
                                                                                                                ## function.


proc constructBRepBuilderAPI_MakePolygon*(): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc constructBRepBuilderAPI_MakePolygon*(P1: gp_Pnt; P2: gp_Pnt): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc constructBRepBuilderAPI_MakePolygon*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt;
    Close: Standard_Boolean = Standard_False): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc constructBRepBuilderAPI_MakePolygon*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt;
    P4: gp_Pnt; Close: Standard_Boolean = Standard_False): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc constructBRepBuilderAPI_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc constructBRepBuilderAPI_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex;
    V3: TopoDS_Vertex; Close: Standard_Boolean = Standard_False): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc constructBRepBuilderAPI_MakePolygon*(V1: TopoDS_Vertex; V2: TopoDS_Vertex;
    V3: TopoDS_Vertex; V4: TopoDS_Vertex; Close: Standard_Boolean = Standard_False): BRepBuilderAPI_MakePolygon {.
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc Add*(this: var BRepBuilderAPI_MakePolygon; P: gp_Pnt) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc Add*(this: var BRepBuilderAPI_MakePolygon; V: TopoDS_Vertex) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc Added*(this: BRepBuilderAPI_MakePolygon): Standard_Boolean {.noSideEffect,
    importcpp: "Added", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc Close*(this: var BRepBuilderAPI_MakePolygon) {.importcpp: "Close",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc FirstVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc LastVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc IsDone*(this: BRepBuilderAPI_MakePolygon): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakePolygon.hxx".}
proc Edge*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepBuilderAPI_MakePolygon.hxx".}
converter `TopoDS_Edge`*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge {.
    noSideEffect, importcpp: "BRepBuilderAPI_MakePolygon::operator TopoDS_Edge",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
proc Wire*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire {.importcpp: "Wire",
    header: "BRepBuilderAPI_MakePolygon.hxx".}
converter `TopoDS_Wire`*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire {.
    importcpp: "BRepBuilderAPI_MakePolygon::operator TopoDS_Wire",
    header: "BRepBuilderAPI_MakePolygon.hxx".}