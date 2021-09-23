# /usr/include/opencascade/GC_MakeLine.hxx --> occt/gc/GC_MakeLine.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakeline = "/usr/include/opencascade/GC_MakeLine.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  GC_MakeLine* {.importcpp: "GC_MakeLine", header: headerGcmakeline, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeLine; theSize: csize_t): pointer {.
    importcpp: "GC_MakeLine::operator new", header: headerGcmakeline.}
proc `delete`*(this: var GC_MakeLine; theAddress: pointer) {.
    importcpp: "GC_MakeLine::operator delete", header: headerGcmakeline.}
proc `new[]`*(this: var GC_MakeLine; theSize: csize_t): pointer {.
    importcpp: "GC_MakeLine::operator new[]", header: headerGcmakeline.}
proc `delete[]`*(this: var GC_MakeLine; theAddress: pointer) {.
    importcpp: "GC_MakeLine::operator delete[]", header: headerGcmakeline.}
proc `new`*(this: var GC_MakeLine; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeLine::operator new", header: headerGcmakeline.}
proc `delete`*(this: var GC_MakeLine; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeLine::operator delete", header: headerGcmakeline.}
proc constructGC_MakeLine*(a1: GpAx1): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: headerGcmakeline.}
proc constructGC_MakeLine*(L: GpLin): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: headerGcmakeline.}
proc constructGC_MakeLine*(p: GpPnt; v: GpDir): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: headerGcmakeline.}
proc constructGC_MakeLine*(lin: GpLin; point: GpPnt): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: headerGcmakeline.}
proc constructGC_MakeLine*(p1: GpPnt; p2: GpPnt): GC_MakeLine {.constructor,
    importcpp: "GC_MakeLine(@)", header: headerGcmakeline.}
proc value*(this: GC_MakeLine): Handle[GeomLine] {.noSideEffect, importcpp: "Value",
    header: headerGcmakeline.}
converter `constopencascade`*(this: GC_MakeLine): Handle[GeomLine] {.noSideEffect,
    importcpp: "GC_MakeLine::operator constopencascade", header: headerGcmakeline.}