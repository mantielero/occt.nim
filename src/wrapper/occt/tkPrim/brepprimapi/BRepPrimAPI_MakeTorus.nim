# /usr/include/opencascade/BRepPrimAPI_MakeTorus.hxx --> occt/tkPrim/brepprimapi/BRepPrimAPI_MakeTorus.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimaketorus = "/usr/include/opencascade/BRepPrimAPI_MakeTorus.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Torus"
type
  BRepPrimAPI_MakeTorus* {.importcpp: "BRepPrimAPI_MakeTorus",
                          header: headerBrepprimapimaketorus, bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeTorus; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeTorus::operator new",
    header: headerBrepprimapimaketorus.}
proc `delete`*(this: var BRepPrimAPI_MakeTorus; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeTorus::operator delete",
    header: headerBrepprimapimaketorus.}
proc `new[]`*(this: var BRepPrimAPI_MakeTorus; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeTorus::operator new[]",
    header: headerBrepprimapimaketorus.}
proc `delete[]`*(this: var BRepPrimAPI_MakeTorus; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeTorus::operator delete[]",
    header: headerBrepprimapimaketorus.}
proc `new`*(this: var BRepPrimAPI_MakeTorus; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeTorus::operator new",
    header: headerBrepprimapimaketorus.}
proc `delete`*(this: var BRepPrimAPI_MakeTorus; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeTorus::operator delete",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(r1: StandardReal; r2: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(r1: StandardReal; r2: StandardReal;
                                    angle: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(r1: StandardReal; r2: StandardReal;
                                    angle1: StandardReal; angle2: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(r1: StandardReal; r2: StandardReal;
                                    angle1: StandardReal; angle2: StandardReal;
                                    angle: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(axes: GpAx2; r1: StandardReal; r2: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(axes: GpAx2; r1: StandardReal; r2: StandardReal;
                                    angle: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(axes: GpAx2; r1: StandardReal; r2: StandardReal;
                                    angle1: StandardReal; angle2: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc constructBRepPrimAPI_MakeTorus*(axes: GpAx2; r1: StandardReal; r2: StandardReal;
                                    angle1: StandardReal; angle2: StandardReal;
                                    angle: StandardReal): BRepPrimAPI_MakeTorus {.
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)",
    header: headerBrepprimapimaketorus.}
proc oneAxis*(this: var BRepPrimAPI_MakeTorus): StandardAddress {.
    importcpp: "OneAxis", header: headerBrepprimapimaketorus.}
proc torus*(this: var BRepPrimAPI_MakeTorus): var BRepPrimTorus {.importcpp: "Torus",
    header: headerBrepprimapimaketorus.}