# /usr/include/opencascade/gp_Circ2d.hxx --> occt/tkMath/gp/gp_Circ2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpcirc2d = "/usr/include/opencascade/gp_Circ2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpCirc2d* {.importcpp: "gp_Circ2d", header: headerGpcirc2d, bycopy.} = object


proc `new`*(this: var GpCirc2d; theSize: csize_t): pointer {.
    importcpp: "gp_Circ2d::operator new", header: headerGpcirc2d.}
proc `delete`*(this: var GpCirc2d; theAddress: pointer) {.
    importcpp: "gp_Circ2d::operator delete", header: headerGpcirc2d.}
proc `new[]`*(this: var GpCirc2d; theSize: csize_t): pointer {.
    importcpp: "gp_Circ2d::operator new[]", header: headerGpcirc2d.}
proc `delete[]`*(this: var GpCirc2d; theAddress: pointer) {.
    importcpp: "gp_Circ2d::operator delete[]", header: headerGpcirc2d.}
proc `new`*(this: var GpCirc2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Circ2d::operator new", header: headerGpcirc2d.}
proc `delete`*(this: var GpCirc2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Circ2d::operator delete", header: headerGpcirc2d.}
proc constructGpCirc2d*(): GpCirc2d {.constructor, importcpp: "gp_Circ2d(@)",
                                   header: headerGpcirc2d.}
proc constructGpCirc2d*(xAxis: GpAx2d; radius: StandardReal;
                       sense: StandardBoolean = true): GpCirc2d {.constructor,
    importcpp: "gp_Circ2d(@)", header: headerGpcirc2d.}
proc constructGpCirc2d*(axis: GpAx22d; radius: StandardReal): GpCirc2d {.constructor,
    importcpp: "gp_Circ2d(@)", header: headerGpcirc2d.}
proc setLocation*(this: var GpCirc2d; p: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGpcirc2d.}
proc setXAxis*(this: var GpCirc2d; a: GpAx2d) {.importcpp: "SetXAxis",
    header: headerGpcirc2d.}
proc setAxis*(this: var GpCirc2d; a: GpAx22d) {.importcpp: "SetAxis",
    header: headerGpcirc2d.}
proc setYAxis*(this: var GpCirc2d; a: GpAx2d) {.importcpp: "SetYAxis",
    header: headerGpcirc2d.}
proc setRadius*(this: var GpCirc2d; radius: StandardReal) {.importcpp: "SetRadius",
    header: headerGpcirc2d.}
proc area*(this: GpCirc2d): StandardReal {.noSideEffect, importcpp: "Area",
                                       header: headerGpcirc2d.}
proc coefficients*(this: GpCirc2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: headerGpcirc2d.}
proc contains*(this: GpCirc2d; p: GpPnt2d; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: headerGpcirc2d.}
proc distance*(this: GpCirc2d; p: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: headerGpcirc2d.}
proc squareDistance*(this: GpCirc2d; p: GpPnt2d): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: headerGpcirc2d.}
proc length*(this: GpCirc2d): StandardReal {.noSideEffect, importcpp: "Length",
    header: headerGpcirc2d.}
proc location*(this: GpCirc2d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                      header: headerGpcirc2d.}
proc radius*(this: GpCirc2d): StandardReal {.noSideEffect, importcpp: "Radius",
    header: headerGpcirc2d.}
proc axis*(this: GpCirc2d): GpAx22d {.noSideEffect, importcpp: "Axis",
                                  header: headerGpcirc2d.}
proc position*(this: GpCirc2d): GpAx22d {.noSideEffect, importcpp: "Position",
                                      header: headerGpcirc2d.}
proc xAxis*(this: GpCirc2d): GpAx2d {.noSideEffect, importcpp: "XAxis",
                                  header: headerGpcirc2d.}
proc yAxis*(this: GpCirc2d): GpAx2d {.noSideEffect, importcpp: "YAxis",
                                  header: headerGpcirc2d.}
proc reverse*(this: var GpCirc2d) {.importcpp: "Reverse", header: headerGpcirc2d.}
proc reversed*(this: GpCirc2d): GpCirc2d {.noSideEffect, importcpp: "Reversed",
                                       header: headerGpcirc2d.}
proc isDirect*(this: GpCirc2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDirect", header: headerGpcirc2d.}
proc mirror*(this: var GpCirc2d; p: GpPnt2d) {.importcpp: "Mirror",
    header: headerGpcirc2d.}
proc mirrored*(this: GpCirc2d; p: GpPnt2d): GpCirc2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpcirc2d.}
proc mirror*(this: var GpCirc2d; a: GpAx2d) {.importcpp: "Mirror",
                                        header: headerGpcirc2d.}
proc mirrored*(this: GpCirc2d; a: GpAx2d): GpCirc2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpcirc2d.}
proc rotate*(this: var GpCirc2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpcirc2d.}
proc rotated*(this: GpCirc2d; p: GpPnt2d; ang: StandardReal): GpCirc2d {.noSideEffect,
    importcpp: "Rotated", header: headerGpcirc2d.}
proc scale*(this: var GpCirc2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGpcirc2d.}
proc scaled*(this: GpCirc2d; p: GpPnt2d; s: StandardReal): GpCirc2d {.noSideEffect,
    importcpp: "Scaled", header: headerGpcirc2d.}
proc transform*(this: var GpCirc2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpcirc2d.}
proc transformed*(this: GpCirc2d; t: GpTrsf2d): GpCirc2d {.noSideEffect,
    importcpp: "Transformed", header: headerGpcirc2d.}
proc translate*(this: var GpCirc2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGpcirc2d.}
proc translated*(this: GpCirc2d; v: GpVec2d): GpCirc2d {.noSideEffect,
    importcpp: "Translated", header: headerGpcirc2d.}
proc translate*(this: var GpCirc2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGpcirc2d.}
proc translated*(this: GpCirc2d; p1: GpPnt2d; p2: GpPnt2d): GpCirc2d {.noSideEffect,
    importcpp: "Translated", header: headerGpcirc2d.}