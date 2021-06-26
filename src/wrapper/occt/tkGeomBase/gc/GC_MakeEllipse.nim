# /usr/include/opencascade/GC_MakeEllipse.hxx --> occt/tkGeomBase/gc/GC_MakeEllipse.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakeellipse = "/usr/include/opencascade/GC_MakeEllipse.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
type
  GC_MakeEllipse* {.importcpp: "GC_MakeEllipse", header: headerGcmakeellipse, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeEllipse; theSize: csize_t): pointer {.
    importcpp: "GC_MakeEllipse::operator new", header: headerGcmakeellipse.}
proc `delete`*(this: var GC_MakeEllipse; theAddress: pointer) {.
    importcpp: "GC_MakeEllipse::operator delete", header: headerGcmakeellipse.}
proc `new[]`*(this: var GC_MakeEllipse; theSize: csize_t): pointer {.
    importcpp: "GC_MakeEllipse::operator new[]", header: headerGcmakeellipse.}
proc `delete[]`*(this: var GC_MakeEllipse; theAddress: pointer) {.
    importcpp: "GC_MakeEllipse::operator delete[]", header: headerGcmakeellipse.}
proc `new`*(this: var GC_MakeEllipse; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeEllipse::operator new", header: headerGcmakeellipse.}
proc `delete`*(this: var GC_MakeEllipse; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeEllipse::operator delete", header: headerGcmakeellipse.}
proc constructGC_MakeEllipse*(e: GpElips): GC_MakeEllipse {.constructor,
    importcpp: "GC_MakeEllipse(@)", header: headerGcmakeellipse.}
proc constructGC_MakeEllipse*(a2: GpAx2; majorRadius: StandardReal;
                             minorRadius: StandardReal): GC_MakeEllipse {.
    constructor, importcpp: "GC_MakeEllipse(@)", header: headerGcmakeellipse.}
proc constructGC_MakeEllipse*(s1: GpPnt; s2: GpPnt; center: GpPnt): GC_MakeEllipse {.
    constructor, importcpp: "GC_MakeEllipse(@)", header: headerGcmakeellipse.}
proc value*(this: GC_MakeEllipse): Handle[GeomEllipse] {.noSideEffect,
    importcpp: "Value", header: headerGcmakeellipse.}
converter `constopencascade`*(this: GC_MakeEllipse): Handle[GeomEllipse] {.
    noSideEffect, importcpp: "GC_MakeEllipse::operator constopencascade",
    header: headerGcmakeellipse.}