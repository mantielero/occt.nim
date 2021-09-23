# /usr/include/opencascade/gp_Ax22d.hxx --> occt/gp/gp_Ax22d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpax22d = "/usr/include/opencascade/gp_Ax22d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpAx22d* {.importcpp: "gp_Ax22d", header: headerGpax22d, bycopy.} = object


proc `new`*(this: var GpAx22d; theSize: csize_t): pointer {.
    importcpp: "gp_Ax22d::operator new", header: headerGpax22d.}
proc `delete`*(this: var GpAx22d; theAddress: pointer) {.
    importcpp: "gp_Ax22d::operator delete", header: headerGpax22d.}
proc `new[]`*(this: var GpAx22d; theSize: csize_t): pointer {.
    importcpp: "gp_Ax22d::operator new[]", header: headerGpax22d.}
proc `delete[]`*(this: var GpAx22d; theAddress: pointer) {.
    importcpp: "gp_Ax22d::operator delete[]", header: headerGpax22d.}
proc `new`*(this: var GpAx22d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax22d::operator new", header: headerGpax22d.}
proc `delete`*(this: var GpAx22d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax22d::operator delete", header: headerGpax22d.}
proc constructGpAx22d*(): GpAx22d {.constructor, importcpp: "gp_Ax22d(@)",
                                 header: headerGpax22d.}
proc constructGpAx22d*(p: GpPnt2d; vx: GpDir2d; vy: GpDir2d): GpAx22d {.constructor,
    importcpp: "gp_Ax22d(@)", header: headerGpax22d.}
proc constructGpAx22d*(p: GpPnt2d; v: GpDir2d; sense: StandardBoolean = true): GpAx22d {.
    constructor, importcpp: "gp_Ax22d(@)", header: headerGpax22d.}
proc constructGpAx22d*(a: GpAx2d; sense: StandardBoolean = true): GpAx22d {.constructor,
    importcpp: "gp_Ax22d(@)", header: headerGpax22d.}
proc setAxis*(this: var GpAx22d; a1: GpAx22d) {.importcpp: "SetAxis",
    header: headerGpax22d.}
proc setXAxis*(this: var GpAx22d; a1: GpAx2d) {.importcpp: "SetXAxis",
    header: headerGpax22d.}
proc setYAxis*(this: var GpAx22d; a1: GpAx2d) {.importcpp: "SetYAxis",
    header: headerGpax22d.}
proc setLocation*(this: var GpAx22d; p: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGpax22d.}
proc setXDirection*(this: var GpAx22d; vx: GpDir2d) {.importcpp: "SetXDirection",
    header: headerGpax22d.}
proc setYDirection*(this: var GpAx22d; vy: GpDir2d) {.importcpp: "SetYDirection",
    header: headerGpax22d.}
proc xAxis*(this: GpAx22d): GpAx2d {.noSideEffect, importcpp: "XAxis",
                                 header: headerGpax22d.}
proc yAxis*(this: GpAx22d): GpAx2d {.noSideEffect, importcpp: "YAxis",
                                 header: headerGpax22d.}
proc location*(this: GpAx22d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                     header: headerGpax22d.}
proc xDirection*(this: GpAx22d): GpDir2d {.noSideEffect, importcpp: "XDirection",
                                       header: headerGpax22d.}
proc yDirection*(this: GpAx22d): GpDir2d {.noSideEffect, importcpp: "YDirection",
                                       header: headerGpax22d.}
proc mirror*(this: var GpAx22d; p: GpPnt2d) {.importcpp: "Mirror", header: headerGpax22d.}
proc mirrored*(this: GpAx22d; p: GpPnt2d): GpAx22d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpax22d.}
proc mirror*(this: var GpAx22d; a: GpAx2d) {.importcpp: "Mirror", header: headerGpax22d.}
proc mirrored*(this: GpAx22d; a: GpAx2d): GpAx22d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpax22d.}
proc rotate*(this: var GpAx22d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpax22d.}
proc rotated*(this: GpAx22d; p: GpPnt2d; ang: StandardReal): GpAx22d {.noSideEffect,
    importcpp: "Rotated", header: headerGpax22d.}
proc scale*(this: var GpAx22d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGpax22d.}
proc scaled*(this: GpAx22d; p: GpPnt2d; s: StandardReal): GpAx22d {.noSideEffect,
    importcpp: "Scaled", header: headerGpax22d.}
proc transform*(this: var GpAx22d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpax22d.}
proc transformed*(this: GpAx22d; t: GpTrsf2d): GpAx22d {.noSideEffect,
    importcpp: "Transformed", header: headerGpax22d.}
proc translate*(this: var GpAx22d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGpax22d.}
proc translated*(this: GpAx22d; v: GpVec2d): GpAx22d {.noSideEffect,
    importcpp: "Translated", header: headerGpax22d.}
proc translate*(this: var GpAx22d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGpax22d.}
proc translated*(this: GpAx22d; p1: GpPnt2d; p2: GpPnt2d): GpAx22d {.noSideEffect,
    importcpp: "Translated", header: headerGpax22d.}
proc dumpJson*(this: GpAx22d; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpax22d.}