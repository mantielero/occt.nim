# /usr/include/opencascade/gp_Pln.hxx --> occt/gp/gp_Pln.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGppln = "/usr/include/opencascade/gp_Pln.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpPln* {.importcpp: "gp_Pln", header: headerGppln, bycopy.} = object


proc `new`*(this: var GpPln; theSize: csize_t): pointer {.
    importcpp: "gp_Pln::operator new", header: headerGppln.}
proc `delete`*(this: var GpPln; theAddress: pointer) {.
    importcpp: "gp_Pln::operator delete", header: headerGppln.}
proc `new[]`*(this: var GpPln; theSize: csize_t): pointer {.
    importcpp: "gp_Pln::operator new[]", header: headerGppln.}
proc `delete[]`*(this: var GpPln; theAddress: pointer) {.
    importcpp: "gp_Pln::operator delete[]", header: headerGppln.}
proc `new`*(this: var GpPln; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Pln::operator new", header: headerGppln.}
proc `delete`*(this: var GpPln; a2: pointer; a3: pointer) {.
    importcpp: "gp_Pln::operator delete", header: headerGppln.}
proc constructGpPln*(): GpPln {.constructor, importcpp: "gp_Pln(@)",
                             header: headerGppln.}
proc constructGpPln*(a3: GpAx3): GpPln {.constructor, importcpp: "gp_Pln(@)",
                                     header: headerGppln.}
proc constructGpPln*(p: GpPnt; v: GpDir): GpPln {.constructor, importcpp: "gp_Pln(@)",
    header: headerGppln.}
proc constructGpPln*(a: StandardReal; b: StandardReal; c: StandardReal; d: StandardReal): GpPln {.
    constructor, importcpp: "gp_Pln(@)", header: headerGppln.}
proc coefficients*(this: GpPln; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: headerGppln.}
proc setAxis*(this: var GpPln; a1: GpAx1) {.importcpp: "SetAxis", header: headerGppln.}
proc setLocation*(this: var GpPln; loc: GpPnt) {.importcpp: "SetLocation",
    header: headerGppln.}
proc setPosition*(this: var GpPln; a3: GpAx3) {.importcpp: "SetPosition",
    header: headerGppln.}
proc uReverse*(this: var GpPln) {.importcpp: "UReverse", header: headerGppln.}
proc vReverse*(this: var GpPln) {.importcpp: "VReverse", header: headerGppln.}
proc direct*(this: GpPln): StandardBoolean {.noSideEffect, importcpp: "Direct",
    header: headerGppln.}
proc axis*(this: GpPln): GpAx1 {.noSideEffect, importcpp: "Axis", header: headerGppln.}
proc location*(this: GpPln): GpPnt {.noSideEffect, importcpp: "Location",
                                 header: headerGppln.}
proc position*(this: GpPln): GpAx3 {.noSideEffect, importcpp: "Position",
                                 header: headerGppln.}
proc distance*(this: GpPln; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGppln.}
proc distance*(this: GpPln; L: GpLin): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGppln.}
proc distance*(this: GpPln; other: GpPln): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGppln.}
proc squareDistance*(this: GpPln; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGppln.}
proc squareDistance*(this: GpPln; L: GpLin): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGppln.}
proc squareDistance*(this: GpPln; other: GpPln): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGppln.}
proc xAxis*(this: GpPln): GpAx1 {.noSideEffect, importcpp: "XAxis", header: headerGppln.}
proc yAxis*(this: GpPln): GpAx1 {.noSideEffect, importcpp: "YAxis", header: headerGppln.}
proc contains*(this: GpPln; p: GpPnt; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: headerGppln.}
proc contains*(this: GpPln; L: GpLin; linearTolerance: StandardReal;
              angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "Contains", header: headerGppln.}
proc mirror*(this: var GpPln; p: GpPnt) {.importcpp: "Mirror", header: headerGppln.}
proc mirrored*(this: GpPln; p: GpPnt): GpPln {.noSideEffect, importcpp: "Mirrored",
    header: headerGppln.}
proc mirror*(this: var GpPln; a1: GpAx1) {.importcpp: "Mirror", header: headerGppln.}
proc mirrored*(this: GpPln; a1: GpAx1): GpPln {.noSideEffect, importcpp: "Mirrored",
    header: headerGppln.}
proc mirror*(this: var GpPln; a2: GpAx2) {.importcpp: "Mirror", header: headerGppln.}
proc mirrored*(this: GpPln; a2: GpAx2): GpPln {.noSideEffect, importcpp: "Mirrored",
    header: headerGppln.}
proc rotate*(this: var GpPln; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGppln.}
proc rotated*(this: GpPln; a1: GpAx1; ang: StandardReal): GpPln {.noSideEffect,
    importcpp: "Rotated", header: headerGppln.}
proc scale*(this: var GpPln; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGppln.}
proc scaled*(this: GpPln; p: GpPnt; s: StandardReal): GpPln {.noSideEffect,
    importcpp: "Scaled", header: headerGppln.}
proc transform*(this: var GpPln; t: GpTrsf) {.importcpp: "Transform",
                                        header: headerGppln.}
proc transformed*(this: GpPln; t: GpTrsf): GpPln {.noSideEffect,
    importcpp: "Transformed", header: headerGppln.}
proc translate*(this: var GpPln; v: GpVec) {.importcpp: "Translate", header: headerGppln.}
proc translated*(this: GpPln; v: GpVec): GpPln {.noSideEffect, importcpp: "Translated",
    header: headerGppln.}
proc translate*(this: var GpPln; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGppln.}
proc translated*(this: GpPln; p1: GpPnt; p2: GpPnt): GpPln {.noSideEffect,
    importcpp: "Translated", header: headerGppln.}
proc dumpJson*(this: GpPln; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerGppln.}