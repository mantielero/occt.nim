# /usr/include/opencascade/gp_Vec2d.hxx --> occt/gp/gp_Vec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpvec2d = "/usr/include/opencascade/gp_Vec2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  GpVec2d* {.importcpp: "gp_Vec2d", header: headerGpvec2d, bycopy.} = object


proc `new`*(this: var GpVec2d; theSize: csize_t): pointer {.
    importcpp: "gp_Vec2d::operator new", header: headerGpvec2d.}
proc `delete`*(this: var GpVec2d; theAddress: pointer) {.
    importcpp: "gp_Vec2d::operator delete", header: headerGpvec2d.}
proc `new[]`*(this: var GpVec2d; theSize: csize_t): pointer {.
    importcpp: "gp_Vec2d::operator new[]", header: headerGpvec2d.}
proc `delete[]`*(this: var GpVec2d; theAddress: pointer) {.
    importcpp: "gp_Vec2d::operator delete[]", header: headerGpvec2d.}
proc `new`*(this: var GpVec2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Vec2d::operator new", header: headerGpvec2d.}
proc `delete`*(this: var GpVec2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Vec2d::operator delete", header: headerGpvec2d.}
proc constructGpVec2d*(): GpVec2d {.constructor, importcpp: "gp_Vec2d(@)",
                                 header: headerGpvec2d.}
proc constructGpVec2d*(v: GpDir2d): GpVec2d {.constructor, importcpp: "gp_Vec2d(@)",
    header: headerGpvec2d.}
proc constructGpVec2d*(coord: GpXY): GpVec2d {.constructor, importcpp: "gp_Vec2d(@)",
    header: headerGpvec2d.}
proc constructGpVec2d*(xv: StandardReal; yv: StandardReal): GpVec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: headerGpvec2d.}
proc constructGpVec2d*(p1: GpPnt2d; p2: GpPnt2d): GpVec2d {.constructor,
    importcpp: "gp_Vec2d(@)", header: headerGpvec2d.}
proc setCoord*(this: var GpVec2d; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGpvec2d.}
proc setCoord*(this: var GpVec2d; xv: StandardReal; yv: StandardReal) {.
    importcpp: "SetCoord", header: headerGpvec2d.}
proc setX*(this: var GpVec2d; x: StandardReal) {.importcpp: "SetX",
    header: headerGpvec2d.}
proc setY*(this: var GpVec2d; y: StandardReal) {.importcpp: "SetY",
    header: headerGpvec2d.}
proc setXY*(this: var GpVec2d; coord: GpXY) {.importcpp: "SetXY", header: headerGpvec2d.}
proc coord*(this: GpVec2d; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGpvec2d.}
proc coord*(this: GpVec2d; xv: var StandardReal; yv: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: headerGpvec2d.}
proc x*(this: GpVec2d): StandardReal {.noSideEffect, importcpp: "X",
                                   header: headerGpvec2d.}
proc y*(this: GpVec2d): StandardReal {.noSideEffect, importcpp: "Y",
                                   header: headerGpvec2d.}
proc xy*(this: GpVec2d): GpXY {.noSideEffect, importcpp: "XY", header: headerGpvec2d.}
proc isEqual*(this: GpVec2d; other: GpVec2d; linearTolerance: StandardReal;
             angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: headerGpvec2d.}
proc isNormal*(this: GpVec2d; other: GpVec2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsNormal", header: headerGpvec2d.}
proc isOpposite*(this: GpVec2d; other: GpVec2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsOpposite", header: headerGpvec2d.}
proc isParallel*(this: GpVec2d; other: GpVec2d; angularTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsParallel", header: headerGpvec2d.}
proc angle*(this: GpVec2d; other: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGpvec2d.}
proc magnitude*(this: GpVec2d): StandardReal {.noSideEffect, importcpp: "Magnitude",
    header: headerGpvec2d.}
proc squareMagnitude*(this: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: headerGpvec2d.}
proc add*(this: var GpVec2d; other: GpVec2d) {.importcpp: "Add", header: headerGpvec2d.}
proc `+=`*(this: var GpVec2d; other: GpVec2d) {.importcpp: "(# += #)",
    header: headerGpvec2d.}
proc added*(this: GpVec2d; other: GpVec2d): GpVec2d {.noSideEffect, importcpp: "Added",
    header: headerGpvec2d.}
proc `+`*(this: GpVec2d; other: GpVec2d): GpVec2d {.noSideEffect, importcpp: "(# + #)",
    header: headerGpvec2d.}
proc crossed*(this: GpVec2d; right: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "Crossed", header: headerGpvec2d.}
proc `^`*(this: GpVec2d; right: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "(# ^ #)", header: headerGpvec2d.}
proc crossMagnitude*(this: GpVec2d; right: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: headerGpvec2d.}
proc crossSquareMagnitude*(this: GpVec2d; right: GpVec2d): StandardReal {.
    noSideEffect, importcpp: "CrossSquareMagnitude", header: headerGpvec2d.}
proc divide*(this: var GpVec2d; scalar: StandardReal) {.importcpp: "Divide",
    header: headerGpvec2d.}
proc `/=`*(this: var GpVec2d; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: headerGpvec2d.}
proc divided*(this: GpVec2d; scalar: StandardReal): GpVec2d {.noSideEffect,
    importcpp: "Divided", header: headerGpvec2d.}
proc `/`*(this: GpVec2d; scalar: StandardReal): GpVec2d {.noSideEffect,
    importcpp: "(# / #)", header: headerGpvec2d.}
proc dot*(this: GpVec2d; other: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "Dot", header: headerGpvec2d.}
proc `*`*(this: GpVec2d; other: GpVec2d): StandardReal {.noSideEffect,
    importcpp: "(# * #)", header: headerGpvec2d.}
proc getNormal*(this: GpVec2d): GpVec2d {.noSideEffect, importcpp: "GetNormal",
                                      header: headerGpvec2d.}
proc multiply*(this: var GpVec2d; scalar: StandardReal) {.importcpp: "Multiply",
    header: headerGpvec2d.}
proc `*=`*(this: var GpVec2d; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpvec2d.}
proc multiplied*(this: GpVec2d; scalar: StandardReal): GpVec2d {.noSideEffect,
    importcpp: "Multiplied", header: headerGpvec2d.}
proc `*`*(this: GpVec2d; scalar: StandardReal): GpVec2d {.noSideEffect,
    importcpp: "(# * #)", header: headerGpvec2d.}
proc normalize*(this: var GpVec2d) {.importcpp: "Normalize", header: headerGpvec2d.}
proc normalized*(this: GpVec2d): GpVec2d {.noSideEffect, importcpp: "Normalized",
                                       header: headerGpvec2d.}
proc reverse*(this: var GpVec2d) {.importcpp: "Reverse", header: headerGpvec2d.}
proc reversed*(this: GpVec2d): GpVec2d {.noSideEffect, importcpp: "Reversed",
                                     header: headerGpvec2d.}
proc `-`*(this: GpVec2d): GpVec2d {.noSideEffect, importcpp: "(- #)",
                                header: headerGpvec2d.}
proc subtract*(this: var GpVec2d; right: GpVec2d) {.importcpp: "Subtract",
    header: headerGpvec2d.}
proc `-=`*(this: var GpVec2d; right: GpVec2d) {.importcpp: "(# -= #)",
    header: headerGpvec2d.}
proc subtracted*(this: GpVec2d; right: GpVec2d): GpVec2d {.noSideEffect,
    importcpp: "Subtracted", header: headerGpvec2d.}
proc `-`*(this: GpVec2d; right: GpVec2d): GpVec2d {.noSideEffect, importcpp: "(# - #)",
    header: headerGpvec2d.}
proc setLinearForm*(this: var GpVec2d; a1: StandardReal; v1: GpVec2d; a2: StandardReal;
                   v2: GpVec2d; v3: GpVec2d) {.importcpp: "SetLinearForm",
    header: headerGpvec2d.}
proc setLinearForm*(this: var GpVec2d; a1: StandardReal; v1: GpVec2d; a2: StandardReal;
                   v2: GpVec2d) {.importcpp: "SetLinearForm", header: headerGpvec2d.}
proc setLinearForm*(this: var GpVec2d; a1: StandardReal; v1: GpVec2d; v2: GpVec2d) {.
    importcpp: "SetLinearForm", header: headerGpvec2d.}
proc setLinearForm*(this: var GpVec2d; left: GpVec2d; right: GpVec2d) {.
    importcpp: "SetLinearForm", header: headerGpvec2d.}
proc mirror*(this: var GpVec2d; v: GpVec2d) {.importcpp: "Mirror", header: headerGpvec2d.}
proc mirrored*(this: GpVec2d; v: GpVec2d): GpVec2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpvec2d.}
proc mirror*(this: var GpVec2d; a1: GpAx2d) {.importcpp: "Mirror", header: headerGpvec2d.}
proc mirrored*(this: GpVec2d; a1: GpAx2d): GpVec2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpvec2d.}
proc rotate*(this: var GpVec2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpvec2d.}
proc rotated*(this: GpVec2d; ang: StandardReal): GpVec2d {.noSideEffect,
    importcpp: "Rotated", header: headerGpvec2d.}
proc scale*(this: var GpVec2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGpvec2d.}
proc scaled*(this: GpVec2d; s: StandardReal): GpVec2d {.noSideEffect,
    importcpp: "Scaled", header: headerGpvec2d.}
proc transform*(this: var GpVec2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpvec2d.}
proc transformed*(this: GpVec2d; t: GpTrsf2d): GpVec2d {.noSideEffect,
    importcpp: "Transformed", header: headerGpvec2d.}