# /usr/include/opencascade/GC_MakeTrimmedCone.hxx --> occt/gc/GC_MakeTrimmedCone.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmaketrimmedcone = "/usr/include/opencascade/GC_MakeTrimmedCone.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
type
  GC_MakeTrimmedCone* {.importcpp: "GC_MakeTrimmedCone",
                       header: headerGcmaketrimmedcone, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeTrimmedCone; theSize: csize_t): pointer {.
    importcpp: "GC_MakeTrimmedCone::operator new", header: headerGcmaketrimmedcone.}
proc `delete`*(this: var GC_MakeTrimmedCone; theAddress: pointer) {.
    importcpp: "GC_MakeTrimmedCone::operator delete",
    header: headerGcmaketrimmedcone.}
proc `new[]`*(this: var GC_MakeTrimmedCone; theSize: csize_t): pointer {.
    importcpp: "GC_MakeTrimmedCone::operator new[]",
    header: headerGcmaketrimmedcone.}
proc `delete[]`*(this: var GC_MakeTrimmedCone; theAddress: pointer) {.
    importcpp: "GC_MakeTrimmedCone::operator delete[]",
    header: headerGcmaketrimmedcone.}
proc `new`*(this: var GC_MakeTrimmedCone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeTrimmedCone::operator new", header: headerGcmaketrimmedcone.}
proc `delete`*(this: var GC_MakeTrimmedCone; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeTrimmedCone::operator delete",
    header: headerGcmaketrimmedcone.}
proc constructGC_MakeTrimmedCone*(p1: GpPnt; p2: GpPnt; p3: GpPnt; p4: GpPnt): GC_MakeTrimmedCone {.
    constructor, importcpp: "GC_MakeTrimmedCone(@)",
    header: headerGcmaketrimmedcone.}
proc constructGC_MakeTrimmedCone*(p1: GpPnt; p2: GpPnt; r1: StandardReal;
                                 r2: StandardReal): GC_MakeTrimmedCone {.
    constructor, importcpp: "GC_MakeTrimmedCone(@)",
    header: headerGcmaketrimmedcone.}
proc value*(this: GC_MakeTrimmedCone): Handle[GeomRectangularTrimmedSurface] {.
    noSideEffect, importcpp: "Value", header: headerGcmaketrimmedcone.}
converter `constopencascade`*(this: GC_MakeTrimmedCone): Handle[
    GeomRectangularTrimmedSurface] {.noSideEffect, importcpp: "GC_MakeTrimmedCone::operator constopencascade",
                                    header: headerGcmaketrimmedcone.}