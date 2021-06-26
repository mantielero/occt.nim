# /usr/include/opencascade/TopoDS_Wire.hxx --> occt/tkBRep/topods/TopoDS_Wire.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodswire = "/usr/include/opencascade/TopoDS_Wire.hxx"
type
  TopoDS_Wire* {.importcpp: "TopoDS_Wire", header: headerTopodswire, bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Wire; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Wire::operator new", header: headerTopodswire.}
proc `delete`*(this: var TopoDS_Wire; theAddress: pointer) {.
    importcpp: "TopoDS_Wire::operator delete", header: headerTopodswire.}
proc `new[]`*(this: var TopoDS_Wire; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Wire::operator new[]", header: headerTopodswire.}
proc `delete[]`*(this: var TopoDS_Wire; theAddress: pointer) {.
    importcpp: "TopoDS_Wire::operator delete[]", header: headerTopodswire.}
proc `new`*(this: var TopoDS_Wire; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Wire::operator new", header: headerTopodswire.}
proc `delete`*(this: var TopoDS_Wire; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Wire::operator delete", header: headerTopodswire.}
proc constructTopoDS_Wire*(): TopoDS_Wire {.constructor,
    importcpp: "TopoDS_Wire(@)", header: headerTopodswire.}