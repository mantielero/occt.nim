# /usr/include/opencascade/GC_MakePlane.hxx --> occt/tkGeomBase/gc/GC_MakePlane.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakeplane = "/usr/include/opencascade/GC_MakePlane.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  GC_MakePlane* {.importcpp: "GC_MakePlane", header: headerGcmakeplane, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakePlane; theSize: csize_t): pointer {.
    importcpp: "GC_MakePlane::operator new", header: headerGcmakeplane.}
proc `delete`*(this: var GC_MakePlane; theAddress: pointer) {.
    importcpp: "GC_MakePlane::operator delete", header: headerGcmakeplane.}
proc `new[]`*(this: var GC_MakePlane; theSize: csize_t): pointer {.
    importcpp: "GC_MakePlane::operator new[]", header: headerGcmakeplane.}
proc `delete[]`*(this: var GC_MakePlane; theAddress: pointer) {.
    importcpp: "GC_MakePlane::operator delete[]", header: headerGcmakeplane.}
proc `new`*(this: var GC_MakePlane; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakePlane::operator new", header: headerGcmakeplane.}
proc `delete`*(this: var GC_MakePlane; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakePlane::operator delete", header: headerGcmakeplane.}
proc constructGC_MakePlane*(pl: GpPln): GC_MakePlane {.constructor,
    importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc constructGC_MakePlane*(p: GpPnt; v: GpDir): GC_MakePlane {.constructor,
    importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc constructGC_MakePlane*(a: StandardReal; b: StandardReal; c: StandardReal;
                           d: StandardReal): GC_MakePlane {.constructor,
    importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc constructGC_MakePlane*(pln: GpPln; point: GpPnt): GC_MakePlane {.constructor,
    importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc constructGC_MakePlane*(pln: GpPln; dist: StandardReal): GC_MakePlane {.
    constructor, importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc constructGC_MakePlane*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakePlane {.
    constructor, importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc constructGC_MakePlane*(axis: GpAx1): GC_MakePlane {.constructor,
    importcpp: "GC_MakePlane(@)", header: headerGcmakeplane.}
proc value*(this: GC_MakePlane): Handle[GeomPlane] {.noSideEffect,
    importcpp: "Value", header: headerGcmakeplane.}
converter `constopencascade`*(this: GC_MakePlane): Handle[GeomPlane] {.noSideEffect,
    importcpp: "GC_MakePlane::operator constopencascade",
    header: headerGcmakeplane.}