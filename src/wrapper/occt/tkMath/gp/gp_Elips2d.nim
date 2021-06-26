# /usr/include/opencascade/gp_Elips2d.hxx --> occt/tkMath/gp/gp_Elips2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpelips2d = "/usr/include/opencascade/gp_Elips2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpElips2d* {.importcpp: "gp_Elips2d", header: headerGpelips2d, bycopy.} = object


proc `new`*(this: var GpElips2d; theSize: csize_t): pointer {.
    importcpp: "gp_Elips2d::operator new", header: headerGpelips2d.}
proc `delete`*(this: var GpElips2d; theAddress: pointer) {.
    importcpp: "gp_Elips2d::operator delete", header: headerGpelips2d.}
proc `new[]`*(this: var GpElips2d; theSize: csize_t): pointer {.
    importcpp: "gp_Elips2d::operator new[]", header: headerGpelips2d.}
proc `delete[]`*(this: var GpElips2d; theAddress: pointer) {.
    importcpp: "gp_Elips2d::operator delete[]", header: headerGpelips2d.}
proc `new`*(this: var GpElips2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Elips2d::operator new", header: headerGpelips2d.}
proc `delete`*(this: var GpElips2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Elips2d::operator delete", header: headerGpelips2d.}
proc constructGpElips2d*(): GpElips2d {.constructor, importcpp: "gp_Elips2d(@)",
                                     header: headerGpelips2d.}
proc constructGpElips2d*(majorAxis: GpAx2d; majorRadius: StandardReal;
                        minorRadius: StandardReal; sense: StandardBoolean = true): GpElips2d {.
    constructor, importcpp: "gp_Elips2d(@)", header: headerGpelips2d.}
proc constructGpElips2d*(a: GpAx22d; majorRadius: StandardReal;
                        minorRadius: StandardReal): GpElips2d {.constructor,
    importcpp: "gp_Elips2d(@)", header: headerGpelips2d.}
proc setLocation*(this: var GpElips2d; p: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGpelips2d.}
proc setMajorRadius*(this: var GpElips2d; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: headerGpelips2d.}
proc setMinorRadius*(this: var GpElips2d; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: headerGpelips2d.}
proc setAxis*(this: var GpElips2d; a: GpAx22d) {.importcpp: "SetAxis",
    header: headerGpelips2d.}
proc setXAxis*(this: var GpElips2d; a: GpAx2d) {.importcpp: "SetXAxis",
    header: headerGpelips2d.}
proc setYAxis*(this: var GpElips2d; a: GpAx2d) {.importcpp: "SetYAxis",
    header: headerGpelips2d.}
proc area*(this: GpElips2d): StandardReal {.noSideEffect, importcpp: "Area",
                                        header: headerGpelips2d.}
proc coefficients*(this: GpElips2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: headerGpelips2d.}
proc directrix1*(this: GpElips2d): GpAx2d {.noSideEffect, importcpp: "Directrix1",
                                        header: headerGpelips2d.}
proc directrix2*(this: GpElips2d): GpAx2d {.noSideEffect, importcpp: "Directrix2",
                                        header: headerGpelips2d.}
proc eccentricity*(this: GpElips2d): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: headerGpelips2d.}
proc focal*(this: GpElips2d): StandardReal {.noSideEffect, importcpp: "Focal",
    header: headerGpelips2d.}
proc focus1*(this: GpElips2d): GpPnt2d {.noSideEffect, importcpp: "Focus1",
                                     header: headerGpelips2d.}
proc focus2*(this: GpElips2d): GpPnt2d {.noSideEffect, importcpp: "Focus2",
                                     header: headerGpelips2d.}
proc location*(this: GpElips2d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                       header: headerGpelips2d.}
proc majorRadius*(this: GpElips2d): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: headerGpelips2d.}
proc minorRadius*(this: GpElips2d): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: headerGpelips2d.}
proc parameter*(this: GpElips2d): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: headerGpelips2d.}
proc axis*(this: GpElips2d): GpAx22d {.noSideEffect, importcpp: "Axis",
                                   header: headerGpelips2d.}
proc xAxis*(this: GpElips2d): GpAx2d {.noSideEffect, importcpp: "XAxis",
                                   header: headerGpelips2d.}
proc yAxis*(this: GpElips2d): GpAx2d {.noSideEffect, importcpp: "YAxis",
                                   header: headerGpelips2d.}
proc reverse*(this: var GpElips2d) {.importcpp: "Reverse", header: headerGpelips2d.}
proc reversed*(this: GpElips2d): GpElips2d {.noSideEffect, importcpp: "Reversed",
    header: headerGpelips2d.}
proc isDirect*(this: GpElips2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDirect", header: headerGpelips2d.}
proc mirror*(this: var GpElips2d; p: GpPnt2d) {.importcpp: "Mirror",
    header: headerGpelips2d.}
proc mirrored*(this: GpElips2d; p: GpPnt2d): GpElips2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpelips2d.}
proc mirror*(this: var GpElips2d; a: GpAx2d) {.importcpp: "Mirror",
    header: headerGpelips2d.}
proc mirrored*(this: GpElips2d; a: GpAx2d): GpElips2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGpelips2d.}
proc rotate*(this: var GpElips2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpelips2d.}
proc rotated*(this: GpElips2d; p: GpPnt2d; ang: StandardReal): GpElips2d {.noSideEffect,
    importcpp: "Rotated", header: headerGpelips2d.}
proc scale*(this: var GpElips2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGpelips2d.}
proc scaled*(this: GpElips2d; p: GpPnt2d; s: StandardReal): GpElips2d {.noSideEffect,
    importcpp: "Scaled", header: headerGpelips2d.}
proc transform*(this: var GpElips2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGpelips2d.}
proc transformed*(this: GpElips2d; t: GpTrsf2d): GpElips2d {.noSideEffect,
    importcpp: "Transformed", header: headerGpelips2d.}
proc translate*(this: var GpElips2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGpelips2d.}
proc translated*(this: GpElips2d; v: GpVec2d): GpElips2d {.noSideEffect,
    importcpp: "Translated", header: headerGpelips2d.}
proc translate*(this: var GpElips2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGpelips2d.}
proc translated*(this: GpElips2d; p1: GpPnt2d; p2: GpPnt2d): GpElips2d {.noSideEffect,
    importcpp: "Translated", header: headerGpelips2d.}