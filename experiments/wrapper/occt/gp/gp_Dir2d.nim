# /usr/include/opencascade/gp_Dir2d.hxx --> occt/gp/gp_Dir2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpdir2d = "/usr/include/opencascade/gp_Dir2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  GpDir2d* {.importcpp: "gp_Dir2d", header: headerGpdir2d, bycopy.} = object


proc `new`*(this: var GpDir2d; theSize: csize_t): pointer {.
    importcpp: "gp_Dir2d::operator new", header: headerGpdir2d.}
proc `delete`*(this: var GpDir2d; theAddress: pointer) {.
    importcpp: "gp_Dir2d::operator delete", header: headerGpdir2d.}
proc `new[]`*(this: var GpDir2d; theSize: csize_t): pointer {.
    importcpp: "gp_Dir2d::operator new[]", header: headerGpdir2d.}
proc `delete[]`*(this: var GpDir2d; theAddress: pointer) {.
    importcpp: "gp_Dir2d::operator delete[]", header: headerGpdir2d.}
proc `new`*(this: var GpDir2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Dir2d::operator new", header: headerGpdir2d.}
proc `delete`*(this: var GpDir2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Dir2d::operator delete", header: headerGpdir2d.}
proc constructGpDir2d*(): GpDir2d {.constructor, importcpp: "gp_Dir2d(@)",
                                 header: headerGpdir2d.}
proc constructGpDir2d*(v: GpVec2d): GpDir2d {.constructor, importcpp: "gp_Dir2d(@)",
    header: headerGpdir2d.}
proc constructGpDir2d*(coord: GpXY): GpDir2d {.constructor, importcpp: "gp_Dir2d(@)",
    header: headerGpdir2d.}
proc constructGpDir2d*(xv: StandardReal; yv: StandardReal): GpDir2d {.constructor,
    importcpp: "gp_Dir2d(@)", header: headerGpdir2d.}
proc setCoord*(this: var GpDir2d; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGpdir2d.}
proc setCoord*(this: var GpDir2d; xv: StandardReal; yv: StandardReal) {.
    importcpp: "SetCoord", header: headerGpdir2d.}
proc setX*(this: var GpDir2d; x: StandardReal) {.importcpp: "SetX",
    header: headerGpdir2d.}
proc setY*(this: var GpDir2d; y: StandardReal) {.importcpp: "SetY",
    header: headerGpdir2d.}
proc setXY*(this: var GpDir2d; coord: GpXY) {.importcpp: "SetXY", header: headerGpdir2d.}
proc coord*(this: GpDir2d; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGpdir2d.}
proc coord*(this: GpDir2d; xv: var StandardReal; yv: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: headerGpdir2d.}
proc x*(this: GpDir2d): StandardReal {.noSideEffect, importcpp: "X",
                                   header: headerGpdir2d.}
proc y*(this: GpDir2d): StandardReal {.noSideEffect, importcpp: "Y",
                                   header: headerGpdir2d.}
proc xy*(this: GpDir2d): GpXY {.noSideEffect, importcpp: "XY", header: headerGpdir2d.}
proc isEqual*(this: GpDir2d; other: GpDir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGpdir2d.}
proc isNormal*(this: GpDir2d; other: GpDir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: headerGpdir2d.}
proc isOpposite*(this: GpDir2d; other: GpDir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: headerGpdir2d.}
proc isParallel*(this: GpDir2d; other: GpDir2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: headerGpdir2d.}
proc angle*(this: GpDir2d; other: GpDir2d): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpdir2d.}
proc crossed*(this: GpDir2d; right: GpDir2d): StandardReal {.noSideEffect,
    importcpp: "Crossed", header: headerGpdir2d.}
proc `^`*(this: GpDir2d; right: GpDir2d): StandardReal {.noSideEffect,
    importcpp: "(# ^ #)", header: headerGpdir2d.}
proc dot*(this: GpDir2d; other: GpDir2d): StandardReal {.noSideEffect,
    importcpp: "Dot", header: headerGpdir2d.}
proc `*`*(this: GpDir2d; other: GpDir2d): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: headerGpdir2d.}
proc reverse*(this: var GpDir2d) {.importcpp: "Reverse", header: headerGpdir2d.}
proc reversed*(this: GpDir2d): GpDir2d {.noSideEffect, importcpp: "Reversed",
                                     header: headerGpdir2d.}
proc `-`*(this: GpDir2d): GpDir2d {.noSideEffect, importcpp: "(- #)",
                                header: headerGpdir2d.}
proc mirror*(this: var GpDir2d; v: GpDir2d) {.importcpp: "Mirror", header: headerGpdir2d.}
proc mirrored*(this: GpDir2d; v: GpDir2d): GpDir2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpdir2d.}
proc mirror*(this: var GpDir2d; a: GpAx2d) {.importcpp: "Mirror", header: headerGpdir2d.}
proc mirrored*(this: GpDir2d; a: GpAx2d): GpDir2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpdir2d.}
proc rotate*(this: var GpDir2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpdir2d.}
proc rotated*(this: GpDir2d; ang: StandardReal): GpDir2d {.noSideEffect,
    importcpp: "Rotated", header: headerGpdir2d.}
proc transform*(this: var GpDir2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpdir2d.}
proc transformed*(this: GpDir2d; t: GpTrsf2d): GpDir2d {.noSideEffect,
    importcpp: "Transformed", header: headerGpdir2d.}
proc dumpJson*(this: GpDir2d; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpdir2d.}