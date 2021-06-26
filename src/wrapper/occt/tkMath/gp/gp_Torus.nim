# /usr/include/opencascade/gp_Torus.hxx --> occt/tkMath/gp/gp_Torus.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGptorus = "/usr/include/opencascade/gp_Torus.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpTorus* {.importcpp: "gp_Torus", header: headerGptorus, bycopy.} = object


proc `new`*(this: var GpTorus; theSize: csize_t): pointer {.
    importcpp: "gp_Torus::operator new", header: headerGptorus.}
proc `delete`*(this: var GpTorus; theAddress: pointer) {.
    importcpp: "gp_Torus::operator delete", header: headerGptorus.}
proc `new[]`*(this: var GpTorus; theSize: csize_t): pointer {.
    importcpp: "gp_Torus::operator new[]", header: headerGptorus.}
proc `delete[]`*(this: var GpTorus; theAddress: pointer) {.
    importcpp: "gp_Torus::operator delete[]", header: headerGptorus.}
proc `new`*(this: var GpTorus; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Torus::operator new", header: headerGptorus.}
proc `delete`*(this: var GpTorus; a2: pointer; a3: pointer) {.
    importcpp: "gp_Torus::operator delete", header: headerGptorus.}
proc constructGpTorus*(): GpTorus {.constructor, importcpp: "gp_Torus(@)",
                                 header: headerGptorus.}
proc constructGpTorus*(a3: GpAx3; majorRadius: StandardReal;
                      minorRadius: StandardReal): GpTorus {.constructor,
    importcpp: "gp_Torus(@)", header: headerGptorus.}
proc setAxis*(this: var GpTorus; a1: GpAx1) {.importcpp: "SetAxis",
                                        header: headerGptorus.}
proc setLocation*(this: var GpTorus; loc: GpPnt) {.importcpp: "SetLocation",
    header: headerGptorus.}
proc setMajorRadius*(this: var GpTorus; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: headerGptorus.}
proc setMinorRadius*(this: var GpTorus; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: headerGptorus.}
proc setPosition*(this: var GpTorus; a3: GpAx3) {.importcpp: "SetPosition",
    header: headerGptorus.}
proc area*(this: GpTorus): StandardReal {.noSideEffect, importcpp: "Area",
                                      header: headerGptorus.}
proc uReverse*(this: var GpTorus) {.importcpp: "UReverse", header: headerGptorus.}
proc vReverse*(this: var GpTorus) {.importcpp: "VReverse", header: headerGptorus.}
proc direct*(this: GpTorus): StandardBoolean {.noSideEffect, importcpp: "Direct",
    header: headerGptorus.}
proc axis*(this: GpTorus): GpAx1 {.noSideEffect, importcpp: "Axis",
                               header: headerGptorus.}
proc coefficients*(this: GpTorus; coef: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Coefficients", header: headerGptorus.}
proc location*(this: GpTorus): GpPnt {.noSideEffect, importcpp: "Location",
                                   header: headerGptorus.}
proc position*(this: GpTorus): GpAx3 {.noSideEffect, importcpp: "Position",
                                   header: headerGptorus.}
proc majorRadius*(this: GpTorus): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: headerGptorus.}
proc minorRadius*(this: GpTorus): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: headerGptorus.}
proc volume*(this: GpTorus): StandardReal {.noSideEffect, importcpp: "Volume",
                                        header: headerGptorus.}
proc xAxis*(this: GpTorus): GpAx1 {.noSideEffect, importcpp: "XAxis",
                                header: headerGptorus.}
proc yAxis*(this: GpTorus): GpAx1 {.noSideEffect, importcpp: "YAxis",
                                header: headerGptorus.}
proc mirror*(this: var GpTorus; p: GpPnt) {.importcpp: "Mirror", header: headerGptorus.}
proc mirrored*(this: GpTorus; p: GpPnt): GpTorus {.noSideEffect, importcpp: "Mirrored",
    header: headerGptorus.}
proc mirror*(this: var GpTorus; a1: GpAx1) {.importcpp: "Mirror", header: headerGptorus.}
proc mirrored*(this: GpTorus; a1: GpAx1): GpTorus {.noSideEffect,
    importcpp: "Mirrored", header: headerGptorus.}
proc mirror*(this: var GpTorus; a2: GpAx2) {.importcpp: "Mirror", header: headerGptorus.}
proc mirrored*(this: GpTorus; a2: GpAx2): GpTorus {.noSideEffect,
    importcpp: "Mirrored", header: headerGptorus.}
proc rotate*(this: var GpTorus; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGptorus.}
proc rotated*(this: GpTorus; a1: GpAx1; ang: StandardReal): GpTorus {.noSideEffect,
    importcpp: "Rotated", header: headerGptorus.}
proc scale*(this: var GpTorus; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGptorus.}
proc scaled*(this: GpTorus; p: GpPnt; s: StandardReal): GpTorus {.noSideEffect,
    importcpp: "Scaled", header: headerGptorus.}
proc transform*(this: var GpTorus; t: GpTrsf) {.importcpp: "Transform",
    header: headerGptorus.}
proc transformed*(this: GpTorus; t: GpTrsf): GpTorus {.noSideEffect,
    importcpp: "Transformed", header: headerGptorus.}
proc translate*(this: var GpTorus; v: GpVec) {.importcpp: "Translate",
    header: headerGptorus.}
proc translated*(this: GpTorus; v: GpVec): GpTorus {.noSideEffect,
    importcpp: "Translated", header: headerGptorus.}
proc translate*(this: var GpTorus; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGptorus.}
proc translated*(this: GpTorus; p1: GpPnt; p2: GpPnt): GpTorus {.noSideEffect,
    importcpp: "Translated", header: headerGptorus.}