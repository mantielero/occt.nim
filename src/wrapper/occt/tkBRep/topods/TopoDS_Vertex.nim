# /usr/include/opencascade/TopoDS_Vertex.hxx --> occt/tkBRep/topods/TopoDS_Vertex.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsvertex = "/usr/include/opencascade/TopoDS_Vertex.hxx"
type
  TopoDS_Vertex* {.importcpp: "TopoDS_Vertex", header: headerTopodsvertex, bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Vertex; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Vertex::operator new", header: headerTopodsvertex.}
proc `delete`*(this: var TopoDS_Vertex; theAddress: pointer) {.
    importcpp: "TopoDS_Vertex::operator delete", header: headerTopodsvertex.}
proc `new[]`*(this: var TopoDS_Vertex; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Vertex::operator new[]", header: headerTopodsvertex.}
proc `delete[]`*(this: var TopoDS_Vertex; theAddress: pointer) {.
    importcpp: "TopoDS_Vertex::operator delete[]", header: headerTopodsvertex.}
proc `new`*(this: var TopoDS_Vertex; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Vertex::operator new", header: headerTopodsvertex.}
proc `delete`*(this: var TopoDS_Vertex; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Vertex::operator delete", header: headerTopodsvertex.}
proc constructTopoDS_Vertex*(): TopoDS_Vertex {.constructor,
    importcpp: "TopoDS_Vertex(@)", header: headerTopodsvertex.}