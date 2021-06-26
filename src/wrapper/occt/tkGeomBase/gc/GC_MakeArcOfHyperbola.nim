# /usr/include/opencascade/GC_MakeArcOfHyperbola.hxx --> occt/tkGeomBase/gc/GC_MakeArcOfHyperbola.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakearcofhyperbola = "/usr/include/opencascade/GC_MakeArcOfHyperbola.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Pnt"
type
  GC_MakeArcOfHyperbola* {.importcpp: "GC_MakeArcOfHyperbola",
                          header: headerGcmakearcofhyperbola, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeArcOfHyperbola; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfHyperbola::operator new",
    header: headerGcmakearcofhyperbola.}
proc `delete`*(this: var GC_MakeArcOfHyperbola; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfHyperbola::operator delete",
    header: headerGcmakearcofhyperbola.}
proc `new[]`*(this: var GC_MakeArcOfHyperbola; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfHyperbola::operator new[]",
    header: headerGcmakearcofhyperbola.}
proc `delete[]`*(this: var GC_MakeArcOfHyperbola; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfHyperbola::operator delete[]",
    header: headerGcmakearcofhyperbola.}
proc `new`*(this: var GC_MakeArcOfHyperbola; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeArcOfHyperbola::operator new",
    header: headerGcmakearcofhyperbola.}
proc `delete`*(this: var GC_MakeArcOfHyperbola; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeArcOfHyperbola::operator delete",
    header: headerGcmakearcofhyperbola.}
proc constructGC_MakeArcOfHyperbola*(hypr: GpHypr; alpha1: StandardReal;
                                    alpha2: StandardReal; sense: StandardBoolean): GC_MakeArcOfHyperbola {.
    constructor, importcpp: "GC_MakeArcOfHyperbola(@)",
    header: headerGcmakearcofhyperbola.}
proc constructGC_MakeArcOfHyperbola*(hypr: GpHypr; p: GpPnt; alpha: StandardReal;
                                    sense: StandardBoolean): GC_MakeArcOfHyperbola {.
    constructor, importcpp: "GC_MakeArcOfHyperbola(@)",
    header: headerGcmakearcofhyperbola.}
proc constructGC_MakeArcOfHyperbola*(hypr: GpHypr; p1: GpPnt; p2: GpPnt;
                                    sense: StandardBoolean): GC_MakeArcOfHyperbola {.
    constructor, importcpp: "GC_MakeArcOfHyperbola(@)",
    header: headerGcmakearcofhyperbola.}
proc value*(this: GC_MakeArcOfHyperbola): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: headerGcmakearcofhyperbola.}
converter `constopencascade`*(this: GC_MakeArcOfHyperbola): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfHyperbola::operator constopencascade",
    header: headerGcmakearcofhyperbola.}