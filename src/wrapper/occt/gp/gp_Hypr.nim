# /usr/include/opencascade/gp_Hypr.hxx --> occt/gp/gp_Hypr.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGphypr = "/usr/include/opencascade/gp_Hypr.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpHypr* {.importcpp: "gp_Hypr", header: headerGphypr, bycopy.} = object


proc `new`*(this: var GpHypr; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr::operator new", header: headerGphypr.}
proc `delete`*(this: var GpHypr; theAddress: pointer) {.
    importcpp: "gp_Hypr::operator delete", header: headerGphypr.}
proc `new[]`*(this: var GpHypr; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr::operator new[]", header: headerGphypr.}
proc `delete[]`*(this: var GpHypr; theAddress: pointer) {.
    importcpp: "gp_Hypr::operator delete[]", header: headerGphypr.}
proc `new`*(this: var GpHypr; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Hypr::operator new", header: headerGphypr.}
proc `delete`*(this: var GpHypr; a2: pointer; a3: pointer) {.
    importcpp: "gp_Hypr::operator delete", header: headerGphypr.}
proc constructGpHypr*(): GpHypr {.constructor, importcpp: "gp_Hypr(@)",
                               header: headerGphypr.}
proc constructGpHypr*(a2: GpAx2; majorRadius: StandardReal; minorRadius: StandardReal): GpHypr {.
    constructor, importcpp: "gp_Hypr(@)", header: headerGphypr.}
proc setAxis*(this: var GpHypr; a1: GpAx1) {.importcpp: "SetAxis", header: headerGphypr.}
proc setLocation*(this: var GpHypr; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGphypr.}
proc setMajorRadius*(this: var GpHypr; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: headerGphypr.}
proc setMinorRadius*(this: var GpHypr; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: headerGphypr.}
proc setPosition*(this: var GpHypr; a2: GpAx2) {.importcpp: "SetPosition",
    header: headerGphypr.}
proc asymptote1*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "Asymptote1",
                                    header: headerGphypr.}
proc asymptote2*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "Asymptote2",
                                    header: headerGphypr.}
proc axis*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "Axis", header: headerGphypr.}
proc conjugateBranch1*(this: GpHypr): GpHypr {.noSideEffect,
    importcpp: "ConjugateBranch1", header: headerGphypr.}
proc conjugateBranch2*(this: GpHypr): GpHypr {.noSideEffect,
    importcpp: "ConjugateBranch2", header: headerGphypr.}
proc directrix1*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "Directrix1",
                                    header: headerGphypr.}
proc directrix2*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "Directrix2",
                                    header: headerGphypr.}
proc eccentricity*(this: GpHypr): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: headerGphypr.}
proc focal*(this: GpHypr): StandardReal {.noSideEffect, importcpp: "Focal",
                                      header: headerGphypr.}
proc focus1*(this: GpHypr): GpPnt {.noSideEffect, importcpp: "Focus1",
                                header: headerGphypr.}
proc focus2*(this: GpHypr): GpPnt {.noSideEffect, importcpp: "Focus2",
                                header: headerGphypr.}
proc location*(this: GpHypr): GpPnt {.noSideEffect, importcpp: "Location",
                                  header: headerGphypr.}
proc majorRadius*(this: GpHypr): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: headerGphypr.}
proc minorRadius*(this: GpHypr): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: headerGphypr.}
proc otherBranch*(this: GpHypr): GpHypr {.noSideEffect, importcpp: "OtherBranch",
                                      header: headerGphypr.}
proc parameter*(this: GpHypr): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: headerGphypr.}
proc position*(this: GpHypr): GpAx2 {.noSideEffect, importcpp: "Position",
                                  header: headerGphypr.}
proc xAxis*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "XAxis",
                               header: headerGphypr.}
proc yAxis*(this: GpHypr): GpAx1 {.noSideEffect, importcpp: "YAxis",
                               header: headerGphypr.}
proc mirror*(this: var GpHypr; p: GpPnt) {.importcpp: "Mirror", header: headerGphypr.}
proc mirrored*(this: GpHypr; p: GpPnt): GpHypr {.noSideEffect, importcpp: "Mirrored",
    header: headerGphypr.}
proc mirror*(this: var GpHypr; a1: GpAx1) {.importcpp: "Mirror", header: headerGphypr.}
proc mirrored*(this: GpHypr; a1: GpAx1): GpHypr {.noSideEffect, importcpp: "Mirrored",
    header: headerGphypr.}
proc mirror*(this: var GpHypr; a2: GpAx2) {.importcpp: "Mirror", header: headerGphypr.}
proc mirrored*(this: GpHypr; a2: GpAx2): GpHypr {.noSideEffect, importcpp: "Mirrored",
    header: headerGphypr.}
proc rotate*(this: var GpHypr; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGphypr.}
proc rotated*(this: GpHypr; a1: GpAx1; ang: StandardReal): GpHypr {.noSideEffect,
    importcpp: "Rotated", header: headerGphypr.}
proc scale*(this: var GpHypr; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGphypr.}
proc scaled*(this: GpHypr; p: GpPnt; s: StandardReal): GpHypr {.noSideEffect,
    importcpp: "Scaled", header: headerGphypr.}
proc transform*(this: var GpHypr; t: GpTrsf) {.importcpp: "Transform",
    header: headerGphypr.}
proc transformed*(this: GpHypr; t: GpTrsf): GpHypr {.noSideEffect,
    importcpp: "Transformed", header: headerGphypr.}
proc translate*(this: var GpHypr; v: GpVec) {.importcpp: "Translate",
                                        header: headerGphypr.}
proc translated*(this: GpHypr; v: GpVec): GpHypr {.noSideEffect,
    importcpp: "Translated", header: headerGphypr.}
proc translate*(this: var GpHypr; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGphypr.}
proc translated*(this: GpHypr; p1: GpPnt; p2: GpPnt): GpHypr {.noSideEffect,
    importcpp: "Translated", header: headerGphypr.}