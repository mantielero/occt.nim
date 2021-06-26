# /usr/include/opencascade/GC_MakeArcOfEllipse.hxx --> occt/tkGeomBase/gc/GC_MakeArcOfEllipse.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakearcofellipse = "/usr/include/opencascade/GC_MakeArcOfEllipse.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Pnt"
type
  GC_MakeArcOfEllipse* {.importcpp: "GC_MakeArcOfEllipse",
                        header: headerGcmakearcofellipse, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeArcOfEllipse; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfEllipse::operator new",
    header: headerGcmakearcofellipse.}
proc `delete`*(this: var GC_MakeArcOfEllipse; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfEllipse::operator delete",
    header: headerGcmakearcofellipse.}
proc `new[]`*(this: var GC_MakeArcOfEllipse; theSize: csize_t): pointer {.
    importcpp: "GC_MakeArcOfEllipse::operator new[]",
    header: headerGcmakearcofellipse.}
proc `delete[]`*(this: var GC_MakeArcOfEllipse; theAddress: pointer) {.
    importcpp: "GC_MakeArcOfEllipse::operator delete[]",
    header: headerGcmakearcofellipse.}
proc `new`*(this: var GC_MakeArcOfEllipse; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeArcOfEllipse::operator new",
    header: headerGcmakearcofellipse.}
proc `delete`*(this: var GC_MakeArcOfEllipse; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeArcOfEllipse::operator delete",
    header: headerGcmakearcofellipse.}
proc constructGC_MakeArcOfEllipse*(elips: GpElips; alpha1: StandardReal;
                                  alpha2: StandardReal; sense: StandardBoolean): GC_MakeArcOfEllipse {.
    constructor, importcpp: "GC_MakeArcOfEllipse(@)",
    header: headerGcmakearcofellipse.}
proc constructGC_MakeArcOfEllipse*(elips: GpElips; p: GpPnt; alpha: StandardReal;
                                  sense: StandardBoolean): GC_MakeArcOfEllipse {.
    constructor, importcpp: "GC_MakeArcOfEllipse(@)",
    header: headerGcmakearcofellipse.}
proc constructGC_MakeArcOfEllipse*(elips: GpElips; p1: GpPnt; p2: GpPnt;
                                  sense: StandardBoolean): GC_MakeArcOfEllipse {.
    constructor, importcpp: "GC_MakeArcOfEllipse(@)",
    header: headerGcmakearcofellipse.}
proc value*(this: GC_MakeArcOfEllipse): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: headerGcmakearcofellipse.}
converter `constopencascade`*(this: GC_MakeArcOfEllipse): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfEllipse::operator constopencascade",
    header: headerGcmakearcofellipse.}