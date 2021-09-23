# /usr/include/opencascade/TopoDS_CompSolid.hxx --> occt/topods/TopoDS_CompSolid.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodscompsolid = "/usr/include/opencascade/TopoDS_CompSolid.hxx"
type
  TopoDS_CompSolid* {.importcpp: "TopoDS_CompSolid", header: headerTopodscompsolid,
                     bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_CompSolid; theSize: csize_t): pointer {.
    importcpp: "TopoDS_CompSolid::operator new", header: headerTopodscompsolid.}
proc `delete`*(this: var TopoDS_CompSolid; theAddress: pointer) {.
    importcpp: "TopoDS_CompSolid::operator delete", header: headerTopodscompsolid.}
proc `new[]`*(this: var TopoDS_CompSolid; theSize: csize_t): pointer {.
    importcpp: "TopoDS_CompSolid::operator new[]", header: headerTopodscompsolid.}
proc `delete[]`*(this: var TopoDS_CompSolid; theAddress: pointer) {.
    importcpp: "TopoDS_CompSolid::operator delete[]",
    header: headerTopodscompsolid.}
proc `new`*(this: var TopoDS_CompSolid; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_CompSolid::operator new", header: headerTopodscompsolid.}
proc `delete`*(this: var TopoDS_CompSolid; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_CompSolid::operator delete", header: headerTopodscompsolid.}
proc constructTopoDS_CompSolid*(): TopoDS_CompSolid {.constructor,
    importcpp: "TopoDS_CompSolid(@)", header: headerTopodscompsolid.}