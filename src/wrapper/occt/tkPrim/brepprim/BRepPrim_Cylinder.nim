# /usr/include/opencascade/BRepPrim_Cylinder.hxx --> occt/tkPrim/brepprim/BRepPrim_Cylinder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimcylinder = "/usr/include/opencascade/BRepPrim_Cylinder.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepPrimCylinder* {.importcpp: "BRepPrim_Cylinder",
                     header: headerBrepprimcylinder, bycopy.} = object of BRepPrimRevolution


proc `new`*(this: var BRepPrimCylinder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cylinder::operator new", header: headerBrepprimcylinder.}
proc `delete`*(this: var BRepPrimCylinder; theAddress: pointer) {.
    importcpp: "BRepPrim_Cylinder::operator delete",
    header: headerBrepprimcylinder.}
proc `new[]`*(this: var BRepPrimCylinder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cylinder::operator new[]", header: headerBrepprimcylinder.}
proc `delete[]`*(this: var BRepPrimCylinder; theAddress: pointer) {.
    importcpp: "BRepPrim_Cylinder::operator delete[]",
    header: headerBrepprimcylinder.}
proc `new`*(this: var BRepPrimCylinder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Cylinder::operator new", header: headerBrepprimcylinder.}
proc `delete`*(this: var BRepPrimCylinder; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Cylinder::operator delete",
    header: headerBrepprimcylinder.}
proc constructBRepPrimCylinder*(position: GpAx2; radius: StandardReal;
                               height: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: headerBrepprimcylinder.}
proc constructBRepPrimCylinder*(radius: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: headerBrepprimcylinder.}
proc constructBRepPrimCylinder*(center: GpPnt; radius: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: headerBrepprimcylinder.}
proc constructBRepPrimCylinder*(axes: GpAx2; radius: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: headerBrepprimcylinder.}
proc constructBRepPrimCylinder*(r: StandardReal; h: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: headerBrepprimcylinder.}
proc constructBRepPrimCylinder*(center: GpPnt; r: StandardReal; h: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: headerBrepprimcylinder.}
proc makeEmptyLateralFace*(this: BRepPrimCylinder): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: headerBrepprimcylinder.}