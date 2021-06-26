# /usr/include/opencascade/gp_Hypr2d.hxx --> occt/gp/gp_Hypr2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGphypr2d = "/usr/include/opencascade/gp_Hypr2d.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  GpHypr2d* {.importcpp: "gp_Hypr2d", header: headerGphypr2d, bycopy.} = object


proc `new`*(this: var GpHypr2d; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr2d::operator new", header: headerGphypr2d.}
proc `delete`*(this: var GpHypr2d; theAddress: pointer) {.
    importcpp: "gp_Hypr2d::operator delete", header: headerGphypr2d.}
proc `new[]`*(this: var GpHypr2d; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr2d::operator new[]", header: headerGphypr2d.}
proc `delete[]`*(this: var GpHypr2d; theAddress: pointer) {.
    importcpp: "gp_Hypr2d::operator delete[]", header: headerGphypr2d.}
proc `new`*(this: var GpHypr2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Hypr2d::operator new", header: headerGphypr2d.}
proc `delete`*(this: var GpHypr2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Hypr2d::operator delete", header: headerGphypr2d.}
proc constructGpHypr2d*(): GpHypr2d {.constructor, importcpp: "gp_Hypr2d(@)",
                                   header: headerGphypr2d.}
proc constructGpHypr2d*(majorAxis: GpAx2d; majorRadius: StandardReal;
                       minorRadius: StandardReal; sense: StandardBoolean = true): GpHypr2d {.
    constructor, importcpp: "gp_Hypr2d(@)", header: headerGphypr2d.}
proc constructGpHypr2d*(a: GpAx22d; majorRadius: StandardReal;
                       minorRadius: StandardReal): GpHypr2d {.constructor,
    importcpp: "gp_Hypr2d(@)", header: headerGphypr2d.}
proc setLocation*(this: var GpHypr2d; p: GpPnt2d) {.importcpp: "SetLocation",
    header: headerGphypr2d.}
proc setMajorRadius*(this: var GpHypr2d; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: headerGphypr2d.}
proc setMinorRadius*(this: var GpHypr2d; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: headerGphypr2d.}
proc setAxis*(this: var GpHypr2d; a: GpAx22d) {.importcpp: "SetAxis",
    header: headerGphypr2d.}
proc setXAxis*(this: var GpHypr2d; a: GpAx2d) {.importcpp: "SetXAxis",
    header: headerGphypr2d.}
proc setYAxis*(this: var GpHypr2d; a: GpAx2d) {.importcpp: "SetYAxis",
    header: headerGphypr2d.}
proc asymptote1*(this: GpHypr2d): GpAx2d {.noSideEffect, importcpp: "Asymptote1",
                                       header: headerGphypr2d.}
proc asymptote2*(this: GpHypr2d): GpAx2d {.noSideEffect, importcpp: "Asymptote2",
                                       header: headerGphypr2d.}
proc coefficients*(this: GpHypr2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: headerGphypr2d.}
proc conjugateBranch1*(this: GpHypr2d): GpHypr2d {.noSideEffect,
    importcpp: "ConjugateBranch1", header: headerGphypr2d.}
proc conjugateBranch2*(this: GpHypr2d): GpHypr2d {.noSideEffect,
    importcpp: "ConjugateBranch2", header: headerGphypr2d.}
proc directrix1*(this: GpHypr2d): GpAx2d {.noSideEffect, importcpp: "Directrix1",
                                       header: headerGphypr2d.}
proc directrix2*(this: GpHypr2d): GpAx2d {.noSideEffect, importcpp: "Directrix2",
                                       header: headerGphypr2d.}
proc eccentricity*(this: GpHypr2d): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: headerGphypr2d.}
proc focal*(this: GpHypr2d): StandardReal {.noSideEffect, importcpp: "Focal",
                                        header: headerGphypr2d.}
proc focus1*(this: GpHypr2d): GpPnt2d {.noSideEffect, importcpp: "Focus1",
                                    header: headerGphypr2d.}
proc focus2*(this: GpHypr2d): GpPnt2d {.noSideEffect, importcpp: "Focus2",
                                    header: headerGphypr2d.}
proc location*(this: GpHypr2d): GpPnt2d {.noSideEffect, importcpp: "Location",
                                      header: headerGphypr2d.}
proc majorRadius*(this: GpHypr2d): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: headerGphypr2d.}
proc minorRadius*(this: GpHypr2d): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: headerGphypr2d.}
proc otherBranch*(this: GpHypr2d): GpHypr2d {.noSideEffect, importcpp: "OtherBranch",
    header: headerGphypr2d.}
proc parameter*(this: GpHypr2d): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: headerGphypr2d.}
proc axis*(this: GpHypr2d): GpAx22d {.noSideEffect, importcpp: "Axis",
                                  header: headerGphypr2d.}
proc xAxis*(this: GpHypr2d): GpAx2d {.noSideEffect, importcpp: "XAxis",
                                  header: headerGphypr2d.}
proc yAxis*(this: GpHypr2d): GpAx2d {.noSideEffect, importcpp: "YAxis",
                                  header: headerGphypr2d.}
proc reverse*(this: var GpHypr2d) {.importcpp: "Reverse", header: headerGphypr2d.}
proc reversed*(this: GpHypr2d): GpHypr2d {.noSideEffect, importcpp: "Reversed",
                                       header: headerGphypr2d.}
proc isDirect*(this: GpHypr2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDirect", header: headerGphypr2d.}
proc mirror*(this: var GpHypr2d; p: GpPnt2d) {.importcpp: "Mirror",
    header: headerGphypr2d.}
proc mirrored*(this: GpHypr2d; p: GpPnt2d): GpHypr2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGphypr2d.}
proc mirror*(this: var GpHypr2d; a: GpAx2d) {.importcpp: "Mirror",
                                        header: headerGphypr2d.}
proc mirrored*(this: GpHypr2d; a: GpAx2d): GpHypr2d {.noSideEffect,
    importcpp: "Mirrored", header: headerGphypr2d.}
proc rotate*(this: var GpHypr2d; p: GpPnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGphypr2d.}
proc rotated*(this: GpHypr2d; p: GpPnt2d; ang: StandardReal): GpHypr2d {.noSideEffect,
    importcpp: "Rotated", header: headerGphypr2d.}
proc scale*(this: var GpHypr2d; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: headerGphypr2d.}
proc scaled*(this: GpHypr2d; p: GpPnt2d; s: StandardReal): GpHypr2d {.noSideEffect,
    importcpp: "Scaled", header: headerGphypr2d.}
proc transform*(this: var GpHypr2d; t: GpTrsf2d) {.importcpp: "Transform",
    header: headerGphypr2d.}
proc transformed*(this: GpHypr2d; t: GpTrsf2d): GpHypr2d {.noSideEffect,
    importcpp: "Transformed", header: headerGphypr2d.}
proc translate*(this: var GpHypr2d; v: GpVec2d) {.importcpp: "Translate",
    header: headerGphypr2d.}
proc translated*(this: GpHypr2d; v: GpVec2d): GpHypr2d {.noSideEffect,
    importcpp: "Translated", header: headerGphypr2d.}
proc translate*(this: var GpHypr2d; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Translate",
    header: headerGphypr2d.}
proc translated*(this: GpHypr2d; p1: GpPnt2d; p2: GpPnt2d): GpHypr2d {.noSideEffect,
    importcpp: "Translated", header: headerGphypr2d.}