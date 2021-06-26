# /usr/include/opencascade/gp_Ax1.hxx --> occt/tkMath/gp/gp_Ax1.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpax1 = "/usr/include/opencascade/gp_Ax1.hxx"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpAx1* {.importcpp: "gp_Ax1", header: headerGpax1, bycopy.} = object


proc `new`*(this: var GpAx1; theSize: csize_t): pointer {.
    importcpp: "gp_Ax1::operator new", header: headerGpax1.}
proc `delete`*(this: var GpAx1; theAddress: pointer) {.
    importcpp: "gp_Ax1::operator delete", header: headerGpax1.}
proc `new[]`*(this: var GpAx1; theSize: csize_t): pointer {.
    importcpp: "gp_Ax1::operator new[]", header: headerGpax1.}
proc `delete[]`*(this: var GpAx1; theAddress: pointer) {.
    importcpp: "gp_Ax1::operator delete[]", header: headerGpax1.}
proc `new`*(this: var GpAx1; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax1::operator new", header: headerGpax1.}
proc `delete`*(this: var GpAx1; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax1::operator delete", header: headerGpax1.}
proc constructGpAx1*(): GpAx1 {.constructor, importcpp: "gp_Ax1(@)",
                             header: headerGpax1.}
proc constructGpAx1*(p: GpPnt; v: GpDir): GpAx1 {.constructor, importcpp: "gp_Ax1(@)",
    header: headerGpax1.}
proc setDirection*(this: var GpAx1; v: GpDir) {.importcpp: "SetDirection",
    header: headerGpax1.}
proc setLocation*(this: var GpAx1; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGpax1.}
proc direction*(this: GpAx1): GpDir {.noSideEffect, importcpp: "Direction",
                                  header: headerGpax1.}
proc location*(this: GpAx1): GpPnt {.noSideEffect, importcpp: "Location",
                                 header: headerGpax1.}
proc isCoaxial*(this: GpAx1; other: GpAx1; angularTolerance: StandardReal;
               linearTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsCoaxial", header: headerGpax1.}
proc isNormal*(this: GpAx1; other: GpAx1; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: headerGpax1.}
proc isOpposite*(this: GpAx1; other: GpAx1; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: headerGpax1.}
proc isParallel*(this: GpAx1; other: GpAx1; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: headerGpax1.}
proc angle*(this: GpAx1; other: GpAx1): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpax1.}
proc reverse*(this: var GpAx1) {.importcpp: "Reverse", header: headerGpax1.}
proc reversed*(this: GpAx1): GpAx1 {.noSideEffect, importcpp: "Reversed",
                                 header: headerGpax1.}
proc mirror*(this: var GpAx1; p: GpPnt) {.importcpp: "Mirror", header: headerGpax1.}
proc mirrored*(this: GpAx1; p: GpPnt): GpAx1 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax1.}
proc mirror*(this: var GpAx1; a1: GpAx1) {.importcpp: "Mirror", header: headerGpax1.}
proc mirrored*(this: GpAx1; a1: GpAx1): GpAx1 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax1.}
proc mirror*(this: var GpAx1; a2: GpAx2) {.importcpp: "Mirror", header: headerGpax1.}
proc mirrored*(this: GpAx1; a2: GpAx2): GpAx1 {.noSideEffect, importcpp: "Mirrored",
    header: headerGpax1.}
proc rotate*(this: var GpAx1; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpax1.}
proc rotated*(this: GpAx1; a1: GpAx1; ang: StandardReal): GpAx1 {.noSideEffect,
    importcpp: "Rotated", header: headerGpax1.}
proc scale*(this: var GpAx1; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpax1.}
proc scaled*(this: GpAx1; p: GpPnt; s: StandardReal): GpAx1 {.noSideEffect,
    importcpp: "Scaled", header: headerGpax1.}
proc transform*(this: var GpAx1; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGpax1.}
proc transformed*(this: GpAx1; t: GpTrsf): GpAx1 {.noSideEffect,
    importcpp: "Transformed", header: headerGpax1.}
proc translate*(this: var GpAx1; v: GpVec) {.importcpp: "Translate", header: headerGpax1.}
proc translated*(this: GpAx1; v: GpVec): GpAx1 {.noSideEffect, importcpp: "Translated",
    header: headerGpax1.}
proc translate*(this: var GpAx1; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpax1.}
proc translated*(this: GpAx1; p1: GpPnt; p2: GpPnt): GpAx1 {.noSideEffect,
    importcpp: "Translated", header: headerGpax1.}
proc dumpJson*(this: GpAx1; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpax1.}
proc initFromJson*(this: var GpAx1; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGpax1.}