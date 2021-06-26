# /usr/include/opencascade/gp_Parab2d.hxx --> occt/gp/gp_Parab2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpparab2d = "/usr/include/opencascade/gp_Parab2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpParab2d* {.importcpp: "gp_Parab2d", header: headerGpparab2d, bycopy.} = object


proc `new`*(this: var GpParab2d; theSize: csize_t): pointer {.
    importcpp: "gp_Parab2d::operator new", header: headerGpparab2d.}
proc `delete`*(this: var GpParab2d; theAddress: pointer) {.
    importcpp: "gp_Parab2d::operator delete", header: headerGpparab2d.}
proc `new[]`*(this: var GpParab2d; theSize: csize_t): pointer {.
    importcpp: "gp_Parab2d::operator new[]", header: headerGpparab2d.}
proc `delete[]`*(this: var GpParab2d; theAddress: pointer) {.
    importcpp: "gp_Parab2d::operator delete[]", header: headerGpparab2d.}
proc `new`*(this: var GpParab2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Parab2d::operator new", header: headerGpparab2d.}
proc `delete`*(this: var GpParab2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Parab2d::operator delete", header: headerGpparab2d.}
proc constructGpParab2d*(): GpParab2d {.constructor, importcpp: "gp_Parab2d(@)",
                                     header: headerGpparab2d.}
proc constructGpParab2d*(theMirrorAxis: GpAx2d; theFocalLength: StandardReal;
                        theSense: StandardBoolean = true): GpParab2d {.constructor,
    importcpp: "gp_Parab2d(@)", header: headerGpparab2d.}
proc constructGpParab2d*(theAxes: GpAx22d; theFocalLength: StandardReal): GpParab2d {.
    constructor, importcpp: "gp_Parab2d(@)", header: headerGpparab2d.}
proc constructGpParab2d*(theDirectrix: GpAx2d; theFocus: GpPnt2d;
                        theSense: StandardBoolean = true): GpParab2d {.constructor,
    importcpp: "gp_Parab2d(@)", header: headerGpparab2d.}
proc setFocal*(this: var GpParab2d; focal: StandardReal) {.importcpp: "SetFocal",
    header: headerGpparab2d.}
proc setLocation*(this: var GpParab2d; p: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGpparab2d.}
proc setMirrorAxis*(this: var GpParab2d; a: GpAx2d) {.importcpp: "SetMirrorAxis",
    header: headerGpparab2d.}
proc setAxis*(this: var GpParab2d; a: GpAx22d) {.importcpp: "SetAxis",
    header: headerGpparab2d.}
proc coefficients*(this: GpParab2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: headerGpparab2d.}
proc directrix*(this: GpParab2d): GpAx2d {.noSideEffect, importcpp: "Directrix",
                                       header: headerGpparab2d.}
proc focal*(this: GpParab2d): StandardReal {.noSideEffect, importcpp: "Focal",
    header: headerGpparab2d.}
proc focus*(this: GpParab2d): GpPnt2d {.noSideEffect, importcpp: "Focus",
                                    header: headerGpparab2d.}
proc location*(this: GpParab2d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                       header: headerGpparab2d.}
proc mirrorAxis*(this: GpParab2d): GpAx2d {.noSideEffect, importcpp: "MirrorAxis",
                                        header: headerGpparab2d.}
proc axis*(this: GpParab2d): GpAx22d {.noSideEffect, importcpp: "Axis",
                                   header: headerGpparab2d.}
proc parameter*(this: GpParab2d): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: headerGpparab2d.}
proc reverse*(this: var GpParab2d) {.importcpp: "Reverse", header: headerGpparab2d.}
proc reversed*(this: GpParab2d): GpParab2d {.noSideEffect, importcpp: "Reversed",
    header: headerGpparab2d.}
proc isDirect*(this: GpParab2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDirect", header: headerGpparab2d.}
proc mirror*(this: var GpParab2d; p: GpPnt2d) {.importcpp: "Mirror",
    header: headerGpparab2d.}
proc mirrored*(this: GpParab2d; p: GpPnt2d): GpParab2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpparab2d.}
proc mirror*(this: var GpParab2d; a: GpAx2d) {.importcpp: "Mirror",
    header: headerGpparab2d.}
proc mirrored*(this: GpParab2d; a: GpAx2d): GpParab2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpparab2d.}
proc rotate*(this: var GpParab2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpparab2d.}
proc rotated*(this: GpParab2d; p: GpPnt2d; ang: StandardReal): GpParab2d {.noSideEffect,
    importcpp: "Rotated", header: headerGpparab2d.}
proc scale*(this: var GpParab2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGpparab2d.}
proc scaled*(this: GpParab2d; p: GpPnt2d; s: StandardReal): GpParab2d {.noSideEffect,
    importcpp: "Scaled", header: headerGpparab2d.}
proc transform*(this: var GpParab2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpparab2d.}
proc transformed*(this: GpParab2d; t: GpTrsf2d): GpParab2d {.noSideEffect,
    importcpp: "Transformed", header: headerGpparab2d.}
proc translate*(this: var GpParab2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGpparab2d.}
proc translated*(this: GpParab2d; v: GpVec2d): GpParab2d {.noSideEffect,
    importcpp: "Translated", header: headerGpparab2d.}
proc translate*(this: var GpParab2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGpparab2d.}
proc translated*(this: GpParab2d; p1: GpPnt2d; p2: GpPnt2d): GpParab2d {.noSideEffect,
    importcpp: "Translated", header: headerGpparab2d.}