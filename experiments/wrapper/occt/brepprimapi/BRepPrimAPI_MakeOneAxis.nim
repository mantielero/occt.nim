# /usr/include/opencascade/BRepPrimAPI_MakeOneAxis.hxx --> occt/brepprimapi/BRepPrimAPI_MakeOneAxis.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakeoneaxis = "/usr/include/opencascade/BRepPrimAPI_MakeOneAxis.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeOneAxis* {.importcpp: "BRepPrimAPI_MakeOneAxis",
                            header: headerBrepprimapimakeoneaxis, bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeOneAxis; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator new",
    header: headerBrepprimapimakeoneaxis.}
proc `delete`*(this: var BRepPrimAPI_MakeOneAxis; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator delete",
    header: headerBrepprimapimakeoneaxis.}
proc `new[]`*(this: var BRepPrimAPI_MakeOneAxis; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator new[]",
    header: headerBrepprimapimakeoneaxis.}
proc `delete[]`*(this: var BRepPrimAPI_MakeOneAxis; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator delete[]",
    header: headerBrepprimapimakeoneaxis.}
proc `new`*(this: var BRepPrimAPI_MakeOneAxis; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator new",
    header: headerBrepprimapimakeoneaxis.}
proc `delete`*(this: var BRepPrimAPI_MakeOneAxis; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator delete",
    header: headerBrepprimapimakeoneaxis.}
proc oneAxis*(this: var BRepPrimAPI_MakeOneAxis): StandardAddress {.
    importcpp: "OneAxis", header: headerBrepprimapimakeoneaxis.}
proc build*(this: var BRepPrimAPI_MakeOneAxis) {.importcpp: "Build",
    header: headerBrepprimapimakeoneaxis.}
proc face*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Face {.importcpp: "Face",
    header: headerBrepprimapimakeoneaxis.}
converter `topoDS_Face`*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Face {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Face",
    header: headerBrepprimapimakeoneaxis.}
proc shell*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Shell {.importcpp: "Shell",
    header: headerBrepprimapimakeoneaxis.}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Shell",
    header: headerBrepprimapimakeoneaxis.}
proc solid*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Solid {.importcpp: "Solid",
    header: headerBrepprimapimakeoneaxis.}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Solid",
    header: headerBrepprimapimakeoneaxis.}