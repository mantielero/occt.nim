# /usr/include/opencascade/gp_Sphere.hxx --> occt/tkMath/gp/gp_Sphere.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpsphere = "/usr/include/opencascade/gp_Sphere.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpSphere* {.importcpp: "gp_Sphere", header: headerGpsphere, bycopy.} = object


proc `new`*(this: var GpSphere; theSize: csize_t): pointer {.
    importcpp: "gp_Sphere::operator new", header: headerGpsphere.}
proc `delete`*(this: var GpSphere; theAddress: pointer) {.
    importcpp: "gp_Sphere::operator delete", header: headerGpsphere.}
proc `new[]`*(this: var GpSphere; theSize: csize_t): pointer {.
    importcpp: "gp_Sphere::operator new[]", header: headerGpsphere.}
proc `delete[]`*(this: var GpSphere; theAddress: pointer) {.
    importcpp: "gp_Sphere::operator delete[]", header: headerGpsphere.}
proc `new`*(this: var GpSphere; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Sphere::operator new", header: headerGpsphere.}
proc `delete`*(this: var GpSphere; a2: pointer; a3: pointer) {.
    importcpp: "gp_Sphere::operator delete", header: headerGpsphere.}
proc constructGpSphere*(): GpSphere {.constructor, importcpp: "gp_Sphere(@)",
                                   header: headerGpsphere.}
proc constructGpSphere*(a3: GpAx3; radius: StandardReal): GpSphere {.constructor,
    importcpp: "gp_Sphere(@)", header: headerGpsphere.}
proc setLocation*(this: var GpSphere; loc: GpPnt) {.importcpp: "SetLocation",
    header: headerGpsphere.}
proc setPosition*(this: var GpSphere; a3: GpAx3) {.importcpp: "SetPosition",
    header: headerGpsphere.}
proc setRadius*(this: var GpSphere; r: StandardReal) {.importcpp: "SetRadius",
    header: headerGpsphere.}
proc area*(this: GpSphere): StandardReal {.noSideEffect, importcpp: "Area",
                                       header: headerGpsphere.}
proc coefficients*(this: GpSphere; a1: var StandardReal; a2: var StandardReal;
                  a3: var StandardReal; b1: var StandardReal; b2: var StandardReal;
                  b3: var StandardReal; c1: var StandardReal; c2: var StandardReal;
                  c3: var StandardReal; d: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: headerGpsphere.}
proc uReverse*(this: var GpSphere) {.importcpp: "UReverse", header: headerGpsphere.}
proc vReverse*(this: var GpSphere) {.importcpp: "VReverse", header: headerGpsphere.}
proc direct*(this: GpSphere): StandardBoolean {.noSideEffect, importcpp: "Direct",
    header: headerGpsphere.}
proc location*(this: GpSphere): GpPnt {.noSideEffect, importcpp: "Location",
                                    header: headerGpsphere.}
proc position*(this: GpSphere): GpAx3 {.noSideEffect, importcpp: "Position",
                                    header: headerGpsphere.}
proc radius*(this: GpSphere): StandardReal {.noSideEffect, importcpp: "Radius",
    header: headerGpsphere.}
proc volume*(this: GpSphere): StandardReal {.noSideEffect, importcpp: "Volume",
    header: headerGpsphere.}
proc xAxis*(this: GpSphere): GpAx1 {.noSideEffect, importcpp: "XAxis",
                                 header: headerGpsphere.}
proc yAxis*(this: GpSphere): GpAx1 {.noSideEffect, importcpp: "YAxis",
                                 header: headerGpsphere.}
proc mirror*(this: var GpSphere; p: GpPnt) {.importcpp: "Mirror", header: headerGpsphere.}
proc mirrored*(this: GpSphere; p: GpPnt): GpSphere {.noSideEffect,
    importcpp: "Mirrored", header: headerGpsphere.}
proc mirror*(this: var GpSphere; a1: GpAx1) {.importcpp: "Mirror",
                                        header: headerGpsphere.}
proc mirrored*(this: GpSphere; a1: GpAx1): GpSphere {.noSideEffect,
    importcpp: "Mirrored", header: headerGpsphere.}
proc mirror*(this: var GpSphere; a2: GpAx2) {.importcpp: "Mirror",
                                        header: headerGpsphere.}
proc mirrored*(this: GpSphere; a2: GpAx2): GpSphere {.noSideEffect,
    importcpp: "Mirrored", header: headerGpsphere.}
proc rotate*(this: var GpSphere; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpsphere.}
proc rotated*(this: GpSphere; a1: GpAx1; ang: StandardReal): GpSphere {.noSideEffect,
    importcpp: "Rotated", header: headerGpsphere.}
proc scale*(this: var GpSphere; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpsphere.}
proc scaled*(this: GpSphere; p: GpPnt; s: StandardReal): GpSphere {.noSideEffect,
    importcpp: "Scaled", header: headerGpsphere.}
proc transform*(this: var GpSphere; t: GpTrsf) {.importcpp: "Transform",
    header: headerGpsphere.}
proc transformed*(this: GpSphere; t: GpTrsf): GpSphere {.noSideEffect,
    importcpp: "Transformed", header: headerGpsphere.}
proc translate*(this: var GpSphere; v: GpVec) {.importcpp: "Translate",
    header: headerGpsphere.}
proc translated*(this: GpSphere; v: GpVec): GpSphere {.noSideEffect,
    importcpp: "Translated", header: headerGpsphere.}
proc translate*(this: var GpSphere; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpsphere.}
proc translated*(this: GpSphere; p1: GpPnt; p2: GpPnt): GpSphere {.noSideEffect,
    importcpp: "Translated", header: headerGpsphere.}