# /usr/include/opencascade/TopoDS_Solid.hxx --> occt/tkBRep/topods/TopoDS_Solid.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodssolid = "/usr/include/opencascade/TopoDS_Solid.hxx"
type
  TopoDS_Solid* {.importcpp: "TopoDS_Solid", header: headerTopodssolid, bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Solid; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Solid::operator new", header: headerTopodssolid.}
proc `delete`*(this: var TopoDS_Solid; theAddress: pointer) {.
    importcpp: "TopoDS_Solid::operator delete", header: headerTopodssolid.}
proc `new[]`*(this: var TopoDS_Solid; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Solid::operator new[]", header: headerTopodssolid.}
proc `delete[]`*(this: var TopoDS_Solid; theAddress: pointer) {.
    importcpp: "TopoDS_Solid::operator delete[]", header: headerTopodssolid.}
proc `new`*(this: var TopoDS_Solid; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Solid::operator new", header: headerTopodssolid.}
proc `delete`*(this: var TopoDS_Solid; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Solid::operator delete", header: headerTopodssolid.}
proc constructTopoDS_Solid*(): TopoDS_Solid {.constructor,
    importcpp: "TopoDS_Solid(@)", header: headerTopodssolid.}