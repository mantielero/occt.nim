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


proc newBRepBuilderAPI_MakePolygon*(): BRepBuilderAPI_MakePolygon {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakePolygon*(p1: Pnt; p2: Pnt): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakePolygon*(p1: Pnt; p2: Pnt; p3: Pnt; close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakePolygon*(p1: Pnt; p2: Pnt; p3: Pnt; p4: Pnt;
                                   close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakePolygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakePolygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex;
                                   v3: TopoDS_Vertex; close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakePolygon*(v1: TopoDS_Vertex; v2: TopoDS_Vertex;
                                   v3: TopoDS_Vertex; v4: TopoDS_Vertex;
                                   close: bool = false): BRepBuilderAPI_MakePolygon {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakePolygon(@)",
    dynlib: tktopalgo.}
proc add*(this: var BRepBuilderAPI_MakePolygon; p: Pnt) {.cdecl, importcpp: "Add",
    dynlib: tktopalgo.}
proc add*(this: var BRepBuilderAPI_MakePolygon; v: TopoDS_Vertex) {.cdecl,
    importcpp: "Add", dynlib: tktopalgo.}
proc added*(this: BRepBuilderAPI_MakePolygon): bool {.noSideEffect, cdecl,
    importcpp: "Added", dynlib: tktopalgo.}
proc close*(this: var BRepBuilderAPI_MakePolygon) {.cdecl, importcpp: "Close",
    dynlib: tktopalgo.}
proc firstVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex {.noSideEffect,
    cdecl, importcpp: "FirstVertex", dynlib: tktopalgo.}
proc lastVertex*(this: BRepBuilderAPI_MakePolygon): TopoDS_Vertex {.noSideEffect,
    cdecl, importcpp: "LastVertex", dynlib: tktopalgo.}
proc isDone*(this: BRepBuilderAPI_MakePolygon): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tktopalgo.}
proc edge*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tktopalgo.}
converter `topoDS_Edge`*(this: BRepBuilderAPI_MakePolygon): TopoDS_Edge {.
    noSideEffect, cdecl,
    importcpp: "BRepBuilderAPI_MakePolygon::operator TopoDS_Edge",
    dynlib: tktopalgo.}
proc wire*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire {.cdecl,
    importcpp: "Wire", dynlib: tktopalgo.}
converter `topoDS_Wire`*(this: var BRepBuilderAPI_MakePolygon): TopoDS_Wire {.cdecl,
    importcpp: "BRepBuilderAPI_MakePolygon::operator TopoDS_Wire",
    dynlib: tktopalgo.}