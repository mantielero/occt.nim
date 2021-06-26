# /usr/include/opencascade/BRepPrim_Sphere.hxx --> occt/tkPrim/brepprim/BRepPrim_Sphere.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimsphere = "/usr/include/opencascade/BRepPrim_Sphere.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
type
  BRepPrimSphere* {.importcpp: "BRepPrim_Sphere", header: headerBrepprimsphere,
                   bycopy.} = object of BRepPrimRevolution


proc `new`*(this: var BRepPrimSphere; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Sphere::operator new", header: headerBrepprimsphere.}
proc `delete`*(this: var BRepPrimSphere; theAddress: pointer) {.
    importcpp: "BRepPrim_Sphere::operator delete", header: headerBrepprimsphere.}
proc `new[]`*(this: var BRepPrimSphere; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Sphere::operator new[]", header: headerBrepprimsphere.}
proc `delete[]`*(this: var BRepPrimSphere; theAddress: pointer) {.
    importcpp: "BRepPrim_Sphere::operator delete[]", header: headerBrepprimsphere.}
proc `new`*(this: var BRepPrimSphere; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Sphere::operator new", header: headerBrepprimsphere.}
proc `delete`*(this: var BRepPrimSphere; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Sphere::operator delete", header: headerBrepprimsphere.}
proc constructBRepPrimSphere*(radius: StandardReal): BRepPrimSphere {.constructor,
    importcpp: "BRepPrim_Sphere(@)", header: headerBrepprimsphere.}
proc constructBRepPrimSphere*(center: GpPnt; radius: StandardReal): BRepPrimSphere {.
    constructor, importcpp: "BRepPrim_Sphere(@)", header: headerBrepprimsphere.}
proc constructBRepPrimSphere*(axes: GpAx2; radius: StandardReal): BRepPrimSphere {.
    constructor, importcpp: "BRepPrim_Sphere(@)", header: headerBrepprimsphere.}
proc makeEmptyLateralFace*(this: BRepPrimSphere): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: headerBrepprimsphere.}