# /usr/include/opencascade/gp_Lin2d.hxx --> occt/tkMath/gp/gp_Lin2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGplin2d = "/usr/include/opencascade/gp_Lin2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpLin2d* {.importcpp: "gp_Lin2d", header: headerGplin2d, bycopy.} = object


proc `new`*(this: var GpLin2d; theSize: csize_t): pointer {.
    importcpp: "gp_Lin2d::operator new", header: headerGplin2d.}
proc `delete`*(this: var GpLin2d; theAddress: pointer) {.
    importcpp: "gp_Lin2d::operator delete", header: headerGplin2d.}
proc `new[]`*(this: var GpLin2d; theSize: csize_t): pointer {.
    importcpp: "gp_Lin2d::operator new[]", header: headerGplin2d.}
proc `delete[]`*(this: var GpLin2d; theAddress: pointer) {.
    importcpp: "gp_Lin2d::operator delete[]", header: headerGplin2d.}
proc `new`*(this: var GpLin2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Lin2d::operator new", header: headerGplin2d.}
proc `delete`*(this: var GpLin2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Lin2d::operator delete", header: headerGplin2d.}
proc constructGpLin2d*(): GpLin2d {.constructor, importcpp: "gp_Lin2d(@)",
                                 header: headerGplin2d.}
proc constructGpLin2d*(a: GpAx2d): GpLin2d {.constructor, importcpp: "gp_Lin2d(@)",
    header: headerGplin2d.}
proc constructGpLin2d*(p: GpPnt2d; v: GpDir2d): GpLin2d {.constructor,
    importcpp: "gp_Lin2d(@)", header: headerGplin2d.}
proc constructGpLin2d*(a: StandardReal; b: StandardReal; c: StandardReal): GpLin2d {.
    constructor, importcpp: "gp_Lin2d(@)", header: headerGplin2d.}
proc reverse*(this: var GpLin2d) {.importcpp: "Reverse", header: headerGplin2d.}
proc reversed*(this: GpLin2d): GpLin2d {.noSideEffect, importcpp: "Reversed",
                                     header: headerGplin2d.}
proc setDirection*(this: var GpLin2d; v: GpDir2d) {.importcpp: "SetDirection",
    header: headerGplin2d.}
proc setLocation*(this: var GpLin2d; p: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGplin2d.}
proc setPosition*(this: var GpLin2d; a: GpAx2d) {.importcpp: "SetPosition",
    header: headerGplin2d.}
proc coefficients*(this: GpLin2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: headerGplin2d.}
proc direction*(this: GpLin2d): GpDir2d {.noSideEffect, importcpp: "Direction",
                                      header: headerGplin2d.}
proc location*(this: GpLin2d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                     header: headerGplin2d.}
proc position*(this: GpLin2d): GpAx2d {.noSideEffect, importcpp: "Position",
                                    header: headerGplin2d.}
proc angle*(this: GpLin2d; other: GpLin2d): StandardReal {.noSideEffect,
    importcpp: "Angle", header: headerGplin2d.}
proc contains*(this: GpLin2d; p: GpPnt2d; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: headerGplin2d.}
proc distance*(this: GpLin2d; p: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGplin2d.}
proc distance*(this: GpLin2d; other: GpLin2d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGplin2d.}
proc squareDistance*(this: GpLin2d; p: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGplin2d.}
proc squareDistance*(this: GpLin2d; other: GpLin2d): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGplin2d.}
proc normal*(this: GpLin2d; p: GpPnt2d): GpLin2d {.noSideEffect, importcpp: "Normal",
    header: headerGplin2d.}
proc mirror*(this: var GpLin2d; p: GpPnt2d) {.importcpp: "Mirror", header: headerGplin2d.}
proc mirrored*(this: GpLin2d; p: GpPnt2d): GpLin2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGplin2d.}
proc mirror*(this: var GpLin2d; a: GpAx2d) {.importcpp: "Mirror", header: headerGplin2d.}
proc mirrored*(this: GpLin2d; a: GpAx2d): GpLin2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGplin2d.}
proc rotate*(this: var GpLin2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGplin2d.}
proc rotated*(this: GpLin2d; p: GpPnt2d; ang: StandardReal): GpLin2d {.noSideEffect,
    importcpp: "Rotated", header: headerGplin2d.}
proc scale*(this: var GpLin2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGplin2d.}
proc scaled*(this: GpLin2d; p: GpPnt2d; s: StandardReal): GpLin2d {.noSideEffect,
    importcpp: "Scaled", header: headerGplin2d.}
proc transform*(this: var GpLin2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGplin2d.}
proc transformed*(this: GpLin2d; t: GpTrsf2d): GpLin2d {.noSideEffect,
    importcpp: "Transformed", header: headerGplin2d.}
proc translate*(this: var GpLin2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGplin2d.}
proc translated*(this: GpLin2d; v: GpVec2d): GpLin2d {.noSideEffect,
    importcpp: "Translated", header: headerGplin2d.}
proc translate*(this: var GpLin2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGplin2d.}
proc translated*(this: GpLin2d; p1: GpPnt2d; p2: GpPnt2d): GpLin2d {.noSideEffect,
    importcpp: "Translated", header: headerGplin2d.}