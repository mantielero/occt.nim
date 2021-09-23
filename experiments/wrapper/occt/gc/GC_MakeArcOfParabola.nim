# /usr/include/opencascade/GC_MakeArcOfParabola.hxx --> occt/gc/GC_MakeArcOfParabola.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakearcofparabola = "/usr/include/opencascade/GC_MakeArcOfParabola.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Pnt"
type
  GC_MakeArcOfParabola* {.importcpp: "GC_MakeArcOfParabola",
                         header: headerGcmakearcofparabola, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeArcOfParabola; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfParabola::operator new",
    header: headerGcmakearcofparabola.}
proc `delete`*(this: var GC_MakeArcOfParabola; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfParabola::operator delete",
    header: headerGcmakearcofparabola.}
proc `new[]`*(this: var GC_MakeArcOfParabola; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfParabola::operator new[]",
    header: headerGcmakearcofparabola.}
proc `delete[]`*(this: var GC_MakeArcOfParabola; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfParabola::operator delete[]",
    header: headerGcmakearcofparabola.}
proc `new`*(this: var GC_MakeArcOfParabola; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeArcOfParabola::operator new",
    header: headerGcmakearcofparabola.}
proc `delete`*(this: var GC_MakeArcOfParabola; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeArcOfParabola::operator delete",
    header: headerGcmakearcofparabola.}
proc constructGC_MakeArcOfParabola*(parab: GpParab; alpha1: StandardReal;
                                   alpha2: StandardReal; sense: StandardBoolean): GC_MakeArcOfParabola {.
    constructor, importcpp: "GC_MakeArcOfParabola(@)",
    header: headerGcmakearcofparabola.}
proc constructGC_MakeArcOfParabola*(parab: GpParab; p: GpPnt; alpha: StandardReal;
                                   sense: StandardBoolean): GC_MakeArcOfParabola {.
    constructor, importcpp: "GC_MakeArcOfParabola(@)",
    header: headerGcmakearcofparabola.}
proc constructGC_MakeArcOfParabola*(parab: GpParab; p1: GpPnt; p2: GpPnt;
                                   sense: StandardBoolean): GC_MakeArcOfParabola {.
    constructor, importcpp: "GC_MakeArcOfParabola(@)",
    header: headerGcmakearcofparabola.}
proc value*(this: GC_MakeArcOfParabola): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: headerGcmakearcofparabola.}
converter `constopencascade`*(this: GC_MakeArcOfParabola): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfParabola::operator constopencascade",
    header: headerGcmakearcofparabola.}