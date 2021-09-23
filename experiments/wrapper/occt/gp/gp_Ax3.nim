# /usr/include/opencascade/gp_Ax3.hxx --> occt/gp/gp_Ax3.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpax3 = "/usr/include/opencascade/gp_Ax3.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpAx3* {.importcpp: "gp_Ax3", header: headerGpax3, bycopy.} = object


proc `new`*(this: var GpAx3; theSize: csize_t): pointer {.
    importcpp: "gp_Ax3::operator new", header: headerGpax3.}
proc `delete`*(this: var GpAx3; theAddress: pointer) {.
    importcpp: "gp_Ax3::operator delete", header: headerGpax3.}
proc `new[]`*(this: var GpAx3; theSize: csize_t): pointer {.
    importcpp: "gp_Ax3::operator new[]", header: headerGpax3.}
proc `delete[]`*(this: var GpAx3; theAddress: pointer) {.
    importcpp: "gp_Ax3::operator delete[]", header: headerGpax3.}
proc `new`*(this: var GpAx3; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax3::operator new", header: headerGpax3.}
proc `delete`*(this: var GpAx3; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax3::operator delete", header: headerGpax3.}
proc constructGpAx3*(): GpAx3 {.constructor, importcpp: "gp_Ax3(@)",
                             header: headerGpax3.}
proc constructGpAx3*(a: GpAx2): GpAx3 {.constructor, importcpp: "gp_Ax3(@)",
                                    header: headerGpax3.}
proc constructGpAx3*(p: GpPnt; n: GpDir; vx: GpDir): GpAx3 {.constructor,
    importcpp: "gp_Ax3(@)", header: headerGpax3.}
proc constructGpAx3*(p: GpPnt; v: GpDir): GpAx3 {.constructor, importcpp: "gp_Ax3(@)",
    header: headerGpax3.}
proc xReverse*(this: var GpAx3) {.importcpp: "XReverse", header: headerGpax3.}
proc yReverse*(this: var GpAx3) {.importcpp: "YReverse", header: headerGpax3.}
proc zReverse*(this: var GpAx3) {.importcpp: "ZReverse", header: headerGpax3.}
proc setAxis*(this: var GpAx3; a1: GpAx1) {.importcpp: "SetAxis", header: headerGpax3.}
proc setDirection*(this: var GpAx3; v: GpDir) {.importcpp: "SetDirection",
    header: headerGpax3.}
proc setLocation*(this: var GpAx3; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGpax3.}
proc setXDirection*(this: var GpAx3; vx: GpDir) {.importcpp: "SetXDirection",
    header: headerGpax3.}
proc setYDirection*(this: var GpAx3; vy: GpDir) {.importcpp: "SetYDirection",
    header: headerGpax3.}
proc angle*(this: GpAx3; other: GpAx3): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpax3.}
proc axis*(this: GpAx3): GpAx1 {.noSideEffect, importcpp: "Axis", header: headerGpax3.}
proc ax2*(this: GpAx3): GpAx2 {.noSideEffect, importcpp: "Ax2", header: headerGpax3.}
proc direction*(this: GpAx3): GpDir {.noSideEffect, importcpp: "Direction",
                                  header: headerGpax3.}
proc location*(this: GpAx3): GpPnt {.noSideEffect, importcpp: "Location",
                                 header: headerGpax3.}
proc xDirection*(this: GpAx3): GpDir {.noSideEffect, importcpp: "XDirection",
                                   header: headerGpax3.}
proc yDirection*(this: GpAx3): GpDir {.noSideEffect, importcpp: "YDirection",
                                   header: headerGpax3.}
proc direct*(this: GpAx3): StandardBoolean {.noSideEffect, importcpp: "Direct",
    header: headerGpax3.}
proc isCoplanar*(this: GpAx3; other: GpAx3; linearTolerance: StandardReal;
                angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoplanar", header: headerGpax3.}
proc isCoplanar*(this: GpAx3; a1: GpAx1; linearTolerance: StandardReal;
                angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoplanar", header: headerGpax3.}
proc mirror*(this: var GpAx3; p: GpPnt) {.importcpp: "Mirror", header: headerGpax3.}
proc mirrored*(this: GpAx3; p: GpPnt): GpAx3 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax3.}
proc mirror*(this: var GpAx3; a1: GpAx1) {.importcpp: "Mirror", header: headerGpax3.}
proc mirrored*(this: GpAx3; a1: GpAx1): GpAx3 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax3.}
proc mirror*(this: var GpAx3; a2: GpAx2) {.importcpp: "Mirror", header: headerGpax3.}
proc mirrored*(this: GpAx3; a2: GpAx2): GpAx3 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax3.}
proc rotate*(this: var GpAx3; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpax3.}
proc rotated*(this: GpAx3; a1: GpAx1; ang: StandardReal): GpAx3 {.noSideEffect,
    importcpp: "Rotated", header: headerGpax3.}
proc scale*(this: var GpAx3; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpax3.}
proc scaled*(this: GpAx3; p: GpPnt; s: StandardReal): GpAx3 {.noSideEffect,
    importcpp: "Scaled", header: headerGpax3.}
proc transform*(this: var GpAx3; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGpax3.}
proc transformed*(this: GpAx3; t: GpTrsf): GpAx3 {.noSideEffect,
    importcpp: "Transformed", header: headerGpax3.}
proc translate*(this: var GpAx3; v: GpVec) {.importcpp: "Translate", header: headerGpax3.}
proc translated*(this: GpAx3; v: GpVec): GpAx3 {.noSideEffect, importcpp: "Translated",
    header: headerGpax3.}
proc translate*(this: var GpAx3; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpax3.}
proc translated*(this: GpAx3; p1: GpPnt; p2: GpPnt): GpAx3 {.noSideEffect,
    importcpp: "Translated", header: headerGpax3.}
proc dumpJson*(this: GpAx3; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpax3.}
proc initFromJson*(this: var GpAx3; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGpax3.}