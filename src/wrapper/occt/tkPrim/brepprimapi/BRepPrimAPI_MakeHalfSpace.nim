# /usr/include/opencascade/BRepPrimAPI_MakeHalfSpace.hxx --> occt/tkPrim/brepprimapi/BRepPrimAPI_MakeHalfSpace.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakehalfspace = "/usr/include/opencascade/BRepPrimAPI_MakeHalfSpace.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeHalfSpace* {.importcpp: "BRepPrimAPI_MakeHalfSpace",
                              header: headerBrepprimapimakehalfspace, bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeHalfSpace; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator new",
    header: headerBrepprimapimakehalfspace.}
proc `delete`*(this: var BRepPrimAPI_MakeHalfSpace; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator delete",
    header: headerBrepprimapimakehalfspace.}
proc `new[]`*(this: var BRepPrimAPI_MakeHalfSpace; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator new[]",
    header: headerBrepprimapimakehalfspace.}
proc `delete[]`*(this: var BRepPrimAPI_MakeHalfSpace; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator delete[]",
    header: headerBrepprimapimakehalfspace.}
proc `new`*(this: var BRepPrimAPI_MakeHalfSpace; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator new",
    header: headerBrepprimapimakehalfspace.}
proc `delete`*(this: var BRepPrimAPI_MakeHalfSpace; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeHalfSpace::operator delete",
    header: headerBrepprimapimakehalfspace.}
proc constructBRepPrimAPI_MakeHalfSpace*(face: TopoDS_Face; refPnt: GpPnt): BRepPrimAPI_MakeHalfSpace {.
    constructor, importcpp: "BRepPrimAPI_MakeHalfSpace(@)",
    header: headerBrepprimapimakehalfspace.}
proc constructBRepPrimAPI_MakeHalfSpace*(shell: TopoDS_Shell; refPnt: GpPnt): BRepPrimAPI_MakeHalfSpace {.
    constructor, importcpp: "BRepPrimAPI_MakeHalfSpace(@)",
    header: headerBrepprimapimakehalfspace.}
proc solid*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: headerBrepprimapimakehalfspace.}
converter `topoDS_Solid`*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid {.
    noSideEffect, importcpp: "BRepPrimAPI_MakeHalfSpace::operator TopoDS_Solid",
    header: headerBrepprimapimakehalfspace.}