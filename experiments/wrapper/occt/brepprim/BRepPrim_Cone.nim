# /usr/include/opencascade/BRepPrim_Cone.hxx --> occt/brepprim/BRepPrim_Cone.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimcone = "/usr/include/opencascade/BRepPrim_Cone.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepPrimCone* {.importcpp: "BRepPrim_Cone", header: headerBrepprimcone, bycopy.} = object of BRepPrimRevolution


proc `new`*(this: var BRepPrimCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cone::operator new", header: headerBrepprimcone.}
proc `delete`*(this: var BRepPrimCone; theAddress: pointer) {.
    importcpp: "BRepPrim_Cone::operator delete", header: headerBrepprimcone.}
proc `new[]`*(this: var BRepPrimCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cone::operator new[]", header: headerBrepprimcone.}
proc `delete[]`*(this: var BRepPrimCone; theAddress: pointer) {.
    importcpp: "BRepPrim_Cone::operator delete[]", header: headerBrepprimcone.}
proc `new`*(this: var BRepPrimCone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Cone::operator new", header: headerBrepprimcone.}
proc `delete`*(this: var BRepPrimCone; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Cone::operator delete", header: headerBrepprimcone.}
proc constructBRepPrimCone*(angle: StandardReal; position: GpAx2;
                           height: StandardReal; radius: StandardReal = 0): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc constructBRepPrimCone*(angle: StandardReal): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc constructBRepPrimCone*(angle: StandardReal; apex: GpPnt): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc constructBRepPrimCone*(angle: StandardReal; axes: GpAx2): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc constructBRepPrimCone*(r1: StandardReal; r2: StandardReal; h: StandardReal): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc constructBRepPrimCone*(center: GpPnt; r1: StandardReal; r2: StandardReal;
                           h: StandardReal): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc constructBRepPrimCone*(axes: GpAx2; r1: StandardReal; r2: StandardReal;
                           h: StandardReal): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: headerBrepprimcone.}
proc makeEmptyLateralFace*(this: BRepPrimCone): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: headerBrepprimcone.}