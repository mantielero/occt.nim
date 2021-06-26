# /usr/include/opencascade/GC_MakeSegment.hxx --> occt/tkGeomBase/gc/GC_MakeSegment.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakesegment = "/usr/include/opencascade/GC_MakeSegment.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
type
  GC_MakeSegment* {.importcpp: "GC_MakeSegment", header: headerGcmakesegment, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeSegment; theSize: csize_t): pointer {.
    importcpp: "GC_MakeSegment::operator new", header: headerGcmakesegment.}
proc `delete`*(this: var GC_MakeSegment; theAddress: pointer) {.
    importcpp: "GC_MakeSegment::operator delete", header: headerGcmakesegment.}
proc `new[]`*(this: var GC_MakeSegment; theSize: csize_t): pointer {.
    importcpp: "GC_MakeSegment::operator new[]", header: headerGcmakesegment.}
proc `delete[]`*(this: var GC_MakeSegment; theAddress: pointer) {.
    importcpp: "GC_MakeSegment::operator delete[]", header: headerGcmakesegment.}
proc `new`*(this: var GC_MakeSegment; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeSegment::operator new", header: headerGcmakesegment.}
proc `delete`*(this: var GC_MakeSegment; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeSegment::operator delete", header: headerGcmakesegment.}
proc constructGC_MakeSegment*(p1: GpPnt; p2: GpPnt): GC_MakeSegment {.constructor,
    importcpp: "GC_MakeSegment(@)", header: headerGcmakesegment.}
proc constructGC_MakeSegment*(line: GpLin; u1: StandardReal; u2: StandardReal): GC_MakeSegment {.
    constructor, importcpp: "GC_MakeSegment(@)", header: headerGcmakesegment.}
proc constructGC_MakeSegment*(line: GpLin; point: GpPnt; ulast: StandardReal): GC_MakeSegment {.
    constructor, importcpp: "GC_MakeSegment(@)", header: headerGcmakesegment.}
proc constructGC_MakeSegment*(line: GpLin; p1: GpPnt; p2: GpPnt): GC_MakeSegment {.
    constructor, importcpp: "GC_MakeSegment(@)", header: headerGcmakesegment.}
proc value*(this: GC_MakeSegment): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: headerGcmakesegment.}
converter `constopencascade`*(this: GC_MakeSegment): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeSegment::operator constopencascade",
    header: headerGcmakesegment.}