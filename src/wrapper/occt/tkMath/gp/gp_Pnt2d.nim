# /usr/include/opencascade/gp_Pnt2d.hxx --> occt/tkMath/gp/gp_Pnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGppnt2d = "/usr/include/opencascade/gp_Pnt2d.hxx"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpPnt2d* {.importcpp: "gp_Pnt2d", header: headerGppnt2d, bycopy.} = object


proc `new`*(this: var GpPnt2d; theSize: csize_t): pointer {.
    importcpp: "gp_Pnt2d::operator new", header: headerGppnt2d.}
proc `delete`*(this: var GpPnt2d; theAddress: pointer) {.
    importcpp: "gp_Pnt2d::operator delete", header: headerGppnt2d.}
proc `new[]`*(this: var GpPnt2d; theSize: csize_t): pointer {.
    importcpp: "gp_Pnt2d::operator new[]", header: headerGppnt2d.}
proc `delete[]`*(this: var GpPnt2d; theAddress: pointer) {.
    importcpp: "gp_Pnt2d::operator delete[]", header: headerGppnt2d.}
proc `new`*(this: var GpPnt2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Pnt2d::operator new", header: headerGppnt2d.}
proc `delete`*(this: var GpPnt2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Pnt2d::operator delete", header: headerGppnt2d.}
proc constructGpPnt2d*(): GpPnt2d {.constructor, importcpp: "gp_Pnt2d(@)",
                                 header: headerGppnt2d.}
proc constructGpPnt2d*(coord: GpXY): GpPnt2d {.constructor, importcpp: "gp_Pnt2d(@)",
    header: headerGppnt2d.}
proc constructGpPnt2d*(xp: StandardReal; yp: StandardReal): GpPnt2d {.constructor,
    importcpp: "gp_Pnt2d(@)", header: headerGppnt2d.}
proc setCoord*(this: var GpPnt2d; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGppnt2d.}
proc setCoord*(this: var GpPnt2d; xp: StandardReal; yp: StandardReal) {.
    importcpp: "SetCoord", header: headerGppnt2d.}
proc setX*(this: var GpPnt2d; x: StandardReal) {.importcpp: "SetX",
    header: headerGppnt2d.}
proc setY*(this: var GpPnt2d; y: StandardReal) {.importcpp: "SetY",
    header: headerGppnt2d.}
proc setXY*(this: var GpPnt2d; coord: GpXY) {.importcpp: "SetXY", header: headerGppnt2d.}
proc coord*(this: GpPnt2d; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGppnt2d.}
proc coord*(this: GpPnt2d; xp: var StandardReal; yp: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: headerGppnt2d.}
proc x*(this: GpPnt2d): StandardReal {.noSideEffect, importcpp: "X",
                                   header: headerGppnt2d.}
proc y*(this: GpPnt2d): StandardReal {.noSideEffect, importcpp: "Y",
                                   header: headerGppnt2d.}
proc xy*(this: GpPnt2d): GpXY {.noSideEffect, importcpp: "XY", header: headerGppnt2d.}
proc coord*(this: GpPnt2d): GpXY {.noSideEffect, importcpp: "Coord",
                               header: headerGppnt2d.}
proc changeCoord*(this: var GpPnt2d): var GpXY {.importcpp: "ChangeCoord",
    header: headerGppnt2d.}
proc isEqual*(this: GpPnt2d; other: GpPnt2d; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGppnt2d.}
proc distance*(this: GpPnt2d; other: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGppnt2d.}
proc squareDistance*(this: GpPnt2d; other: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGppnt2d.}
proc mirror*(this: var GpPnt2d; p: GpPnt2d) {.importcpp: "Mirror", header: headerGppnt2d.}
proc mirrored*(this: GpPnt2d; p: GpPnt2d): GpPnt2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGppnt2d.}
proc mirror*(this: var GpPnt2d; a: GpAx2d) {.importcpp: "Mirror", header: headerGppnt2d.}
proc mirrored*(this: GpPnt2d; a: GpAx2d): GpPnt2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGppnt2d.}
proc rotate*(this: var GpPnt2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGppnt2d.}
proc rotated*(this: GpPnt2d; p: GpPnt2d; ang: StandardReal): GpPnt2d {.noSideEffect,
    importcpp: "Rotated", header: headerGppnt2d.}
proc scale*(this: var GpPnt2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGppnt2d.}
proc scaled*(this: GpPnt2d; p: GpPnt2d; s: StandardReal): GpPnt2d {.noSideEffect,
    importcpp: "Scaled", header: headerGppnt2d.}
proc transform*(this: var GpPnt2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGppnt2d.}
proc transformed*(this: GpPnt2d; t: GpTrsf2d): GpPnt2d {.noSideEffect,
    importcpp: "Transformed", header: headerGppnt2d.}
proc translate*(this: var GpPnt2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGppnt2d.}
proc translated*(this: GpPnt2d; v: GpVec2d): GpPnt2d {.noSideEffect,
    importcpp: "Translated", header: headerGppnt2d.}
proc translate*(this: var GpPnt2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGppnt2d.}
proc translated*(this: GpPnt2d; p1: GpPnt2d; p2: GpPnt2d): GpPnt2d {.noSideEffect,
    importcpp: "Translated", header: headerGppnt2d.}
proc dumpJson*(this: GpPnt2d; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGppnt2d.}