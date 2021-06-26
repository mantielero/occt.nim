# /usr/include/opencascade/gp_Cone.hxx --> occt/tkMath/gp/gp_Cone.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpcone = "/usr/include/opencascade/gp_Cone.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpCone* {.importcpp: "gp_Cone", header: headerGpcone, bycopy.} = object


proc `new`*(this: var GpCone; theSize: csize_t): pointer {.
    importcpp: "gp_Cone::operator new", header: headerGpcone.}
proc `delete`*(this: var GpCone; theAddress: pointer) {.
    importcpp: "gp_Cone::operator delete", header: headerGpcone.}
proc `new[]`*(this: var GpCone; theSize: csize_t): pointer {.
    importcpp: "gp_Cone::operator new[]", header: headerGpcone.}
proc `delete[]`*(this: var GpCone; theAddress: pointer) {.
    importcpp: "gp_Cone::operator delete[]", header: headerGpcone.}
proc `new`*(this: var GpCone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Cone::operator new", header: headerGpcone.}
proc `delete`*(this: var GpCone; a2: pointer; a3: pointer) {.
    importcpp: "gp_Cone::operator delete", header: headerGpcone.}
proc constructGpCone*(): GpCone {.constructor, importcpp: "gp_Cone(@)",
                               header: headerGpcone.}
proc constructGpCone*(a3: GpAx3; ang: StandardReal; radius: StandardReal): GpCone {.
    constructor, importcpp: "gp_Cone(@)", header: headerGpcone.}
proc setAxis*(this: var GpCone; a1: GpAx1) {.importcpp: "SetAxis", header: headerGpcone.}
proc setLocation*(this: var GpCone; loc: GpPnt) {.importcpp: "SetLocation",
    header: headerGpcone.}
proc setPosition*(this: var GpCone; a3: GpAx3) {.importcpp: "SetPosition",
    header: headerGpcone.}
proc setRadius*(this: var GpCone; r: StandardReal) {.importcpp: "SetRadius",
    header: headerGpcone.}
proc setSemiAngle*(this: var GpCone; ang: StandardReal) {.importcpp: "SetSemiAngle",
    header: headerGpcone.}
proc apex*(this: GpCone): GpPnt {.noSideEffect, importcpp: "Apex", header: headerGpcone.}
proc uReverse*(this: var GpCone) {.importcpp: "UReverse", header: headerGpcone.}
proc vReverse*(this: var GpCone) {.importcpp: "VReverse", header: headerGpcone.}
proc direct*(this: GpCone): StandardBoolean {.noSideEffect, importcpp: "Direct",
    header: headerGpcone.}
proc axis*(this: GpCone): GpAx1 {.noSideEffect, importcpp: "Axis", header: headerGpcone.}
proc coefficients*(this: GpCone; a1: var StandardReal; a2: var StandardReal;
                  a3: var StandardReal; b1: var StandardReal; b2: var StandardReal;
                  b3: var StandardReal; c1: var StandardReal; c2: var StandardReal;
                  c3: var StandardReal; d: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: headerGpcone.}
proc location*(this: GpCone): GpPnt {.noSideEffect, importcpp: "Location",
                                  header: headerGpcone.}
proc position*(this: GpCone): GpAx3 {.noSideEffect, importcpp: "Position",
                                  header: headerGpcone.}
proc refRadius*(this: GpCone): StandardReal {.noSideEffect, importcpp: "RefRadius",
    header: headerGpcone.}
proc semiAngle*(this: GpCone): StandardReal {.noSideEffect, importcpp: "SemiAngle",
    header: headerGpcone.}
proc xAxis*(this: GpCone): GpAx1 {.noSideEffect, importcpp: "XAxis",
                               header: headerGpcone.}
proc yAxis*(this: GpCone): GpAx1 {.noSideEffect, importcpp: "YAxis",
                               header: headerGpcone.}
proc mirror*(this: var GpCone; p: GpPnt) {.importcpp: "Mirror", header: headerGpcone.}
proc mirrored*(this: GpCone; p: GpPnt): GpCone {.noSideEffect, importcpp: "Mirrored",
    header: headerGpcone.}
proc mirror*(this: var GpCone; a1: GpAx1) {.importcpp: "Mirror", header: headerGpcone.}
proc mirrored*(this: GpCone; a1: GpAx1): GpCone {.noSideEffect, importcpp: "Mirrored",
    header: headerGpcone.}
proc mirror*(this: var GpCone; a2: GpAx2) {.importcpp: "Mirror", header: headerGpcone.}
proc mirrored*(this: GpCone; a2: GpAx2): GpCone {.noSideEffect, importcpp: "Mirrored",
    header: headerGpcone.}
proc rotate*(this: var GpCone; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpcone.}
proc rotated*(this: GpCone; a1: GpAx1; ang: StandardReal): GpCone {.noSideEffect,
    importcpp: "Rotated", header: headerGpcone.}
proc scale*(this: var GpCone; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpcone.}
proc scaled*(this: GpCone; p: GpPnt; s: StandardReal): GpCone {.noSideEffect,
    importcpp: "Scaled", header: headerGpcone.}
proc transform*(this: var GpCone; t: GpTrsf) {.importcpp: "Transform",
    header: headerGpcone.}
proc transformed*(this: GpCone; t: GpTrsf): GpCone {.noSideEffect,
    importcpp: "Transformed", header: headerGpcone.}
proc translate*(this: var GpCone; v: GpVec) {.importcpp: "Translate",
                                        header: headerGpcone.}
proc translated*(this: GpCone; v: GpVec): GpCone {.noSideEffect,
    importcpp: "Translated", header: headerGpcone.}
proc translate*(this: var GpCone; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpcone.}
proc translated*(this: GpCone; p1: GpPnt; p2: GpPnt): GpCone {.noSideEffect,
    importcpp: "Translated", header: headerGpcone.}