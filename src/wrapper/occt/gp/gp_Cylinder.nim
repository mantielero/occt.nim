# /usr/include/opencascade/gp_Cylinder.hxx --> occt/gp/gp_Cylinder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpcylinder = "/usr/include/opencascade/gp_Cylinder.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpCylinder* {.importcpp: "gp_Cylinder", header: headerGpcylinder, bycopy.} = object


proc `new`*(this: var GpCylinder; theSize: csize_t): pointer {.
    importcpp: "gp_Cylinder::operator new", header: headerGpcylinder.}
proc `delete`*(this: var GpCylinder; theAddress: pointer) {.
    importcpp: "gp_Cylinder::operator delete", header: headerGpcylinder.}
proc `new[]`*(this: var GpCylinder; theSize: csize_t): pointer {.
    importcpp: "gp_Cylinder::operator new[]", header: headerGpcylinder.}
proc `delete[]`*(this: var GpCylinder; theAddress: pointer) {.
    importcpp: "gp_Cylinder::operator delete[]", header: headerGpcylinder.}
proc `new`*(this: var GpCylinder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Cylinder::operator new", header: headerGpcylinder.}
proc `delete`*(this: var GpCylinder; a2: pointer; a3: pointer) {.
    importcpp: "gp_Cylinder::operator delete", header: headerGpcylinder.}
proc constructGpCylinder*(): GpCylinder {.constructor, importcpp: "gp_Cylinder(@)",
                                       header: headerGpcylinder.}
proc constructGpCylinder*(a3: GpAx3; radius: StandardReal): GpCylinder {.constructor,
    importcpp: "gp_Cylinder(@)", header: headerGpcylinder.}
proc setAxis*(this: var GpCylinder; a1: GpAx1) {.importcpp: "SetAxis",
    header: headerGpcylinder.}
proc setLocation*(this: var GpCylinder; loc: GpPnt) {.importcpp: "SetLocation",
    header: headerGpcylinder.}
proc setPosition*(this: var GpCylinder; a3: GpAx3) {.importcpp: "SetPosition",
    header: headerGpcylinder.}
proc setRadius*(this: var GpCylinder; r: StandardReal) {.importcpp: "SetRadius",
    header: headerGpcylinder.}
proc uReverse*(this: var GpCylinder) {.importcpp: "UReverse", header: headerGpcylinder.}
proc vReverse*(this: var GpCylinder) {.importcpp: "VReverse", header: headerGpcylinder.}
proc direct*(this: GpCylinder): StandardBoolean {.noSideEffect, importcpp: "Direct",
    header: headerGpcylinder.}
proc axis*(this: GpCylinder): GpAx1 {.noSideEffect, importcpp: "Axis",
                                  header: headerGpcylinder.}
proc coefficients*(this: GpCylinder; a1: var StandardReal; a2: var StandardReal;
                  a3: var StandardReal; b1: var StandardReal; b2: var StandardReal;
                  b3: var StandardReal; c1: var StandardReal; c2: var StandardReal;
                  c3: var StandardReal; d: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: headerGpcylinder.}
proc location*(this: GpCylinder): GpPnt {.noSideEffect, importcpp: "Location",
                                      header: headerGpcylinder.}
proc position*(this: GpCylinder): GpAx3 {.noSideEffect, importcpp: "Position",
                                      header: headerGpcylinder.}
proc radius*(this: GpCylinder): StandardReal {.noSideEffect, importcpp: "Radius",
    header: headerGpcylinder.}
proc xAxis*(this: GpCylinder): GpAx1 {.noSideEffect, importcpp: "XAxis",
                                   header: headerGpcylinder.}
proc yAxis*(this: GpCylinder): GpAx1 {.noSideEffect, importcpp: "YAxis",
                                   header: headerGpcylinder.}
proc mirror*(this: var GpCylinder; p: GpPnt) {.importcpp: "Mirror",
    header: headerGpcylinder.}
proc mirrored*(this: GpCylinder; p: GpPnt): GpCylinder {.noSideEffect,
    importcpp: "Mirrored", header: headerGpcylinder.}
proc mirror*(this: var GpCylinder; a1: GpAx1) {.importcpp: "Mirror",
    header: headerGpcylinder.}
proc mirrored*(this: GpCylinder; a1: GpAx1): GpCylinder {.noSideEffect,
    importcpp: "Mirrored", header: headerGpcylinder.}
proc mirror*(this: var GpCylinder; a2: GpAx2) {.importcpp: "Mirror",
    header: headerGpcylinder.}
proc mirrored*(this: GpCylinder; a2: GpAx2): GpCylinder {.noSideEffect,
    importcpp: "Mirrored", header: headerGpcylinder.}
proc rotate*(this: var GpCylinder; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpcylinder.}
proc rotated*(this: GpCylinder; a1: GpAx1; ang: StandardReal): GpCylinder {.
    noSideEffect, importcpp: "Rotated", header: headerGpcylinder.}
proc scale*(this: var GpCylinder; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpcylinder.}
proc scaled*(this: GpCylinder; p: GpPnt; s: StandardReal): GpCylinder {.noSideEffect,
    importcpp: "Scaled", header: headerGpcylinder.}
proc transform*(this: var GpCylinder; t: GpTrsf) {.importcpp: "Transform",
    header: headerGpcylinder.}
proc transformed*(this: GpCylinder; t: GpTrsf): GpCylinder {.noSideEffect,
    importcpp: "Transformed", header: headerGpcylinder.}
proc translate*(this: var GpCylinder; v: GpVec) {.importcpp: "Translate",
    header: headerGpcylinder.}
proc translated*(this: GpCylinder; v: GpVec): GpCylinder {.noSideEffect,
    importcpp: "Translated", header: headerGpcylinder.}
proc translate*(this: var GpCylinder; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpcylinder.}
proc translated*(this: GpCylinder; p1: GpPnt; p2: GpPnt): GpCylinder {.noSideEffect,
    importcpp: "Translated", header: headerGpcylinder.}