# /usr/include/opencascade/TopoDS_Face.hxx --> occt/tkBRep/topods/TopoDS_Face.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsface = "/usr/include/opencascade/TopoDS_Face.hxx"
type
  TopoDS_Face* {.importcpp: "TopoDS_Face", header: headerTopodsface, bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Face; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Face::operator new", header: headerTopodsface.}
proc `delete`*(this: var TopoDS_Face; theAddress: pointer) {.
    importcpp: "TopoDS_Face::operator delete", header: headerTopodsface.}
proc `new[]`*(this: var TopoDS_Face; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Face::operator new[]", header: headerTopodsface.}
proc `delete[]`*(this: var TopoDS_Face; theAddress: pointer) {.
    importcpp: "TopoDS_Face::operator delete[]", header: headerTopodsface.}
proc `new`*(this: var TopoDS_Face; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Face::operator new", header: headerTopodsface.}
proc `delete`*(this: var TopoDS_Face; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Face::operator delete", header: headerTopodsface.}
proc constructTopoDS_Face*(): TopoDS_Face {.constructor,
    importcpp: "TopoDS_Face(@)", header: headerTopodsface.}