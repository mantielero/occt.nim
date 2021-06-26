# /usr/include/opencascade/TopoDS_Edge.hxx --> occt/tkBRep/topods/TopoDS_Edge.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsedge = "/usr/include/opencascade/TopoDS_Edge.hxx"
type
  TopoDS_Edge* {.importcpp: "TopoDS_Edge", header: headerTopodsedge, bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Edge; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Edge::operator new", header: headerTopodsedge.}
proc `delete`*(this: var TopoDS_Edge; theAddress: pointer) {.
    importcpp: "TopoDS_Edge::operator delete", header: headerTopodsedge.}
proc `new[]`*(this: var TopoDS_Edge; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Edge::operator new[]", header: headerTopodsedge.}
proc `delete[]`*(this: var TopoDS_Edge; theAddress: pointer) {.
    importcpp: "TopoDS_Edge::operator delete[]", header: headerTopodsedge.}
proc `new`*(this: var TopoDS_Edge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Edge::operator new", header: headerTopodsedge.}
proc `delete`*(this: var TopoDS_Edge; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Edge::operator delete", header: headerTopodsedge.}
proc constructTopoDS_Edge*(): TopoDS_Edge {.constructor,
    importcpp: "TopoDS_Edge(@)", header: headerTopodsedge.}