# /usr/include/opencascade/GC_MakeScale.hxx --> occt/gc/GC_MakeScale.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakescale = "/usr/include/opencascade/GC_MakeScale.hxx"
discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Pnt"
type
  GC_MakeScale* {.importcpp: "GC_MakeScale", header: headerGcmakescale, bycopy.} = object


proc `new`*(this: var GC_MakeScale; theSize: csize_t): pointer {.
    importcpp: "GC_MakeScale::operator new", header: headerGcmakescale.}
proc `delete`*(this: var GC_MakeScale; theAddress: pointer) {.
    importcpp: "GC_MakeScale::operator delete", header: headerGcmakescale.}
proc `new[]`*(this: var GC_MakeScale; theSize: csize_t): pointer {.
    importcpp: "GC_MakeScale::operator new[]", header: headerGcmakescale.}
proc `delete[]`*(this: var GC_MakeScale; theAddress: pointer) {.
    importcpp: "GC_MakeScale::operator delete[]", header: headerGcmakescale.}
proc `new`*(this: var GC_MakeScale; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeScale::operator new", header: headerGcmakescale.}
proc `delete`*(this: var GC_MakeScale; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeScale::operator delete", header: headerGcmakescale.}
proc constructGC_MakeScale*(point: GpPnt; scale: StandardReal): GC_MakeScale {.
    constructor, importcpp: "GC_MakeScale(@)", header: headerGcmakescale.}
proc value*(this: GC_MakeScale): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Value", header: headerGcmakescale.}
converter `constopencascade`*(this: GC_MakeScale): Handle[GeomTransformation] {.
    noSideEffect, importcpp: "GC_MakeScale::operator constopencascade",
    header: headerGcmakescale.}