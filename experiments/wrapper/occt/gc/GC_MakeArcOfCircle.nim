# /usr/include/opencascade/GC_MakeArcOfCircle.hxx --> occt/gc/GC_MakeArcOfCircle.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakearcofcircle = "/usr/include/opencascade/GC_MakeArcOfCircle.hxx"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GC_MakeArcOfCircle* {.importcpp: "GC_MakeArcOfCircle",
                       header: headerGcmakearcofcircle, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeArcOfCircle; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfCircle::operator new", header: headerGcmakearcofcircle.}
proc `delete`*(this: var GC_MakeArcOfCircle; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfCircle::operator delete",
    header: headerGcmakearcofcircle.}
proc `new[]`*(this: var GC_MakeArcOfCircle; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfCircle::operator new[]",
    header: headerGcmakearcofcircle.}
proc `delete[]`*(this: var GC_MakeArcOfCircle; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfCircle::operator delete[]",
    header: headerGcmakearcofcircle.}
proc `new`*(this: var GC_MakeArcOfCircle; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeArcOfCircle::operator new", header: headerGcmakearcofcircle.}
proc `delete`*(this: var GC_MakeArcOfCircle; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeArcOfCircle::operator delete",
    header: headerGcmakearcofcircle.}
proc constructGC_MakeArcOfCircle*(circ: GpCirc; alpha1: StandardReal;
                                 alpha2: StandardReal; sense: StandardBoolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: headerGcmakearcofcircle.}
proc constructGC_MakeArcOfCircle*(circ: GpCirc; p: GpPnt; alpha: StandardReal;
                                 sense: StandardBoolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: headerGcmakearcofcircle.}
proc constructGC_MakeArcOfCircle*(circ: GpCirc; p1: GpPnt; p2: GpPnt;
                                 sense: StandardBoolean): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: headerGcmakearcofcircle.}
proc constructGC_MakeArcOfCircle*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: headerGcmakearcofcircle.}
proc constructGC_MakeArcOfCircle*(p1: GpPnt; v: GpVec; p2: GpPnt): GC_MakeArcOfCircle {.
    constructor, importcpp: "GC_MakeArcOfCircle(@)",
    header: headerGcmakearcofcircle.}
proc value*(this: GC_MakeArcOfCircle): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: headerGcmakearcofcircle.}
converter `constopencascade`*(this: GC_MakeArcOfCircle): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfCircle::operator constopencascade",
    header: headerGcmakearcofcircle.}