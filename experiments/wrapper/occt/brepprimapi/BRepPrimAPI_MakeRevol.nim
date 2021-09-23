# /usr/include/opencascade/BRepPrimAPI_MakeRevol.hxx --> occt/brepprimapi/BRepPrimAPI_MakeRevol.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakerevol = "/usr/include/opencascade/BRepPrimAPI_MakeRevol.hxx"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Ax1"
discard "forward decl of BRepSweep_Revol"
type
  BRepPrimAPI_MakeRevol* {.importcpp: "BRepPrimAPI_MakeRevol",
                          header: headerBrepprimapimakerevol, bycopy.} = object of BRepPrimAPI_MakeSweep


proc `new`*(this: var BRepPrimAPI_MakeRevol; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeRevol::operator new",
    header: headerBrepprimapimakerevol.}
proc `delete`*(this: var BRepPrimAPI_MakeRevol; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevol::operator delete",
    header: headerBrepprimapimakerevol.}
proc `new[]`*(this: var BRepPrimAPI_MakeRevol; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeRevol::operator new[]",
    header: headerBrepprimapimakerevol.}
proc `delete[]`*(this: var BRepPrimAPI_MakeRevol; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevol::operator delete[]",
    header: headerBrepprimapimakerevol.}
proc `new`*(this: var BRepPrimAPI_MakeRevol; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeRevol::operator new",
    header: headerBrepprimapimakerevol.}
proc `delete`*(this: var BRepPrimAPI_MakeRevol; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevol::operator delete",
    header: headerBrepprimapimakerevol.}
proc constructBRepPrimAPI_MakeRevol*(s: TopoDS_Shape; a: GpAx1; d: StandardReal;
                                    copy: StandardBoolean = false): BRepPrimAPI_MakeRevol {.
    constructor, importcpp: "BRepPrimAPI_MakeRevol(@)",
    header: headerBrepprimapimakerevol.}
proc constructBRepPrimAPI_MakeRevol*(s: TopoDS_Shape; a: GpAx1;
                                    copy: StandardBoolean = false): BRepPrimAPI_MakeRevol {.
    constructor, importcpp: "BRepPrimAPI_MakeRevol(@)",
    header: headerBrepprimapimakerevol.}
proc revol*(this: BRepPrimAPI_MakeRevol): BRepSweepRevol {.noSideEffect,
    importcpp: "Revol", header: headerBrepprimapimakerevol.}
proc build*(this: var BRepPrimAPI_MakeRevol) {.importcpp: "Build",
    header: headerBrepprimapimakerevol.}
proc firstShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape {.
    importcpp: "FirstShape", header: headerBrepprimapimakerevol.}
proc lastShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape {.
    importcpp: "LastShape", header: headerBrepprimapimakerevol.}
proc generated*(this: var BRepPrimAPI_MakeRevol; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: headerBrepprimapimakerevol.}
proc isDeleted*(this: var BRepPrimAPI_MakeRevol; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: headerBrepprimapimakerevol.}
proc firstShape*(this: var BRepPrimAPI_MakeRevol; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: headerBrepprimapimakerevol.}
proc lastShape*(this: var BRepPrimAPI_MakeRevol; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: headerBrepprimapimakerevol.}
proc hasDegenerated*(this: BRepPrimAPI_MakeRevol): StandardBoolean {.noSideEffect,
    importcpp: "HasDegenerated", header: headerBrepprimapimakerevol.}
proc degenerated*(this: BRepPrimAPI_MakeRevol): TopToolsListOfShape {.noSideEffect,
    importcpp: "Degenerated", header: headerBrepprimapimakerevol.}