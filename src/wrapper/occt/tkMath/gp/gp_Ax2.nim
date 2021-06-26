# /usr/include/opencascade/gp_Ax2.hxx --> occt/tkMath/gp/gp_Ax2.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpax2 = "/usr/include/opencascade/gp_Ax2.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpAx2* {.importcpp: "gp_Ax2", header: headerGpax2, bycopy.} = object


proc `new`*(this: var GpAx2; theSize: csize_t): pointer {.
    importcpp: "gp_Ax2::operator new", header: headerGpax2.}
proc `delete`*(this: var GpAx2; theAddress: pointer) {.
    importcpp: "gp_Ax2::operator delete", header: headerGpax2.}
proc `new[]`*(this: var GpAx2; theSize: csize_t): pointer {.
    importcpp: "gp_Ax2::operator new[]", header: headerGpax2.}
proc `delete[]`*(this: var GpAx2; theAddress: pointer) {.
    importcpp: "gp_Ax2::operator delete[]", header: headerGpax2.}
proc `new`*(this: var GpAx2; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax2::operator new", header: headerGpax2.}
proc `delete`*(this: var GpAx2; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax2::operator delete", header: headerGpax2.}
proc constructGpAx2*(): GpAx2 {.constructor, importcpp: "gp_Ax2(@)",
                             header: headerGpax2.}
proc constructGpAx2*(p: GpPnt; n: GpDir; vx: GpDir): GpAx2 {.constructor,
    importcpp: "gp_Ax2(@)", header: headerGpax2.}
proc constructGpAx2*(p: GpPnt; v: GpDir): GpAx2 {.constructor, importcpp: "gp_Ax2(@)",
    header: headerGpax2.}
proc setAxis*(this: var GpAx2; a1: GpAx1) {.importcpp: "SetAxis", header: headerGpax2.}
proc setDirection*(this: var GpAx2; v: GpDir) {.importcpp: "SetDirection",
    header: headerGpax2.}
proc setLocation*(this: var GpAx2; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGpax2.}
proc setXDirection*(this: var GpAx2; vx: GpDir) {.importcpp: "SetXDirection",
    header: headerGpax2.}
proc setYDirection*(this: var GpAx2; vy: GpDir) {.importcpp: "SetYDirection",
    header: headerGpax2.}
proc angle*(this: GpAx2; other: GpAx2): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpax2.}
proc axis*(this: GpAx2): GpAx1 {.noSideEffect, importcpp: "Axis", header: headerGpax2.}
proc direction*(this: GpAx2): GpDir {.noSideEffect, importcpp: "Direction",
                                  header: headerGpax2.}
proc location*(this: GpAx2): GpPnt {.noSideEffect, importcpp: "Location",
                                 header: headerGpax2.}
proc xDirection*(this: GpAx2): GpDir {.noSideEffect, importcpp: "XDirection",
                                   header: headerGpax2.}
proc yDirection*(this: GpAx2): GpDir {.noSideEffect, importcpp: "YDirection",
                                   header: headerGpax2.}
proc isCoplanar*(this: GpAx2; other: GpAx2; linearTolerance: StandardReal;
                angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoplanar", header: headerGpax2.}
proc isCoplanar*(this: GpAx2; a1: GpAx1; linearTolerance: StandardReal;
                angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoplanar", header: headerGpax2.}
proc mirror*(this: var GpAx2; p: GpPnt) {.importcpp: "Mirror", header: headerGpax2.}
proc mirrored*(this: GpAx2; p: GpPnt): GpAx2 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax2.}
proc mirror*(this: var GpAx2; a1: GpAx1) {.importcpp: "Mirror", header: headerGpax2.}
proc mirrored*(this: GpAx2; a1: GpAx1): GpAx2 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax2.}
proc mirror*(this: var GpAx2; a2: GpAx2) {.importcpp: "Mirror", header: headerGpax2.}
proc mirrored*(this: GpAx2; a2: GpAx2): GpAx2 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax2.}
proc rotate*(this: var GpAx2; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpax2.}
proc rotated*(this: GpAx2; a1: GpAx1; ang: StandardReal): GpAx2 {.noSideEffect,
    importcpp: "Rotated", header: headerGpax2.}
proc scale*(this: var GpAx2; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpax2.}
proc scaled*(this: GpAx2; p: GpPnt; s: StandardReal): GpAx2 {.noSideEffect,
    importcpp: "Scaled", header: headerGpax2.}
proc transform*(this: var GpAx2; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGpax2.}
proc transformed*(this: GpAx2; t: GpTrsf): GpAx2 {.noSideEffect,
    importcpp: "Transformed", header: headerGpax2.}
proc translate*(this: var GpAx2; v: GpVec) {.importcpp: "Translate", header: headerGpax2.}
proc translated*(this: GpAx2; v: GpVec): GpAx2 {.noSideEffect, importcpp: "Translated",
    header: headerGpax2.}
proc translate*(this: var GpAx2; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpax2.}
proc translated*(this: GpAx2; p1: GpPnt; p2: GpPnt): GpAx2 {.noSideEffect,
    importcpp: "Translated", header: headerGpax2.}
proc dumpJson*(this: GpAx2; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpax2.}
proc initFromJson*(this: var GpAx2; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGpax2.}