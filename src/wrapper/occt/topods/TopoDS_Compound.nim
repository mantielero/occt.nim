# /usr/include/opencascade/TopoDS_Compound.hxx --> occt/topods/TopoDS_Compound.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodscompound = "/usr/include/opencascade/TopoDS_Compound.hxx"
type
  TopoDS_Compound* {.importcpp: "TopoDS_Compound", header: headerTopodscompound,
                    bycopy.} = object of TopoDS_Shape


proc `new`*(this: var TopoDS_Compound; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Compound::operator new", header: headerTopodscompound.}
proc `delete`*(this: var TopoDS_Compound; theAddress: pointer) {.
    importcpp: "TopoDS_Compound::operator delete", header: headerTopodscompound.}
proc `new[]`*(this: var TopoDS_Compound; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Compound::operator new[]", header: headerTopodscompound.}
proc `delete[]`*(this: var TopoDS_Compound; theAddress: pointer) {.
    importcpp: "TopoDS_Compound::operator delete[]", header: headerTopodscompound.}
proc `new`*(this: var TopoDS_Compound; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Compound::operator new", header: headerTopodscompound.}
proc `delete`*(this: var TopoDS_Compound; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Compound::operator delete", header: headerTopodscompound.}
proc constructTopoDS_Compound*(): TopoDS_Compound {.constructor,
    importcpp: "TopoDS_Compound(@)", header: headerTopodscompound.}