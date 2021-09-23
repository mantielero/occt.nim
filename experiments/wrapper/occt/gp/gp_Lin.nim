# /usr/include/opencascade/gp_Lin.hxx --> occt/gp/gp_Lin.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGplin = "/usr/include/opencascade/gp_Lin.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpLin* {.importcpp: "gp_Lin", header: headerGplin, bycopy.} = object


proc `new`*(this: var GpLin; theSize: csize_t): pointer {.
    importcpp: "gp_Lin::operator new", header: headerGplin.}
proc `delete`*(this: var GpLin; theAddress: pointer) {.
    importcpp: "gp_Lin::operator delete", header: headerGplin.}
proc `new[]`*(this: var GpLin; theSize: csize_t): pointer {.
    importcpp: "gp_Lin::operator new[]", header: headerGplin.}
proc `delete[]`*(this: var GpLin; theAddress: pointer) {.
    importcpp: "gp_Lin::operator delete[]", header: headerGplin.}
proc `new`*(this: var GpLin; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Lin::operator new", header: headerGplin.}
proc `delete`*(this: var GpLin; a2: pointer; a3: pointer) {.
    importcpp: "gp_Lin::operator delete", header: headerGplin.}
proc constructGpLin*(): GpLin {.constructor, importcpp: "gp_Lin(@)",
                             header: headerGplin.}
proc constructGpLin*(a1: GpAx1): GpLin {.constructor, importcpp: "gp_Lin(@)",
                                     header: headerGplin.}
proc constructGpLin*(p: GpPnt; v: GpDir): GpLin {.constructor, importcpp: "gp_Lin(@)",
    header: headerGplin.}
proc reverse*(this: var GpLin) {.importcpp: "Reverse", header: headerGplin.}
proc reversed*(this: GpLin): GpLin {.noSideEffect, importcpp: "Reversed",
                                 header: headerGplin.}
proc setDirection*(this: var GpLin; v: GpDir) {.importcpp: "SetDirection",
    header: headerGplin.}
proc setLocation*(this: var GpLin; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGplin.}
proc setPosition*(this: var GpLin; a1: GpAx1) {.importcpp: "SetPosition",
    header: headerGplin.}
proc direction*(this: GpLin): GpDir {.noSideEffect, importcpp: "Direction",
                                  header: headerGplin.}
proc location*(this: GpLin): GpPnt {.noSideEffect, importcpp: "Location",
                                 header: headerGplin.}
proc position*(this: GpLin): GpAx1 {.noSideEffect, importcpp: "Position",
                                 header: headerGplin.}
proc angle*(this: GpLin; other: GpLin): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGplin.}
proc contains*(this: GpLin; p: GpPnt; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: headerGplin.}
proc distance*(this: GpLin; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGplin.}
proc distance*(this: GpLin; other: GpLin): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGplin.}
proc squareDistance*(this: GpLin; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGplin.}
proc squareDistance*(this: GpLin; other: GpLin): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGplin.}
proc normal*(this: GpLin; p: GpPnt): GpLin {.noSideEffect, importcpp: "Normal",
                                       header: headerGplin.}
proc mirror*(this: var GpLin; p: GpPnt) {.importcpp: "Mirror", header: headerGplin.}
proc mirrored*(this: GpLin; p: GpPnt): GpLin {.noSideEffect, importcpp: "Mirrored",
    header: headerGplin.}
proc mirror*(this: var GpLin; a1: GpAx1) {.importcpp: "Mirror", header: headerGplin.}
proc mirrored*(this: GpLin; a1: GpAx1): GpLin {.noSideEffect, importcpp: "Mirrored",
    header: headerGplin.}
proc mirror*(this: var GpLin; a2: GpAx2) {.importcpp: "Mirror", header: headerGplin.}
proc mirrored*(this: GpLin; a2: GpAx2): GpLin {.noSideEffect, importcpp: "Mirrored",
    header: headerGplin.}
proc rotate*(this: var GpLin; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGplin.}
proc rotated*(this: GpLin; a1: GpAx1; ang: StandardReal): GpLin {.noSideEffect,
    importcpp: "Rotated", header: headerGplin.}
proc scale*(this: var GpLin; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGplin.}
proc scaled*(this: GpLin; p: GpPnt; s: StandardReal): GpLin {.noSideEffect,
    importcpp: "Scaled", header: headerGplin.}
proc transform*(this: var GpLin; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGplin.}
proc transformed*(this: GpLin; t: GpTrsf): GpLin {.noSideEffect,
    importcpp: "Transformed", header: headerGplin.}
proc translate*(this: var GpLin; v: GpVec) {.importcpp: "Translate", header: headerGplin.}
proc translated*(this: GpLin; v: GpVec): GpLin {.noSideEffect, importcpp: "Translated",
    header: headerGplin.}
proc translate*(this: var GpLin; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGplin.}
proc translated*(this: GpLin; p1: GpPnt; p2: GpPnt): GpLin {.noSideEffect,
    importcpp: "Translated", header: headerGplin.}