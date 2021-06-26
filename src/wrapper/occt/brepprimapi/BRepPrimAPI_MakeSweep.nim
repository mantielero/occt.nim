# /usr/include/opencascade/BRepPrimAPI_MakeSweep.hxx --> occt/brepprimapi/BRepPrimAPI_MakeSweep.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakesweep = "/usr/include/opencascade/BRepPrimAPI_MakeSweep.hxx"
discard "forward decl of TopoDS_Shape"
type
  BRepPrimAPI_MakeSweep* {.importcpp: "BRepPrimAPI_MakeSweep",
                          header: headerBrepprimapimakesweep, bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeSweep; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSweep::operator new",
    header: headerBrepprimapimakesweep.}
proc `delete`*(this: var BRepPrimAPI_MakeSweep; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSweep::operator delete",
    header: headerBrepprimapimakesweep.}
proc `new[]`*(this: var BRepPrimAPI_MakeSweep; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSweep::operator new[]",
    header: headerBrepprimapimakesweep.}
proc `delete[]`*(this: var BRepPrimAPI_MakeSweep; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSweep::operator delete[]",
    header: headerBrepprimapimakesweep.}
proc `new`*(this: var BRepPrimAPI_MakeSweep; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeSweep::operator new",
    header: headerBrepprimapimakesweep.}
proc `delete`*(this: var BRepPrimAPI_MakeSweep; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeSweep::operator delete",
    header: headerBrepprimapimakesweep.}
proc firstShape*(this: var BRepPrimAPI_MakeSweep): TopoDS_Shape {.
    importcpp: "FirstShape", header: headerBrepprimapimakesweep.}
proc lastShape*(this: var BRepPrimAPI_MakeSweep): TopoDS_Shape {.
    importcpp: "LastShape", header: headerBrepprimapimakesweep.}