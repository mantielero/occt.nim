# /usr/include/opencascade/gp_Vec.hxx --> occt/tkMath/gp/gp_Vec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpvec = "/usr/include/opencascade/gp_Vec.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  GpVec* {.importcpp: "gp_Vec", header: headerGpvec, bycopy.} = object


proc `new`*(this: var GpVec; theSize: csize_t): pointer {.
    importcpp: "gp_Vec::operator new", header: headerGpvec.}
proc `delete`*(this: var GpVec; theAddress: pointer) {.
    importcpp: "gp_Vec::operator delete", header: headerGpvec.}
proc `new[]`*(this: var GpVec; theSize: csize_t): pointer {.
    importcpp: "gp_Vec::operator new[]", header: headerGpvec.}
proc `delete[]`*(this: var GpVec; theAddress: pointer) {.
    importcpp: "gp_Vec::operator delete[]", header: headerGpvec.}
proc `new`*(this: var GpVec; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Vec::operator new", header: headerGpvec.}
proc `delete`*(this: var GpVec; a2: pointer; a3: pointer) {.
    importcpp: "gp_Vec::operator delete", header: headerGpvec.}
proc constructGpVec*(): GpVec {.constructor, importcpp: "gp_Vec(@)",
                             header: headerGpvec.}
proc constructGpVec*(v: GpDir): GpVec {.constructor, importcpp: "gp_Vec(@)",
                                    header: headerGpvec.}
proc constructGpVec*(coord: GpXYZ): GpVec {.constructor, importcpp: "gp_Vec(@)",
                                        header: headerGpvec.}
proc constructGpVec*(xv: StandardReal; yv: StandardReal; zv: StandardReal): GpVec {.
    constructor, importcpp: "gp_Vec(@)", header: headerGpvec.}
proc constructGpVec*(p1: GpPnt; p2: GpPnt): GpVec {.constructor,
    importcpp: "gp_Vec(@)", header: headerGpvec.}
proc setCoord*(this: var GpVec; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGpvec.}
proc setCoord*(this: var GpVec; xv: StandardReal; yv: StandardReal; zv: StandardReal) {.
    importcpp: "SetCoord", header: headerGpvec.}
proc setX*(this: var GpVec; x: StandardReal) {.importcpp: "SetX", header: headerGpvec.}
proc setY*(this: var GpVec; y: StandardReal) {.importcpp: "SetY", header: headerGpvec.}
proc setZ*(this: var GpVec; z: StandardReal) {.importcpp: "SetZ", header: headerGpvec.}
proc setXYZ*(this: var GpVec; coord: GpXYZ) {.importcpp: "SetXYZ", header: headerGpvec.}
proc coord*(this: GpVec; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGpvec.}
proc coord*(this: GpVec; xv: var StandardReal; yv: var StandardReal; zv: var StandardReal) {.
    noSideEffect, importcpp: "Coord", header: headerGpvec.}
proc x*(this: GpVec): StandardReal {.noSideEffect, importcpp: "X", header: headerGpvec.}
proc y*(this: GpVec): StandardReal {.noSideEffect, importcpp: "Y", header: headerGpvec.}
proc z*(this: GpVec): StandardReal {.noSideEffect, importcpp: "Z", header: headerGpvec.}
proc xyz*(this: GpVec): GpXYZ {.noSideEffect, importcpp: "XYZ", header: headerGpvec.}
proc isEqual*(this: GpVec; other: GpVec; linearTolerance: StandardReal;
             angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: headerGpvec.}
proc isNormal*(this: GpVec; other: GpVec; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: headerGpvec.}
proc isOpposite*(this: GpVec; other: GpVec; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: headerGpvec.}
proc isParallel*(this: GpVec; other: GpVec; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: headerGpvec.}
proc angle*(this: GpVec; other: GpVec): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpvec.}
proc angleWithRef*(this: GpVec; other: GpVec; vRef: GpVec): StandardReal {.noSideEffect,
    importcpp: "AngleWithRef", header: headerGpvec.}
proc magnitude*(this: GpVec): StandardReal {.noSideEffect, importcpp: "Magnitude",
    header: headerGpvec.}
proc squareMagnitude*(this: GpVec): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: headerGpvec.}
proc add*(this: var GpVec; other: GpVec) {.importcpp: "Add", header: headerGpvec.}
proc `+=`*(this: var GpVec; other: GpVec) {.importcpp: "(# += #)", header: headerGpvec.}
proc added*(this: GpVec; other: GpVec): GpVec {.noSideEffect, importcpp: "Added",
    header: headerGpvec.}
proc `+`*(this: GpVec; other: GpVec): GpVec {.noSideEffect, importcpp: "(# + #)",
                                        header: headerGpvec.}
proc subtract*(this: var GpVec; right: GpVec) {.importcpp: "Subtract",
    header: headerGpvec.}
proc `-=`*(this: var GpVec; right: GpVec) {.importcpp: "(# -= #)", header: headerGpvec.}
proc subtracted*(this: GpVec; right: GpVec): GpVec {.noSideEffect,
    importcpp: "Subtracted", header: headerGpvec.}
proc `-`*(this: GpVec; right: GpVec): GpVec {.noSideEffect, importcpp: "(# - #)",
                                        header: headerGpvec.}
proc multiply*(this: var GpVec; scalar: StandardReal) {.importcpp: "Multiply",
    header: headerGpvec.}
proc `*=`*(this: var GpVec; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpvec.}
proc multiplied*(this: GpVec; scalar: StandardReal): GpVec {.noSideEffect,
    importcpp: "Multiplied", header: headerGpvec.}
proc `*`*(this: GpVec; scalar: StandardReal): GpVec {.noSideEffect,
    importcpp: "(# * #)", header: headerGpvec.}
proc divide*(this: var GpVec; scalar: StandardReal) {.importcpp: "Divide",
    header: headerGpvec.}
proc `/=`*(this: var GpVec; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: headerGpvec.}
proc divided*(this: GpVec; scalar: StandardReal): GpVec {.noSideEffect,
    importcpp: "Divided", header: headerGpvec.}
proc `/`*(this: GpVec; scalar: StandardReal): GpVec {.noSideEffect,
    importcpp: "(# / #)", header: headerGpvec.}
proc cross*(this: var GpVec; right: GpVec) {.importcpp: "Cross", header: headerGpvec.}
proc `^=`*(this: var GpVec; right: GpVec) {.importcpp: "(# ^= #)", header: headerGpvec.}
proc crossed*(this: GpVec; right: GpVec): GpVec {.noSideEffect, importcpp: "Crossed",
    header: headerGpvec.}
proc `^`*(this: GpVec; right: GpVec): GpVec {.noSideEffect, importcpp: "(# ^ #)",
                                        header: headerGpvec.}
proc crossMagnitude*(this: GpVec; right: GpVec): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: headerGpvec.}
proc crossSquareMagnitude*(this: GpVec; right: GpVec): StandardReal {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: headerGpvec.}
proc crossCross*(this: var GpVec; v1: GpVec; v2: GpVec) {.importcpp: "CrossCross",
    header: headerGpvec.}
proc crossCrossed*(this: GpVec; v1: GpVec; v2: GpVec): GpVec {.noSideEffect,
    importcpp: "CrossCrossed", header: headerGpvec.}
proc dot*(this: GpVec; other: GpVec): StandardReal {.noSideEffect, importcpp: "Dot",
    header: headerGpvec.}
proc `*`*(this: GpVec; other: GpVec): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: headerGpvec.}
proc dotCross*(this: GpVec; v1: GpVec; v2: GpVec): StandardReal {.noSideEffect,
    importcpp: "DotCross", header: headerGpvec.}
proc normalize*(this: var GpVec) {.importcpp: "Normalize", header: headerGpvec.}
proc normalized*(this: GpVec): GpVec {.noSideEffect, importcpp: "Normalized",
                                   header: headerGpvec.}
proc reverse*(this: var GpVec) {.importcpp: "Reverse", header: headerGpvec.}
proc reversed*(this: GpVec): GpVec {.noSideEffect, importcpp: "Reversed",
                                 header: headerGpvec.}
proc `-`*(this: GpVec): GpVec {.noSideEffect, importcpp: "(- #)", header: headerGpvec.}
proc setLinearForm*(this: var GpVec; a1: StandardReal; v1: GpVec; a2: StandardReal;
                   v2: GpVec; a3: StandardReal; v3: GpVec; v4: GpVec) {.
    importcpp: "SetLinearForm", header: headerGpvec.}
proc setLinearForm*(this: var GpVec; a1: StandardReal; v1: GpVec; a2: StandardReal;
                   v2: GpVec; a3: StandardReal; v3: GpVec) {.
    importcpp: "SetLinearForm", header: headerGpvec.}
proc setLinearForm*(this: var GpVec; a1: StandardReal; v1: GpVec; a2: StandardReal;
                   v2: GpVec; v3: GpVec) {.importcpp: "SetLinearForm",
                                       header: headerGpvec.}
proc setLinearForm*(this: var GpVec; a1: StandardReal; v1: GpVec; a2: StandardReal;
                   v2: GpVec) {.importcpp: "SetLinearForm", header: headerGpvec.}
proc setLinearForm*(this: var GpVec; a1: StandardReal; v1: GpVec; v2: GpVec) {.
    importcpp: "SetLinearForm", header: headerGpvec.}
proc setLinearForm*(this: var GpVec; v1: GpVec; v2: GpVec) {.importcpp: "SetLinearForm",
    header: headerGpvec.}
proc mirror*(this: var GpVec; v: GpVec) {.importcpp: "Mirror", header: headerGpvec.}
proc mirrored*(this: GpVec; v: GpVec): GpVec {.noSideEffect, importcpp: "Mirrored",
    header: headerGpvec.}
proc mirror*(this: var GpVec; a1: GpAx1) {.importcpp: "Mirror", header: headerGpvec.}
proc mirrored*(this: GpVec; a1: GpAx1): GpVec {.noSideEffect, importcpp: "Mirrored",
    header: headerGpvec.}
proc mirror*(this: var GpVec; a2: GpAx2) {.importcpp: "Mirror", header: headerGpvec.}
proc mirrored*(this: GpVec; a2: GpAx2): GpVec {.noSideEffect, importcpp: "Mirrored",
    header: headerGpvec.}
proc rotate*(this: var GpVec; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpvec.}
proc rotated*(this: GpVec; a1: GpAx1; ang: StandardReal): GpVec {.noSideEffect,
    importcpp: "Rotated", header: headerGpvec.}
proc scale*(this: var GpVec; s: StandardReal) {.importcpp: "Scale", header: headerGpvec.}
proc scaled*(this: GpVec; s: StandardReal): GpVec {.noSideEffect, importcpp: "Scaled",
    header: headerGpvec.}
proc transform*(this: var GpVec; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGpvec.}
proc transformed*(this: GpVec; t: GpTrsf): GpVec {.noSideEffect,
    importcpp: "Transformed", header: headerGpvec.}
proc dumpJson*(this: GpVec; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGpvec.}