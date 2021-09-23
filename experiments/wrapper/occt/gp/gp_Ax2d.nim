# /usr/include/opencascade/gp_Ax2d.hxx --> occt/gp/gp_Ax2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpax2d = "/usr/include/opencascade/gp_Ax2d.hxx"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpAx2d* {.importcpp: "gp_Ax2d", header: headerGpax2d, bycopy.} = object


proc `new`*(this: var GpAx2d; theSize: csize_t): pointer {.
    importcpp: "gp_Ax2d::operator new", header: headerGpax2d.}
proc `delete`*(this: var GpAx2d; theAddress: pointer) {.
    importcpp: "gp_Ax2d::operator delete", header: headerGpax2d.}
proc `new[]`*(this: var GpAx2d; theSize: csize_t): pointer {.
    importcpp: "gp_Ax2d::operator new[]", header: headerGpax2d.}
proc `delete[]`*(this: var GpAx2d; theAddress: pointer) {.
    importcpp: "gp_Ax2d::operator delete[]", header: headerGpax2d.}
proc `new`*(this: var GpAx2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax2d::operator new", header: headerGpax2d.}
proc `delete`*(this: var GpAx2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax2d::operator delete", header: headerGpax2d.}
proc constructGpAx2d*(): GpAx2d {.constructor, importcpp: "gp_Ax2d(@)",
                               header: headerGpax2d.}
proc constructGpAx2d*(p: GpPnt2d; v: GpDir2d): GpAx2d {.constructor,
    importcpp: "gp_Ax2d(@)", header: headerGpax2d.}
proc setLocation*(this: var GpAx2d; locat: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGpax2d.}
proc setDirection*(this: var GpAx2d; v: GpDir2d) {.importcpp: "SetDirection",
    header: headerGpax2d.}
proc location*(this: GpAx2d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                    header: headerGpax2d.}
proc direction*(this: GpAx2d): GpDir2d {.noSideEffect, importcpp: "Direction",
                                     header: headerGpax2d.}
proc isCoaxial*(this: GpAx2d; other: GpAx2d; angularTolerance: StandardReal;
               linearTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoaxial", header: headerGpax2d.}
proc isNormal*(this: GpAx2d; other: GpAx2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: headerGpax2d.}
proc isOpposite*(this: GpAx2d; other: GpAx2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: headerGpax2d.}
proc isParallel*(this: GpAx2d; other: GpAx2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: headerGpax2d.}
proc angle*(this: GpAx2d; other: GpAx2d): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpax2d.}
proc reverse*(this: var GpAx2d) {.importcpp: "Reverse", header: headerGpax2d.}
proc reversed*(this: GpAx2d): GpAx2d {.noSideEffect, importcpp: "Reversed",
                                   header: headerGpax2d.}
proc mirror*(this: var GpAx2d; p: GpPnt2d) {.importcpp: "Mirror", header: headerGpax2d.}
proc mirrored*(this: GpAx2d; p: GpPnt2d): GpAx2d {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax2d.}
proc mirror*(this: var GpAx2d; a: GpAx2d) {.importcpp: "Mirror", header: headerGpax2d.}
proc mirrored*(this: GpAx2d; a: GpAx2d): GpAx2d {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax2d.}
proc rotate*(this: var GpAx2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpax2d.}
proc rotated*(this: GpAx2d; p: GpPnt2d; ang: StandardReal): GpAx2d {.noSideEffect,
    importcpp: "Rotated", header: headerGpax2d.}
proc scale*(this: var GpAx2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGpax2d.}
proc scaled*(this: GpAx2d; p: GpPnt2d; s: StandardReal): GpAx2d {.noSideEffect,
    importcpp: "Scaled", header: headerGpax2d.}
proc transform*(this: var GpAx2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpax2d.}
proc transformed*(this: GpAx2d; t: GpTrsf2d): GpAx2d {.noSideEffect,
    importcpp: "Transformed", header: headerGpax2d.}
proc translate*(this: var GpAx2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGpax2d.}
proc translated*(this: GpAx2d; v: GpVec2d): GpAx2d {.noSideEffect,
    importcpp: "Translated", header: headerGpax2d.}
proc translate*(this: var GpAx2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGpax2d.}
proc translated*(this: GpAx2d; p1: GpPnt2d; p2: GpPnt2d): GpAx2d {.noSideEffect,
    importcpp: "Translated", header: headerGpax2d.}
proc dumpJson*(this: GpAx2d; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpax2d.}