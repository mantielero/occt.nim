# /usr/include/opencascade/BRepPrimAPI_MakeCylinder.hxx --> occt/tkPrim/brepprimapi/BRepPrimAPI_MakeCylinder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakecylinder = "/usr/include/opencascade/BRepPrimAPI_MakeCylinder.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Cylinder"
type
  BRepPrimAPI_MakeCylinder* {.importcpp: "BRepPrimAPI_MakeCylinder",
                             header: headerBrepprimapimakecylinder, bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeCylinder; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeCylinder::operator new",
    header: headerBrepprimapimakecylinder.}
proc `delete`*(this: var BRepPrimAPI_MakeCylinder; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeCylinder::operator delete",
    header: headerBrepprimapimakecylinder.}
proc `new[]`*(this: var BRepPrimAPI_MakeCylinder; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeCylinder::operator new[]",
    header: headerBrepprimapimakecylinder.}
proc `delete[]`*(this: var BRepPrimAPI_MakeCylinder; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeCylinder::operator delete[]",
    header: headerBrepprimapimakecylinder.}
proc `new`*(this: var BRepPrimAPI_MakeCylinder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeCylinder::operator new",
    header: headerBrepprimapimakecylinder.}
proc `delete`*(this: var BRepPrimAPI_MakeCylinder; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeCylinder::operator delete",
    header: headerBrepprimapimakecylinder.}
proc constructBRepPrimAPI_MakeCylinder*(r: StandardReal; h: StandardReal): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: headerBrepprimapimakecylinder.}
proc constructBRepPrimAPI_MakeCylinder*(r: StandardReal; h: StandardReal;
                                       angle: StandardReal): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: headerBrepprimapimakecylinder.}
proc constructBRepPrimAPI_MakeCylinder*(axes: GpAx2; r: StandardReal; h: StandardReal): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: headerBrepprimapimakecylinder.}
proc constructBRepPrimAPI_MakeCylinder*(axes: GpAx2; r: StandardReal;
                                       h: StandardReal; angle: StandardReal): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: headerBrepprimapimakecylinder.}
proc oneAxis*(this: var BRepPrimAPI_MakeCylinder): StandardAddress {.
    importcpp: "OneAxis", header: headerBrepprimapimakecylinder.}
proc cylinder*(this: var BRepPrimAPI_MakeCylinder): var BRepPrimCylinder {.
    importcpp: "Cylinder", header: headerBrepprimapimakecylinder.}