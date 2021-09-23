# /usr/include/opencascade/BRepPrimAPI_MakeCone.hxx --> occt/brepprimapi/BRepPrimAPI_MakeCone.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakecone = "/usr/include/opencascade/BRepPrimAPI_MakeCone.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Cone"
type
  BRepPrimAPI_MakeCone* {.importcpp: "BRepPrimAPI_MakeCone",
                         header: headerBrepprimapimakecone, bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeCone::operator new",
    header: headerBrepprimapimakecone.}
proc `delete`*(this: var BRepPrimAPI_MakeCone; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeCone::operator delete",
    header: headerBrepprimapimakecone.}
proc `new[]`*(this: var BRepPrimAPI_MakeCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeCone::operator new[]",
    header: headerBrepprimapimakecone.}
proc `delete[]`*(this: var BRepPrimAPI_MakeCone; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeCone::operator delete[]",
    header: headerBrepprimapimakecone.}
proc `new`*(this: var BRepPrimAPI_MakeCone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeCone::operator new",
    header: headerBrepprimapimakecone.}
proc `delete`*(this: var BRepPrimAPI_MakeCone; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeCone::operator delete",
    header: headerBrepprimapimakecone.}
proc constructBRepPrimAPI_MakeCone*(r1: StandardReal; r2: StandardReal;
                                   h: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: headerBrepprimapimakecone.}
proc constructBRepPrimAPI_MakeCone*(r1: StandardReal; r2: StandardReal;
                                   h: StandardReal; angle: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: headerBrepprimapimakecone.}
proc constructBRepPrimAPI_MakeCone*(axes: GpAx2; r1: StandardReal; r2: StandardReal;
                                   h: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: headerBrepprimapimakecone.}
proc constructBRepPrimAPI_MakeCone*(axes: GpAx2; r1: StandardReal; r2: StandardReal;
                                   h: StandardReal; angle: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: headerBrepprimapimakecone.}
proc oneAxis*(this: var BRepPrimAPI_MakeCone): StandardAddress {.
    importcpp: "OneAxis", header: headerBrepprimapimakecone.}
proc cone*(this: var BRepPrimAPI_MakeCone): var BRepPrimCone {.importcpp: "Cone",
    header: headerBrepprimapimakecone.}