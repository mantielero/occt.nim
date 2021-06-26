# /usr/include/opencascade/gp_XY.hxx --> occt/tkMath/gp/gp_XY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpxy = "/usr/include/opencascade/gp_XY.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat2d"
type
  GpXY* {.importcpp: "gp_XY", header: headerGpxy, bycopy.} = object


proc `new`*(this: var GpXY; theSize: csize_t): pointer {.
    importcpp: "gp_XY::operator new", header: headerGpxy.}
proc `delete`*(this: var GpXY; theAddress: pointer) {.
    importcpp: "gp_XY::operator delete", header: headerGpxy.}
proc `new[]`*(this: var GpXY; theSize: csize_t): pointer {.
    importcpp: "gp_XY::operator new[]", header: headerGpxy.}
proc `delete[]`*(this: var GpXY; theAddress: pointer) {.
    importcpp: "gp_XY::operator delete[]", header: headerGpxy.}
proc `new`*(this: var GpXY; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_XY::operator new", header: headerGpxy.}
proc `delete`*(this: var GpXY; a2: pointer; a3: pointer) {.
    importcpp: "gp_XY::operator delete", header: headerGpxy.}
proc constructGpXY*(): GpXY {.constructor, importcpp: "gp_XY(@)", header: headerGpxy.}
proc constructGpXY*(x: StandardReal; y: StandardReal): GpXY {.constructor,
    importcpp: "gp_XY(@)", header: headerGpxy.}
proc setCoord*(this: var GpXY; index: StandardInteger; xi: StandardReal) {.
    importcpp: "SetCoord", header: headerGpxy.}
proc setCoord*(this: var GpXY; x: StandardReal; y: StandardReal) {.
    importcpp: "SetCoord", header: headerGpxy.}
proc setX*(this: var GpXY; x: StandardReal) {.importcpp: "SetX", header: headerGpxy.}
proc setY*(this: var GpXY; y: StandardReal) {.importcpp: "SetY", header: headerGpxy.}
proc coord*(this: GpXY; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coord", header: headerGpxy.}
proc changeCoord*(this: var GpXY; theIndex: StandardInteger): var StandardReal {.
    importcpp: "ChangeCoord", header: headerGpxy.}
proc coord*(this: GpXY; x: var StandardReal; y: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: headerGpxy.}
proc x*(this: GpXY): StandardReal {.noSideEffect, importcpp: "X", header: headerGpxy.}
proc y*(this: GpXY): StandardReal {.noSideEffect, importcpp: "Y", header: headerGpxy.}
proc modulus*(this: GpXY): StandardReal {.noSideEffect, importcpp: "Modulus",
                                      header: headerGpxy.}
proc squareModulus*(this: GpXY): StandardReal {.noSideEffect,
    importcpp: "SquareModulus", header: headerGpxy.}
proc isEqual*(this: GpXY; other: GpXY; tolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: headerGpxy.}
proc add*(this: var GpXY; other: GpXY) {.importcpp: "Add", header: headerGpxy.}
proc `+=`*(this: var GpXY; other: GpXY) {.importcpp: "(# += #)", header: headerGpxy.}
proc added*(this: GpXY; other: GpXY): GpXY {.noSideEffect, importcpp: "Added",
                                       header: headerGpxy.}
proc `+`*(this: GpXY; other: GpXY): GpXY {.noSideEffect, importcpp: "(# + #)",
                                     header: headerGpxy.}
proc crossed*(this: GpXY; right: GpXY): StandardReal {.noSideEffect,
    importcpp: "Crossed", header: headerGpxy.}
proc `^`*(this: GpXY; right: GpXY): StandardReal {.noSideEffect, importcpp: "(# ^ #)",
    header: headerGpxy.}
proc crossMagnitude*(this: GpXY; right: GpXY): StandardReal {.noSideEffect,
    importcpp: "CrossMagnitude", header: headerGpxy.}
proc crossSquareMagnitude*(this: GpXY; right: GpXY): StandardReal {.noSideEffect,
    importcpp: "CrossSquareMagnitude", header: headerGpxy.}
proc divide*(this: var GpXY; scalar: StandardReal) {.importcpp: "Divide",
    header: headerGpxy.}
proc `/=`*(this: var GpXY; scalar: StandardReal) {.importcpp: "(# /= #)",
    header: headerGpxy.}
proc divided*(this: GpXY; scalar: StandardReal): GpXY {.noSideEffect,
    importcpp: "Divided", header: headerGpxy.}
proc `/`*(this: GpXY; scalar: StandardReal): GpXY {.noSideEffect, importcpp: "(# / #)",
    header: headerGpxy.}
proc dot*(this: GpXY; other: GpXY): StandardReal {.noSideEffect, importcpp: "Dot",
    header: headerGpxy.}
proc `*`*(this: GpXY; other: GpXY): StandardReal {.noSideEffect, importcpp: "(# * #)",
    header: headerGpxy.}
proc multiply*(this: var GpXY; scalar: StandardReal) {.importcpp: "Multiply",
    header: headerGpxy.}
proc `*=`*(this: var GpXY; scalar: StandardReal) {.importcpp: "(# *= #)",
    header: headerGpxy.}
proc multiply*(this: var GpXY; other: GpXY) {.importcpp: "Multiply", header: headerGpxy.}
proc `*=`*(this: var GpXY; other: GpXY) {.importcpp: "(# *= #)", header: headerGpxy.}
proc multiply*(this: var GpXY; matrix: GpMat2d) {.importcpp: "Multiply",
    header: headerGpxy.}
proc `*=`*(this: var GpXY; matrix: GpMat2d) {.importcpp: "(# *= #)", header: headerGpxy.}
proc multiplied*(this: GpXY; scalar: StandardReal): GpXY {.noSideEffect,
    importcpp: "Multiplied", header: headerGpxy.}
proc `*`*(this: GpXY; scalar: StandardReal): GpXY {.noSideEffect, importcpp: "(# * #)",
    header: headerGpxy.}
proc multiplied*(this: GpXY; other: GpXY): GpXY {.noSideEffect,
    importcpp: "Multiplied", header: headerGpxy.}
proc multiplied*(this: GpXY; matrix: GpMat2d): GpXY {.noSideEffect,
    importcpp: "Multiplied", header: headerGpxy.}
proc `*`*(this: GpXY; matrix: GpMat2d): GpXY {.noSideEffect, importcpp: "(# * #)",
    header: headerGpxy.}
proc normalize*(this: var GpXY) {.importcpp: "Normalize", header: headerGpxy.}
proc normalized*(this: GpXY): GpXY {.noSideEffect, importcpp: "Normalized",
                                 header: headerGpxy.}
proc reverse*(this: var GpXY) {.importcpp: "Reverse", header: headerGpxy.}
proc reversed*(this: GpXY): GpXY {.noSideEffect, importcpp: "Reversed",
                               header: headerGpxy.}
proc `-`*(this: GpXY): GpXY {.noSideEffect, importcpp: "(- #)", header: headerGpxy.}
proc setLinearForm*(this: var GpXY; a1: StandardReal; xy1: GpXY; a2: StandardReal;
                   xy2: GpXY) {.importcpp: "SetLinearForm", header: headerGpxy.}
proc setLinearForm*(this: var GpXY; a1: StandardReal; xy1: GpXY; a2: StandardReal;
                   xy2: GpXY; xy3: GpXY) {.importcpp: "SetLinearForm",
                                       header: headerGpxy.}
proc setLinearForm*(this: var GpXY; a1: StandardReal; xy1: GpXY; xy2: GpXY) {.
    importcpp: "SetLinearForm", header: headerGpxy.}
proc setLinearForm*(this: var GpXY; xy1: GpXY; xy2: GpXY) {.importcpp: "SetLinearForm",
    header: headerGpxy.}
proc subtract*(this: var GpXY; right: GpXY) {.importcpp: "Subtract", header: headerGpxy.}
proc `-=`*(this: var GpXY; right: GpXY) {.importcpp: "(# -= #)", header: headerGpxy.}
proc subtracted*(this: GpXY; right: GpXY): GpXY {.noSideEffect,
    importcpp: "Subtracted", header: headerGpxy.}
proc `-`*(this: GpXY; right: GpXY): GpXY {.noSideEffect, importcpp: "(# - #)",
                                     header: headerGpxy.}