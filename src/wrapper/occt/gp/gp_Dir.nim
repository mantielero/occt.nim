# /usr/include/opencascade/gp_Dir.hxx --> occt/gp/gp_Dir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpdir = "/usr/include/opencascade/gp_Dir.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Vec"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  GpDir* {.importcpp: "gp_Dir", header: headerGpdir, bycopy.} = object


proc `new`*(this: var GpDir; theSize: csize_t): pointer {.
    importcpp: "gp_Dir::operator new", header: headerGpdir.}
proc `delete`*(this: var GpDir; theAddress: pointer) {.
    importcpp: "gp_Dir::operator delete", header: headerGpdir.}
proc `new[]`*(this: var GpDir; theSize: csize_t): pointer {.
    importcpp: "gp_Dir::operator new[]", header: headerGpdir.}
proc `delete[]`*(this: var GpDir; theAddress: pointer) {.
    importcpp: "gp_Dir::operator delete[]", header: headerGpdir.}
proc `new`*(this: var GpDir; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Dir::operator new", header: headerGpdir.}
proc `delete`*(this: var GpDir; a2: pointer; a3: pointer) {.
    importcpp: "gp_Dir::operator delete", header: headerGpdir.}
proc constructGpDir*(): GpDir {.constructor, importcpp: "gp_Dir(@)",
                             header: headerGpdir.}
proc constructGpDir*(v: GpVec): GpDir {.constructor, importcpp: "gp_Dir(@)",
                                    header: headerGpdir.}
proc constructGpDir*(coord: GpXYZ): GpDir {.constructor, importcpp: "gp_Dir(@)",
                                        header: headerGpdir.}
proc constructGpDir*(xv: StandardReal; yv: StandardReal; zv: StandardReal): GpDir {.
    constructor, importcpp: "gp_Dir(@)", header: headerGpdir.}
proc setCoord*(this: var GpDir; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGpdir.}
proc setCoord*(this: var GpDir; xv: StandardReal; yv: StandardReal; zv: StandardReal) {.
    importcpp: "SetCoord", header: headerGpdir.}
proc setX*(this: var GpDir; x: StandardReal) {.importcpp: "SetX", header: headerGpdir.}
proc setY*(this: var GpDir; y: StandardReal) {.importcpp: "SetY", header: headerGpdir.}
proc setZ*(this: var GpDir; z: StandardReal) {.importcpp: "SetZ", header: headerGpdir.}
proc setXYZ*(this: var GpDir; coord: GpXYZ) {.importcpp: "SetXYZ", header: headerGpdir.}
proc coord*(this: GpDir; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGpdir.}
proc coord*(this: GpDir; xv: var StandardReal; yv: var StandardReal; zv: var StandardReal) {.
    noSideEffect, importcpp: "Coord", header: headerGpdir.}
proc x*(this: GpDir): StandardReal {.noSideEffect, importcpp: "X", header: headerGpdir.}
proc y*(this: GpDir): StandardReal {.noSideEffect, importcpp: "Y", header: headerGpdir.}
proc z*(this: GpDir): StandardReal {.noSideEffect, importcpp: "Z", header: headerGpdir.}
proc xyz*(this: GpDir): GpXYZ {.noSideEffect, importcpp: "XYZ", header: headerGpdir.}
proc isEqual*(this: GpDir; other: GpDir; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGpdir.}
proc isNormal*(this: GpDir; other: GpDir; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: headerGpdir.}
proc isOpposite*(this: GpDir; other: GpDir; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: headerGpdir.}
proc isParallel*(this: GpDir; other: GpDir; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: headerGpdir.}
proc angle*(this: GpDir; other: GpDir): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpdir.}
proc angleWithRef*(this: GpDir; other: GpDir; vRef: GpDir): StandardReal {.noSideEffect,
    importcpp: "AngleWithRef", header: headerGpdir.}
proc cross*(this: var GpDir; right: GpDir) {.importcpp: "Cross", header: headerGpdir.}
proc `^=`*(this: var GpDir; right: GpDir) {.importcpp: "(# ^= #)", header: headerGpdir.}
proc crossed*(this: GpDir; right: GpDir): GpDir {.noSideEffect, importcpp: "Crossed",
    header: headerGpdir.}
proc `^`*(this: GpDir; right: GpDir): GpDir {.noSideEffect, importcpp: "(# ^ #)",
                                        header: headerGpdir.}
proc crossCross*(this: var GpDir; v1: GpDir; v2: GpDir) {.importcpp: "CrossCross",
    header: headerGpdir.}
proc crossCrossed*(this: GpDir; v1: GpDir; v2: GpDir): GpDir {.noSideEffect,
    importcpp: "CrossCrossed", header: headerGpdir.}
proc dot*(this: GpDir; other: GpDir): StandardReal {.noSideEffect, importcpp: "Dot",
    header: headerGpdir.}
proc `*`*(this: GpDir; other: GpDir): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: headerGpdir.}
proc dotCross*(this: GpDir; v1: GpDir; v2: GpDir): StandardReal {.noSideEffect,
    importcpp: "DotCross", header: headerGpdir.}
proc reverse*(this: var GpDir) {.importcpp: "Reverse", header: headerGpdir.}
proc reversed*(this: GpDir): GpDir {.noSideEffect, importcpp: "Reversed",
                                 header: headerGpdir.}
proc `-`*(this: GpDir): GpDir {.noSideEffect, importcpp: "(- #)", header: headerGpdir.}
proc mirror*(this: var GpDir; v: GpDir) {.importcpp: "Mirror", header: headerGpdir.}
proc mirrored*(this: GpDir; v: GpDir): GpDir {.noSideEffect, importcpp: "Mirrored",
    header: headerGpdir.}
proc mirror*(this: var GpDir; a1: GpAx1) {.importcpp: "Mirror", header: headerGpdir.}
proc mirrored*(this: GpDir; a1: GpAx1): GpDir {.noSideEffect, importcpp: "Mirrored",
    header: headerGpdir.}
proc mirror*(this: var GpDir; a2: GpAx2) {.importcpp: "Mirror", header: headerGpdir.}
proc mirrored*(this: GpDir; a2: GpAx2): GpDir {.noSideEffect, importcpp: "Mirrored",
    header: headerGpdir.}
proc rotate*(this: var GpDir; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpdir.}
proc rotated*(this: GpDir; a1: GpAx1; ang: StandardReal): GpDir {.noSideEffect,
    importcpp: "Rotated", header: headerGpdir.}
proc transform*(this: var GpDir; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGpdir.}
proc transformed*(this: GpDir; t: GpTrsf): GpDir {.noSideEffect,
    importcpp: "Transformed", header: headerGpdir.}
proc dumpJson*(this: GpDir; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpdir.}
proc initFromJson*(this: var GpDir; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGpdir.}