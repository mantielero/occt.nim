# /usr/include/opencascade/gp_Parab.hxx --> occt/tkMath/gp/gp_Parab.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpparab = "/usr/include/opencascade/gp_Parab.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpParab* {.importcpp: "gp_Parab", header: headerGpparab, bycopy.} = object


proc `new`*(this: var GpParab; theSize: csize_t): pointer {.
    importcpp: "gp_Parab::operator new", header: headerGpparab.}
proc `delete`*(this: var GpParab; theAddress: pointer) {.
    importcpp: "gp_Parab::operator delete", header: headerGpparab.}
proc `new[]`*(this: var GpParab; theSize: csize_t): pointer {.
    importcpp: "gp_Parab::operator new[]", header: headerGpparab.}
proc `delete[]`*(this: var GpParab; theAddress: pointer) {.
    importcpp: "gp_Parab::operator delete[]", header: headerGpparab.}
proc `new`*(this: var GpParab; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Parab::operator new", header: headerGpparab.}
proc `delete`*(this: var GpParab; a2: pointer; a3: pointer) {.
    importcpp: "gp_Parab::operator delete", header: headerGpparab.}
proc constructGpParab*(): GpParab {.constructor, importcpp: "gp_Parab(@)",
                                 header: headerGpparab.}
proc constructGpParab*(a2: GpAx2; focal: StandardReal): GpParab {.constructor,
    importcpp: "gp_Parab(@)", header: headerGpparab.}
proc constructGpParab*(d: GpAx1; f: GpPnt): GpParab {.constructor,
    importcpp: "gp_Parab(@)", header: headerGpparab.}
proc setAxis*(this: var GpParab; a1: GpAx1) {.importcpp: "SetAxis",
                                        header: headerGpparab.}
proc setFocal*(this: var GpParab; focal: StandardReal) {.importcpp: "SetFocal",
    header: headerGpparab.}
proc setLocation*(this: var GpParab; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGpparab.}
proc setPosition*(this: var GpParab; a2: GpAx2) {.importcpp: "SetPosition",
    header: headerGpparab.}
proc axis*(this: GpParab): GpAx1 {.noSideEffect, importcpp: "Axis",
                               header: headerGpparab.}
proc directrix*(this: GpParab): GpAx1 {.noSideEffect, importcpp: "Directrix",
                                    header: headerGpparab.}
proc focal*(this: GpParab): StandardReal {.noSideEffect, importcpp: "Focal",
                                       header: headerGpparab.}
proc focus*(this: GpParab): GpPnt {.noSideEffect, importcpp: "Focus",
                                header: headerGpparab.}
proc location*(this: GpParab): GpPnt {.noSideEffect, importcpp: "Location",
                                   header: headerGpparab.}
proc parameter*(this: GpParab): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: headerGpparab.}
proc position*(this: GpParab): GpAx2 {.noSideEffect, importcpp: "Position",
                                   header: headerGpparab.}
proc xAxis*(this: GpParab): GpAx1 {.noSideEffect, importcpp: "XAxis",
                                header: headerGpparab.}
proc yAxis*(this: GpParab): GpAx1 {.noSideEffect, importcpp: "YAxis",
                                header: headerGpparab.}
proc mirror*(this: var GpParab; p: GpPnt) {.importcpp: "Mirror", header: headerGpparab.}
proc mirrored*(this: GpParab; p: GpPnt): GpParab {.noSideEffect, importcpp: "Mirrored",
    header: headerGpparab.}
proc mirror*(this: var GpParab; a1: GpAx1) {.importcpp: "Mirror", header: headerGpparab.}
proc mirrored*(this: GpParab; a1: GpAx1): GpParab {.noSideEffect,
    importcpp: "Mirrored", header: headerGpparab.}
proc mirror*(this: var GpParab; a2: GpAx2) {.importcpp: "Mirror", header: headerGpparab.}
proc mirrored*(this: GpParab; a2: GpAx2): GpParab {.noSideEffect,
    importcpp: "Mirrored", header: headerGpparab.}
proc rotate*(this: var GpParab; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpparab.}
proc rotated*(this: GpParab; a1: GpAx1; ang: StandardReal): GpParab {.noSideEffect,
    importcpp: "Rotated", header: headerGpparab.}
proc scale*(this: var GpParab; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpparab.}
proc scaled*(this: GpParab; p: GpPnt; s: StandardReal): GpParab {.noSideEffect,
    importcpp: "Scaled", header: headerGpparab.}
proc transform*(this: var GpParab; t: GpTrsf) {.importcpp: "Transform",
    header: headerGpparab.}
proc transformed*(this: GpParab; t: GpTrsf): GpParab {.noSideEffect,
    importcpp: "Transformed", header: headerGpparab.}
proc translate*(this: var GpParab; v: GpVec) {.importcpp: "Translate",
    header: headerGpparab.}
proc translated*(this: GpParab; v: GpVec): GpParab {.noSideEffect,
    importcpp: "Translated", header: headerGpparab.}
proc translate*(this: var GpParab; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpparab.}
proc translated*(this: GpParab; p1: GpPnt; p2: GpPnt): GpParab {.noSideEffect,
    importcpp: "Translated", header: headerGpparab.}