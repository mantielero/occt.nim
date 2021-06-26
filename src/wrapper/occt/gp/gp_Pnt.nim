# /usr/include/opencascade/gp_Pnt.hxx --> occt/gp/gp_Pnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGppnt = "/usr/include/opencascade/gp_Pnt.hxx"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpPnt* {.importcpp: "gp_Pnt", header: headerGppnt, bycopy.} = object


proc `new`*(this: var GpPnt; theSize: csize_t): pointer {.
    importcpp: "gp_Pnt::operator new", header: headerGppnt.}
proc `delete`*(this: var GpPnt; theAddress: pointer) {.
    importcpp: "gp_Pnt::operator delete", header: headerGppnt.}
proc `new[]`*(this: var GpPnt; theSize: csize_t): pointer {.
    importcpp: "gp_Pnt::operator new[]", header: headerGppnt.}
proc `delete[]`*(this: var GpPnt; theAddress: pointer) {.
    importcpp: "gp_Pnt::operator delete[]", header: headerGppnt.}
proc `new`*(this: var GpPnt; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Pnt::operator new", header: headerGppnt.}
proc `delete`*(this: var GpPnt; a2: pointer; a3: pointer) {.
    importcpp: "gp_Pnt::operator delete", header: headerGppnt.}
proc constructGpPnt*(): GpPnt {.constructor, importcpp: "gp_Pnt(@)",
                             header: headerGppnt.}
proc constructGpPnt*(coord: GpXYZ): GpPnt {.constructor, importcpp: "gp_Pnt(@)",
                                        header: headerGppnt.}
proc constructGpPnt*(xp: StandardReal; yp: StandardReal; zp: StandardReal): GpPnt {.
    constructor, importcpp: "gp_Pnt(@)", header: headerGppnt.}
proc setCoord*(this: var GpPnt; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGppnt.}
proc setCoord*(this: var GpPnt; xp: StandardReal; yp: StandardReal; zp: StandardReal) {.
    importcpp: "SetCoord", header: headerGppnt.}
proc setX*(this: var GpPnt; x: StandardReal) {.importcpp: "SetX", header: headerGppnt.}
proc setY*(this: var GpPnt; y: StandardReal) {.importcpp: "SetY", header: headerGppnt.}
proc setZ*(this: var GpPnt; z: StandardReal) {.importcpp: "SetZ", header: headerGppnt.}
proc setXYZ*(this: var GpPnt; coord: GpXYZ) {.importcpp: "SetXYZ", header: headerGppnt.}
proc coord*(this: GpPnt; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGppnt.}
proc coord*(this: GpPnt; xp: var StandardReal; yp: var StandardReal; zp: var StandardReal) {.
    noSideEffect, importcpp: "Coord", header: headerGppnt.}
proc x*(this: GpPnt): StandardReal {.noSideEffect, importcpp: "X", header: headerGppnt.}
proc y*(this: GpPnt): StandardReal {.noSideEffect, importcpp: "Y", header: headerGppnt.}
proc z*(this: GpPnt): StandardReal {.noSideEffect, importcpp: "Z", header: headerGppnt.}
proc xyz*(this: GpPnt): GpXYZ {.noSideEffect, importcpp: "XYZ", header: headerGppnt.}
proc coord*(this: GpPnt): GpXYZ {.noSideEffect, importcpp: "Coord", header: headerGppnt.}
proc changeCoord*(this: var GpPnt): var GpXYZ {.importcpp: "ChangeCoord",
    header: headerGppnt.}
proc baryCenter*(this: var GpPnt; alpha: StandardReal; p: GpPnt; beta: StandardReal) {.
    importcpp: "BaryCenter", header: headerGppnt.}
proc isEqual*(this: GpPnt; other: GpPnt; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGppnt.}
proc distance*(this: GpPnt; other: GpPnt): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGppnt.}
proc squareDistance*(this: GpPnt; other: GpPnt): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGppnt.}
proc mirror*(this: var GpPnt; p: GpPnt) {.importcpp: "Mirror", header: headerGppnt.}
proc mirrored*(this: GpPnt; p: GpPnt): GpPnt {.noSideEffect, importcpp: "Mirrored",
    header: headerGppnt.}
proc mirror*(this: var GpPnt; a1: GpAx1) {.importcpp: "Mirror", header: headerGppnt.}
proc mirrored*(this: GpPnt; a1: GpAx1): GpPnt {.noSideEffect, importcpp: "Mirrored",
    header: headerGppnt.}
proc mirror*(this: var GpPnt; a2: GpAx2) {.importcpp: "Mirror", header: headerGppnt.}
proc mirrored*(this: GpPnt; a2: GpAx2): GpPnt {.noSideEffect, importcpp: "Mirrored",
    header: headerGppnt.}
proc rotate*(this: var GpPnt; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGppnt.}
proc rotated*(this: GpPnt; a1: GpAx1; ang: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Rotated", header: headerGppnt.}
proc scale*(this: var GpPnt; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGppnt.}
proc scaled*(this: GpPnt; p: GpPnt; s: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Scaled", header: headerGppnt.}
proc transform*(this: var GpPnt; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGppnt.}
proc transformed*(this: GpPnt; t: GpTrsf): GpPnt {.noSideEffect,
    importcpp: "Transformed", header: headerGppnt.}
proc translate*(this: var GpPnt; v: GpVec) {.importcpp: "Translate", header: headerGppnt.}
proc translated*(this: GpPnt; v: GpVec): GpPnt {.noSideEffect, importcpp: "Translated",
    header: headerGppnt.}
proc translate*(this: var GpPnt; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGppnt.}
proc translated*(this: GpPnt; p1: GpPnt; p2: GpPnt): GpPnt {.noSideEffect,
    importcpp: "Translated", header: headerGppnt.}
proc dumpJson*(this: GpPnt; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGppnt.}
proc initFromJson*(this: var GpPnt; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGppnt.}