# /usr/include/opencascade/BRepPrimAPI_MakePrism.hxx --> occt/tkPrim/brepprimapi/BRepPrimAPI_MakePrism.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakeprism = "/usr/include/opencascade/BRepPrimAPI_MakePrism.hxx"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of BRepSweep_Prism"
type
  BRepPrimAPI_MakePrism* {.importcpp: "BRepPrimAPI_MakePrism",
                          header: headerBrepprimapimakeprism, bycopy.} = object of BRepPrimAPI_MakeSweep


proc `new`*(this: var BRepPrimAPI_MakePrism; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakePrism::operator new",
    header: headerBrepprimapimakeprism.}
proc `delete`*(this: var BRepPrimAPI_MakePrism; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakePrism::operator delete",
    header: headerBrepprimapimakeprism.}
proc `new[]`*(this: var BRepPrimAPI_MakePrism; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakePrism::operator new[]",
    header: headerBrepprimapimakeprism.}
proc `delete[]`*(this: var BRepPrimAPI_MakePrism; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakePrism::operator delete[]",
    header: headerBrepprimapimakeprism.}
proc `new`*(this: var BRepPrimAPI_MakePrism; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakePrism::operator new",
    header: headerBrepprimapimakeprism.}
proc `delete`*(this: var BRepPrimAPI_MakePrism; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakePrism::operator delete",
    header: headerBrepprimapimakeprism.}
proc constructBRepPrimAPI_MakePrism*(s: TopoDS_Shape; v: GpVec;
                                    copy: StandardBoolean = false;
                                    canonize: StandardBoolean = true): BRepPrimAPI_MakePrism {.
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)",
    header: headerBrepprimapimakeprism.}
proc constructBRepPrimAPI_MakePrism*(s: TopoDS_Shape; d: GpDir;
                                    inf: StandardBoolean = true;
                                    copy: StandardBoolean = false;
                                    canonize: StandardBoolean = true): BRepPrimAPI_MakePrism {.
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)",
    header: headerBrepprimapimakeprism.}
proc prism*(this: BRepPrimAPI_MakePrism): BRepSweepPrism {.noSideEffect,
    importcpp: "Prism", header: headerBrepprimapimakeprism.}
proc build*(this: var BRepPrimAPI_MakePrism) {.importcpp: "Build",
    header: headerBrepprimapimakeprism.}
proc firstShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "FirstShape", header: headerBrepprimapimakeprism.}
proc lastShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.
    importcpp: "LastShape", header: headerBrepprimapimakeprism.}
proc generated*(this: var BRepPrimAPI_MakePrism; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: headerBrepprimapimakeprism.}
proc isDeleted*(this: var BRepPrimAPI_MakePrism; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: headerBrepprimapimakeprism.}
proc firstShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: headerBrepprimapimakeprism.}
proc lastShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: headerBrepprimapimakeprism.}