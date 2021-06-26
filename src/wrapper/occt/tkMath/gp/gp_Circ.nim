# /usr/include/opencascade/gp_Circ.hxx --> occt/tkMath/gp/gp_Circ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpcirc = "/usr/include/opencascade/gp_Circ.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpCirc* {.importcpp: "gp_Circ", header: headerGpcirc, bycopy.} = object


proc `new`*(this: var GpCirc; theSize: csize_t): pointer {.
    importcpp: "gp_Circ::operator new", header: headerGpcirc.}
proc `delete`*(this: var GpCirc; theAddress: pointer) {.
    importcpp: "gp_Circ::operator delete", header: headerGpcirc.}
proc `new[]`*(this: var GpCirc; theSize: csize_t): pointer {.
    importcpp: "gp_Circ::operator new[]", header: headerGpcirc.}
proc `delete[]`*(this: var GpCirc; theAddress: pointer) {.
    importcpp: "gp_Circ::operator delete[]", header: headerGpcirc.}
proc `new`*(this: var GpCirc; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Circ::operator new", header: headerGpcirc.}
proc `delete`*(this: var GpCirc; a2: pointer; a3: pointer) {.
    importcpp: "gp_Circ::operator delete", header: headerGpcirc.}
proc constructGpCirc*(): GpCirc {.constructor, importcpp: "gp_Circ(@)",
                               header: headerGpcirc.}
proc constructGpCirc*(a2: GpAx2; radius: StandardReal): GpCirc {.constructor,
    importcpp: "gp_Circ(@)", header: headerGpcirc.}
proc setAxis*(this: var GpCirc; a1: GpAx1) {.importcpp: "SetAxis", header: headerGpcirc.}
proc setLocation*(this: var GpCirc; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGpcirc.}
proc setPosition*(this: var GpCirc; a2: GpAx2) {.importcpp: "SetPosition",
    header: headerGpcirc.}
proc setRadius*(this: var GpCirc; radius: StandardReal) {.importcpp: "SetRadius",
    header: headerGpcirc.}
proc area*(this: GpCirc): StandardReal {.noSideEffect, importcpp: "Area",
                                     header: headerGpcirc.}
proc axis*(this: GpCirc): GpAx1 {.noSideEffect, importcpp: "Axis", header: headerGpcirc.}
proc length*(this: GpCirc): StandardReal {.noSideEffect, importcpp: "Length",
                                       header: headerGpcirc.}
proc location*(this: GpCirc): GpPnt {.noSideEffect, importcpp: "Location",
                                  header: headerGpcirc.}
proc position*(this: GpCirc): GpAx2 {.noSideEffect, importcpp: "Position",
                                  header: headerGpcirc.}
proc radius*(this: GpCirc): StandardReal {.noSideEffect, importcpp: "Radius",
                                       header: headerGpcirc.}
proc xAxis*(this: GpCirc): GpAx1 {.noSideEffect, importcpp: "XAxis",
                               header: headerGpcirc.}
proc yAxis*(this: GpCirc): GpAx1 {.noSideEffect, importcpp: "YAxis",
                               header: headerGpcirc.}
proc distance*(this: GpCirc; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGpcirc.}
proc squareDistance*(this: GpCirc; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGpcirc.}
proc contains*(this: GpCirc; p: GpPnt; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: headerGpcirc.}
proc mirror*(this: var GpCirc; p: GpPnt) {.importcpp: "Mirror", header: headerGpcirc.}
proc mirrored*(this: GpCirc; p: GpPnt): GpCirc {.noSideEffect, importcpp: "Mirrored",
    header: headerGpcirc.}
proc mirror*(this: var GpCirc; a1: GpAx1) {.importcpp: "Mirror", header: headerGpcirc.}
proc mirrored*(this: GpCirc; a1: GpAx1): GpCirc {.noSideEffect, importcpp: "Mirrored",
    header: headerGpcirc.}
proc mirror*(this: var GpCirc; a2: GpAx2) {.importcpp: "Mirror", header: headerGpcirc.}
proc mirrored*(this: GpCirc; a2: GpAx2): GpCirc {.noSideEffect, importcpp: "Mirrored",
    header: headerGpcirc.}
proc rotate*(this: var GpCirc; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpcirc.}
proc rotated*(this: GpCirc; a1: GpAx1; ang: StandardReal): GpCirc {.noSideEffect,
    importcpp: "Rotated", header: headerGpcirc.}
proc scale*(this: var GpCirc; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpcirc.}
proc scaled*(this: GpCirc; p: GpPnt; s: StandardReal): GpCirc {.noSideEffect,
    importcpp: "Scaled", header: headerGpcirc.}
proc transform*(this: var GpCirc; t: GpTrsf) {.importcpp: "Transform",
    header: headerGpcirc.}
proc transformed*(this: GpCirc; t: GpTrsf): GpCirc {.noSideEffect,
    importcpp: "Transformed", header: headerGpcirc.}
proc translate*(this: var GpCirc; v: GpVec) {.importcpp: "Translate",
                                        header: headerGpcirc.}
proc translated*(this: GpCirc; v: GpVec): GpCirc {.noSideEffect,
    importcpp: "Translated", header: headerGpcirc.}
proc translate*(this: var GpCirc; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpcirc.}
proc translated*(this: GpCirc; p1: GpPnt; p2: GpPnt): GpCirc {.noSideEffect,
    importcpp: "Translated", header: headerGpcirc.}