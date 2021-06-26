# /usr/include/opencascade/gp_Elips.hxx --> occt/tkMath/gp/gp_Elips.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpelips = "/usr/include/opencascade/gp_Elips.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  GpElips* {.importcpp: "gp_Elips", header: headerGpelips, bycopy.} = object


proc `new`*(this: var GpElips; theSize: csize_t): pointer {.
    importcpp: "gp_Elips::operator new", header: headerGpelips.}
proc `delete`*(this: var GpElips; theAddress: pointer) {.
    importcpp: "gp_Elips::operator delete", header: headerGpelips.}
proc `new[]`*(this: var GpElips; theSize: csize_t): pointer {.
    importcpp: "gp_Elips::operator new[]", header: headerGpelips.}
proc `delete[]`*(this: var GpElips; theAddress: pointer) {.
    importcpp: "gp_Elips::operator delete[]", header: headerGpelips.}
proc `new`*(this: var GpElips; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Elips::operator new", header: headerGpelips.}
proc `delete`*(this: var GpElips; a2: pointer; a3: pointer) {.
    importcpp: "gp_Elips::operator delete", header: headerGpelips.}
proc constructGpElips*(): GpElips {.constructor, importcpp: "gp_Elips(@)",
                                 header: headerGpelips.}
proc constructGpElips*(a2: GpAx2; majorRadius: StandardReal;
                      minorRadius: StandardReal): GpElips {.constructor,
    importcpp: "gp_Elips(@)", header: headerGpelips.}
proc setAxis*(this: var GpElips; a1: GpAx1) {.importcpp: "SetAxis",
                                        header: headerGpelips.}
proc setLocation*(this: var GpElips; p: GpPnt) {.importcpp: "SetLocation",
    header: headerGpelips.}
proc setMajorRadius*(this: var GpElips; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: headerGpelips.}
proc setMinorRadius*(this: var GpElips; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: headerGpelips.}
proc setPosition*(this: var GpElips; a2: GpAx2) {.importcpp: "SetPosition",
    header: headerGpelips.}
proc area*(this: GpElips): StandardReal {.noSideEffect, importcpp: "Area",
                                      header: headerGpelips.}
proc axis*(this: GpElips): GpAx1 {.noSideEffect, importcpp: "Axis",
                               header: headerGpelips.}
proc directrix1*(this: GpElips): GpAx1 {.noSideEffect, importcpp: "Directrix1",
                                     header: headerGpelips.}
proc directrix2*(this: GpElips): GpAx1 {.noSideEffect, importcpp: "Directrix2",
                                     header: headerGpelips.}
proc eccentricity*(this: GpElips): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: headerGpelips.}
proc focal*(this: GpElips): StandardReal {.noSideEffect, importcpp: "Focal",
                                       header: headerGpelips.}
proc focus1*(this: GpElips): GpPnt {.noSideEffect, importcpp: "Focus1",
                                 header: headerGpelips.}
proc focus2*(this: GpElips): GpPnt {.noSideEffect, importcpp: "Focus2",
                                 header: headerGpelips.}
proc location*(this: GpElips): GpPnt {.noSideEffect, importcpp: "Location",
                                   header: headerGpelips.}
proc majorRadius*(this: GpElips): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: headerGpelips.}
proc minorRadius*(this: GpElips): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: headerGpelips.}
proc parameter*(this: GpElips): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: headerGpelips.}
proc position*(this: GpElips): GpAx2 {.noSideEffect, importcpp: "Position",
                                   header: headerGpelips.}
proc xAxis*(this: GpElips): GpAx1 {.noSideEffect, importcpp: "XAxis",
                                header: headerGpelips.}
proc yAxis*(this: GpElips): GpAx1 {.noSideEffect, importcpp: "YAxis",
                                header: headerGpelips.}
proc mirror*(this: var GpElips; p: GpPnt) {.importcpp: "Mirror", header: headerGpelips.}
proc mirrored*(this: GpElips; p: GpPnt): GpElips {.noSideEffect, importcpp: "Mirrored",
    header: headerGpelips.}
proc mirror*(this: var GpElips; a1: GpAx1) {.importcpp: "Mirror", header: headerGpelips.}
proc mirrored*(this: GpElips; a1: GpAx1): GpElips {.noSideEffect,
    importcpp: "Mirrored", header: headerGpelips.}
proc mirror*(this: var GpElips; a2: GpAx2) {.importcpp: "Mirror", header: headerGpelips.}
proc mirrored*(this: GpElips; a2: GpAx2): GpElips {.noSideEffect,
    importcpp: "Mirrored", header: headerGpelips.}
proc rotate*(this: var GpElips; a1: GpAx1; ang: StandardReal) {.importcpp: "Rotate",
    header: headerGpelips.}
proc rotated*(this: GpElips; a1: GpAx1; ang: StandardReal): GpElips {.noSideEffect,
    importcpp: "Rotated", header: headerGpelips.}
proc scale*(this: var GpElips; p: GpPnt; s: StandardReal) {.importcpp: "Scale",
    header: headerGpelips.}
proc scaled*(this: GpElips; p: GpPnt; s: StandardReal): GpElips {.noSideEffect,
    importcpp: "Scaled", header: headerGpelips.}
proc transform*(this: var GpElips; t: GpTrsf) {.importcpp: "Transform",
    header: headerGpelips.}
proc transformed*(this: GpElips; t: GpTrsf): GpElips {.noSideEffect,
    importcpp: "Transformed", header: headerGpelips.}
proc translate*(this: var GpElips; v: GpVec) {.importcpp: "Translate",
    header: headerGpelips.}
proc translated*(this: GpElips; v: GpVec): GpElips {.noSideEffect,
    importcpp: "Translated", header: headerGpelips.}
proc translate*(this: var GpElips; p1: GpPnt; p2: GpPnt) {.importcpp: "Translate",
    header: headerGpelips.}
proc translated*(this: GpElips; p1: GpPnt; p2: GpPnt): GpElips {.noSideEffect,
    importcpp: "Translated", header: headerGpelips.}