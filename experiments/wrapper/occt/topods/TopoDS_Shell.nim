# /usr/include/opencascade/TopoDS_Shell.hxx --> occt/topods/TopoDS_Shell.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsshell = "/usr/include/opencascade/TopoDS_Shell.hxx"
type
  TopoDS_Shell* {.importcpp: "TopoDS_Shell", header: headerTopodsshell, bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Shell; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Shell::operator new", header: headerTopodsshell.}
proc `delete`*(this: var TopoDS_Shell; theAddress: pointer) {.
    importcpp: "TopoDS_Shell::operator delete", header: headerTopodsshell.}
proc `new[]`*(this: var TopoDS_Shell; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Shell::operator new[]", header: headerTopodsshell.}
proc `delete[]`*(this: var TopoDS_Shell; theAddress: pointer) {.
    importcpp: "TopoDS_Shell::operator delete[]", header: headerTopodsshell.}
proc `new`*(this: var TopoDS_Shell; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Shell::operator new", header: headerTopodsshell.}
proc `delete`*(this: var TopoDS_Shell; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Shell::operator delete", header: headerTopodsshell.}
proc constructTopoDS_Shell*(): TopoDS_Shell {.constructor,
    importcpp: "TopoDS_Shell(@)", header: headerTopodsshell.}