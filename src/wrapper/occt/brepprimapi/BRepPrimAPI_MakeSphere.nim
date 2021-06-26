# /usr/include/opencascade/BRepPrimAPI_MakeSphere.hxx --> occt/brepprimapi/BRepPrimAPI_MakeSphere.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakesphere = "/usr/include/opencascade/BRepPrimAPI_MakeSphere.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Sphere"
type
  BRepPrimAPI_MakeSphere* {.importcpp: "BRepPrimAPI_MakeSphere",
                           header: headerBrepprimapimakesphere, bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeSphere; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSphere::operator new",
    header: headerBrepprimapimakesphere.}
proc `delete`*(this: var BRepPrimAPI_MakeSphere; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSphere::operator delete",
    header: headerBrepprimapimakesphere.}
proc `new[]`*(this: var BRepPrimAPI_MakeSphere; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSphere::operator new[]",
    header: headerBrepprimapimakesphere.}
proc `delete[]`*(this: var BRepPrimAPI_MakeSphere; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSphere::operator delete[]",
    header: headerBrepprimapimakesphere.}
proc `new`*(this: var BRepPrimAPI_MakeSphere; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeSphere::operator new",
    header: headerBrepprimapimakesphere.}
proc `delete`*(this: var BRepPrimAPI_MakeSphere; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeSphere::operator delete",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal; angle: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal; angle1: StandardReal;
                                     angle2: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal; angle1: StandardReal;
                                     angle2: StandardReal; angle3: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(center: GpPnt; r: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(center: GpPnt; r: StandardReal;
                                     angle: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(center: GpPnt; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(center: GpPnt; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal;
                                     angle3: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(axis: GpAx2; r: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(axis: GpAx2; r: StandardReal;
                                     angle: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(axis: GpAx2; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc constructBRepPrimAPI_MakeSphere*(axis: GpAx2; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal;
                                     angle3: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: headerBrepprimapimakesphere.}
proc oneAxis*(this: var BRepPrimAPI_MakeSphere): StandardAddress {.
    importcpp: "OneAxis", header: headerBrepprimapimakesphere.}
proc sphere*(this: var BRepPrimAPI_MakeSphere): var BRepPrimSphere {.
    importcpp: "Sphere", header: headerBrepprimapimakesphere.}