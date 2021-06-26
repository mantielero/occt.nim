# /usr/include/opencascade/BRepPrim_Torus.hxx --> occt/brepprim/BRepPrim_Torus.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimtorus = "/usr/include/opencascade/BRepPrim_Torus.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepPrimTorus* {.importcpp: "BRepPrim_Torus", header: headerBrepprimtorus, bycopy.} = object of BRepPrimRevolution


proc `new`*(this: var BRepPrimTorus; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Torus::operator new", header: headerBrepprimtorus.}
proc `delete`*(this: var BRepPrimTorus; theAddress: pointer) {.
    importcpp: "BRepPrim_Torus::operator delete", header: headerBrepprimtorus.}
proc `new[]`*(this: var BRepPrimTorus; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Torus::operator new[]", header: headerBrepprimtorus.}
proc `delete[]`*(this: var BRepPrimTorus; theAddress: pointer) {.
    importcpp: "BRepPrim_Torus::operator delete[]", header: headerBrepprimtorus.}
proc `new`*(this: var BRepPrimTorus; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Torus::operator new", header: headerBrepprimtorus.}
proc `delete`*(this: var BRepPrimTorus; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Torus::operator delete", header: headerBrepprimtorus.}
proc constructBRepPrimTorus*(position: GpAx2; major: StandardReal;
                            minor: StandardReal): BRepPrimTorus {.constructor,
    importcpp: "BRepPrim_Torus(@)", header: headerBrepprimtorus.}
proc constructBRepPrimTorus*(major: StandardReal; minor: StandardReal): BRepPrimTorus {.
    constructor, importcpp: "BRepPrim_Torus(@)", header: headerBrepprimtorus.}
proc constructBRepPrimTorus*(center: GpPnt; major: StandardReal; minor: StandardReal): BRepPrimTorus {.
    constructor, importcpp: "BRepPrim_Torus(@)", header: headerBrepprimtorus.}
proc makeEmptyLateralFace*(this: BRepPrimTorus): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: headerBrepprimtorus.}