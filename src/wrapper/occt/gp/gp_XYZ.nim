# /usr/include/opencascade/gp_XYZ.hxx --> occt/gp/gp_XYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpxyz = "/usr/include/opencascade/gp_XYZ.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
type
  GpXYZ* {.importcpp: "gp_XYZ", header: headerGpxyz, bycopy.} = object


proc `new`*(this: var GpXYZ; theSize: csize_t): pointer {.
    importcpp: "gp_XYZ::operator new", header: headerGpxyz.}
proc `delete`*(this: var GpXYZ; theAddress: pointer) {.
    importcpp: "gp_XYZ::operator delete", header: headerGpxyz.}
proc `new[]`*(this: var GpXYZ; theSize: csize_t): pointer {.
    importcpp: "gp_XYZ::operator new[]", header: headerGpxyz.}
proc `delete[]`*(this: var GpXYZ; theAddress: pointer) {.
    importcpp: "gp_XYZ::operator delete[]", header: headerGpxyz.}
proc `new`*(this: var GpXYZ; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_XYZ::operator new", header: headerGpxyz.}
proc `delete`*(this: var GpXYZ; a2: pointer; a3: pointer) {.
    importcpp: "gp_XYZ::operator delete", header: headerGpxyz.}
proc constructGpXYZ*(): GpXYZ {.constructor, importcpp: "gp_XYZ(@)",
                             header: headerGpxyz.}
proc constructGpXYZ*(x: StandardReal; y: StandardReal; z: StandardReal): GpXYZ {.
    constructor, importcpp: "gp_XYZ(@)", header: headerGpxyz.}
proc setCoord*(this: var GpXYZ; x: StandardReal; y: StandardReal; z: StandardReal) {.
    importcpp: "SetCoord", header: headerGpxyz.}
proc setCoord*(this: var GpXYZ; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGpxyz.}
proc setX*(this: var GpXYZ; x: StandardReal) {.importcpp: "SetX", header: headerGpxyz.}
proc setY*(this: var GpXYZ; y: StandardReal) {.importcpp: "SetY", header: headerGpxyz.}
proc setZ*(this: var GpXYZ; z: StandardReal) {.importcpp: "SetZ", header: headerGpxyz.}
proc coord*(this: GpXYZ; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGpxyz.}
proc changeCoord*(this: var GpXYZ; theIndex: StandardInteger): var StandardReal {.
    importcpp: "ChangeCoord", header: headerGpxyz.}
proc coord*(this: GpXYZ; x: var StandardReal; y: var StandardReal; z: var StandardReal) {.
    noSideEffect, importcpp: "Coord", header: headerGpxyz.}
proc getData*(this: GpXYZ): ptr StandardReal {.noSideEffect, importcpp: "GetData",
    header: headerGpxyz.}
proc changeData*(this: var GpXYZ): ptr StandardReal {.importcpp: "ChangeData",
    header: headerGpxyz.}
proc x*(this: GpXYZ): StandardReal {.noSideEffect, importcpp: "X", header: headerGpxyz.}
proc y*(this: GpXYZ): StandardReal {.noSideEffect, importcpp: "Y", header: headerGpxyz.}
proc z*(this: GpXYZ): StandardReal {.noSideEffect, importcpp: "Z", header: headerGpxyz.}
proc modulus*(this: GpXYZ): StandardReal {.noSideEffect, importcpp: "Modulus",
                                       header: headerGpxyz.}
proc squareModulus*(this: GpXYZ): StandardReal {.noSideEffect,
    importcpp: "SquareModulus", header: headerGpxyz.}
proc isEqual*(this: GpXYZ; other: GpXYZ; tolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGpxyz.}
proc add*(this: var GpXYZ; other: GpXYZ) {.importcpp: "Add", header: headerGpxyz.}
proc `+=`*(this: var GpXYZ; other: GpXYZ) {.importcpp: "(# += #)", header: headerGpxyz.}
proc added*(this: GpXYZ; other: GpXYZ): GpXYZ {.noSideEffect, importcpp: "Added",
    header: headerGpxyz.}
proc `+`*(this: GpXYZ; other: GpXYZ): GpXYZ {.noSideEffect, importcpp: "(# + #)",
                                        header: headerGpxyz.}
proc cross*(this: var GpXYZ; right: GpXYZ) {.importcpp: "Cross", header: headerGpxyz.}
proc `^=`*(this: var GpXYZ; right: GpXYZ) {.importcpp: "(# ^= #)", header: headerGpxyz.}
proc crossed*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, importcpp: "Crossed",
    header: headerGpxyz.}
proc `^`*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, importcpp: "(# ^ #)",
                                        header: headerGpxyz.}
proc crossMagnitude*(this: GpXYZ; right: GpXYZ): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: headerGpxyz.}
proc crossSquareMagnitude*(this: GpXYZ; right: GpXYZ): StandardReal {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: headerGpxyz.}
proc crossCross*(this: var GpXYZ; coord1: GpXYZ; coord2: GpXYZ) {.
    importcpp: "CrossCross", header: headerGpxyz.}
proc crossCrossed*(this: GpXYZ; coord1: GpXYZ; coord2: GpXYZ): GpXYZ {.noSideEffect,
    importcpp: "CrossCrossed", header: headerGpxyz.}
proc divide*(this: var GpXYZ; scalar: StandardReal) {.importcpp: "Divide",
    header: headerGpxyz.}
proc `/=`*(this: var GpXYZ; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: headerGpxyz.}
proc divided*(this: GpXYZ; scalar: StandardReal): GpXYZ {.noSideEffect,
    importcpp: "Divided", header: headerGpxyz.}
proc `/`*(this: GpXYZ; scalar: StandardReal): GpXYZ {.noSideEffect,
    importcpp: "(# / #)", header: headerGpxyz.}
proc dot*(this: GpXYZ; other: GpXYZ): StandardReal {.noSideEffect, importcpp: "Dot",
    header: headerGpxyz.}
proc `*`*(this: GpXYZ; other: GpXYZ): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: headerGpxyz.}
proc dotCross*(this: GpXYZ; coord1: GpXYZ; coord2: GpXYZ): StandardReal {.noSideEffect,
    importcpp: "DotCross", header: headerGpxyz.}
proc multiply*(this: var GpXYZ; scalar: StandardReal) {.importcpp: "Multiply",
    header: headerGpxyz.}
proc `*=`*(this: var GpXYZ; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpxyz.}
proc multiply*(this: var GpXYZ; other: GpXYZ) {.importcpp: "Multiply",
    header: headerGpxyz.}
proc `*=`*(this: var GpXYZ; other: GpXYZ) {.importcpp: "(# *= #)", header: headerGpxyz.}
proc multiply*(this: var GpXYZ; matrix: GpMat) {.importcpp: "Multiply",
    header: headerGpxyz.}
proc `*=`*(this: var GpXYZ; matrix: GpMat) {.importcpp: "(# *= #)", header: headerGpxyz.}
proc multiplied*(this: GpXYZ; scalar: StandardReal): GpXYZ {.noSideEffect,
    importcpp: "Multiplied", header: headerGpxyz.}
proc `*`*(this: GpXYZ; scalar: StandardReal): GpXYZ {.noSideEffect,
    importcpp: "(# * #)", header: headerGpxyz.}
proc multiplied*(this: GpXYZ; other: GpXYZ): GpXYZ {.noSideEffect,
    importcpp: "Multiplied", header: headerGpxyz.}
proc multiplied*(this: GpXYZ; matrix: GpMat): GpXYZ {.noSideEffect,
    importcpp: "Multiplied", header: headerGpxyz.}
proc `*`*(this: GpXYZ; matrix: GpMat): GpXYZ {.noSideEffect, importcpp: "(# * #)",
    header: headerGpxyz.}
proc normalize*(this: var GpXYZ) {.importcpp: "Normalize", header: headerGpxyz.}
proc normalized*(this: GpXYZ): GpXYZ {.noSideEffect, importcpp: "Normalized",
                                   header: headerGpxyz.}
proc reverse*(this: var GpXYZ) {.importcpp: "Reverse", header: headerGpxyz.}
proc reversed*(this: GpXYZ): GpXYZ {.noSideEffect, importcpp: "Reversed",
                                 header: headerGpxyz.}
proc subtract*(this: var GpXYZ; right: GpXYZ) {.importcpp: "Subtract",
    header: headerGpxyz.}
proc `-=`*(this: var GpXYZ; right: GpXYZ) {.importcpp: "(# -= #)", header: headerGpxyz.}
proc subtracted*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect,
    importcpp: "Subtracted", header: headerGpxyz.}
proc `-`*(this: GpXYZ; right: GpXYZ): GpXYZ {.noSideEffect, importcpp: "(# - #)",
                                        header: headerGpxyz.}
proc setLinearForm*(this: var GpXYZ; a1: StandardReal; xyz1: GpXYZ; a2: StandardReal;
                   xyz2: GpXYZ; a3: StandardReal; xyz3: GpXYZ; xyz4: GpXYZ) {.
    importcpp: "SetLinearForm", header: headerGpxyz.}
proc setLinearForm*(this: var GpXYZ; a1: StandardReal; xyz1: GpXYZ; a2: StandardReal;
                   xyz2: GpXYZ; a3: StandardReal; xyz3: GpXYZ) {.
    importcpp: "SetLinearForm", header: headerGpxyz.}
proc setLinearForm*(this: var GpXYZ; a1: StandardReal; xyz1: GpXYZ; a2: StandardReal;
                   xyz2: GpXYZ; xyz3: GpXYZ) {.importcpp: "SetLinearForm",
    header: headerGpxyz.}
proc setLinearForm*(this: var GpXYZ; a1: StandardReal; xyz1: GpXYZ; a2: StandardReal;
                   xyz2: GpXYZ) {.importcpp: "SetLinearForm", header: headerGpxyz.}
proc setLinearForm*(this: var GpXYZ; a1: StandardReal; xyz1: GpXYZ; xyz2: GpXYZ) {.
    importcpp: "SetLinearForm", header: headerGpxyz.}
proc setLinearForm*(this: var GpXYZ; xyz1: GpXYZ; xyz2: GpXYZ) {.
    importcpp: "SetLinearForm", header: headerGpxyz.}
proc dumpJson*(this: GpXYZ; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpxyz.}
proc initFromJson*(this: var GpXYZ; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: headerGpxyz.}