# /usr/include/opencascade/BRepPrimAPI_MakeRevolution.hxx --> occt/tkPrim/brepprimapi/BRepPrimAPI_MakeRevolution.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakerevolution = "/usr/include/opencascade/BRepPrimAPI_MakeRevolution.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Revolution"
type
  BRepPrimAPI_MakeRevolution* {.importcpp: "BRepPrimAPI_MakeRevolution",
                               header: headerBrepprimapimakerevolution, bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator new",
    header: headerBrepprimapimakerevolution.}
proc `delete`*(this: var BRepPrimAPI_MakeRevolution; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator delete",
    header: headerBrepprimapimakerevolution.}
proc `new[]`*(this: var BRepPrimAPI_MakeRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator new[]",
    header: headerBrepprimapimakerevolution.}
proc `delete[]`*(this: var BRepPrimAPI_MakeRevolution; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator delete[]",
    header: headerBrepprimapimakerevolution.}
proc `new`*(this: var BRepPrimAPI_MakeRevolution; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator new",
    header: headerBrepprimapimakerevolution.}
proc `delete`*(this: var BRepPrimAPI_MakeRevolution; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator delete",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve];
    angle: StandardReal): BRepPrimAPI_MakeRevolution {.constructor,
    importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal; angle: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(axes: GpAx2; meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(axes: GpAx2; meridian: Handle[GeomCurve];
    angle: StandardReal): BRepPrimAPI_MakeRevolution {.constructor,
    importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(axes: GpAx2; meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc constructBRepPrimAPI_MakeRevolution*(axes: GpAx2; meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal; angle: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: headerBrepprimapimakerevolution.}
proc oneAxis*(this: var BRepPrimAPI_MakeRevolution): StandardAddress {.
    importcpp: "OneAxis", header: headerBrepprimapimakerevolution.}
proc revolution*(this: var BRepPrimAPI_MakeRevolution): var BRepPrimRevolution {.
    importcpp: "Revolution", header: headerBrepprimapimakerevolution.}