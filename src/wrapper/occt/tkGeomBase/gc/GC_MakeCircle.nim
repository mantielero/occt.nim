# /usr/include/opencascade/GC_MakeCircle.hxx --> occt/tkGeomBase/gc/GC_MakeCircle.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakecircle = "/usr/include/opencascade/GC_MakeCircle.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  GC_MakeCircle* {.importcpp: "GC_MakeCircle", header: headerGcmakecircle, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeCircle; theSize: csize_t): pointer {.
    importcpp: "GC_MakeCircle::operator new", header: headerGcmakecircle.}
proc `delete`*(this: var GC_MakeCircle; theAddress: pointer) {.
    importcpp: "GC_MakeCircle::operator delete", header: headerGcmakecircle.}
proc `new[]`*(this: var GC_MakeCircle; theSize: csize_t): pointer {.
    importcpp: "GC_MakeCircle::operator new[]", header: headerGcmakecircle.}
proc `delete[]`*(this: var GC_MakeCircle; theAddress: pointer) {.
    importcpp: "GC_MakeCircle::operator delete[]", header: headerGcmakecircle.}
proc `new`*(this: var GC_MakeCircle; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeCircle::operator new", header: headerGcmakecircle.}
proc `delete`*(this: var GC_MakeCircle; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeCircle::operator delete", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(c: GpCirc): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(a2: GpAx2; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(circ: GpCirc; dist: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(circ: GpCirc; point: GpPnt): GC_MakeCircle {.constructor,
    importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(center: GpPnt; norm: GpDir; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(center: GpPnt; ptAxis: GpPnt; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc constructGC_MakeCircle*(axis: GpAx1; radius: StandardReal): GC_MakeCircle {.
    constructor, importcpp: "GC_MakeCircle(@)", header: headerGcmakecircle.}
proc value*(this: GC_MakeCircle): Handle[GeomCircle] {.noSideEffect,
    importcpp: "Value", header: headerGcmakecircle.}
converter `constopencascade`*(this: GC_MakeCircle): Handle[GeomCircle] {.
    noSideEffect, importcpp: "GC_MakeCircle::operator constopencascade",
    header: headerGcmakecircle.}