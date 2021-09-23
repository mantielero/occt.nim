# /usr/include/opencascade/GC_MakeConicalSurface.hxx --> occt/gc/GC_MakeConicalSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakeconicalsurface = "/usr/include/opencascade/GC_MakeConicalSurface.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
type
  GC_MakeConicalSurface* {.importcpp: "GC_MakeConicalSurface",
                          header: headerGcmakeconicalsurface, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeConicalSurface; theSize: csize_t): pointer {.
    importcpp: "GC_MakeConicalSurface::operator new",
    header: headerGcmakeconicalsurface.}
proc `delete`*(this: var GC_MakeConicalSurface; theAddress: pointer) {.
    importcpp: "GC_MakeConicalSurface::operator delete",
    header: headerGcmakeconicalsurface.}
proc `new[]`*(this: var GC_MakeConicalSurface; theSize: csize_t): pointer {.
    importcpp: "GC_MakeConicalSurface::operator new[]",
    header: headerGcmakeconicalsurface.}
proc `delete[]`*(this: var GC_MakeConicalSurface; theAddress: pointer) {.
    importcpp: "GC_MakeConicalSurface::operator delete[]",
    header: headerGcmakeconicalsurface.}
proc `new`*(this: var GC_MakeConicalSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeConicalSurface::operator new",
    header: headerGcmakeconicalsurface.}
proc `delete`*(this: var GC_MakeConicalSurface; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeConicalSurface::operator delete",
    header: headerGcmakeconicalsurface.}
proc constructGC_MakeConicalSurface*(a2: GpAx2; ang: StandardReal;
                                    radius: StandardReal): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: headerGcmakeconicalsurface.}
proc constructGC_MakeConicalSurface*(c: GpCone): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: headerGcmakeconicalsurface.}
proc constructGC_MakeConicalSurface*(p1: GpPnt; p2: GpPnt; p3: GpPnt; p4: GpPnt): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: headerGcmakeconicalsurface.}
proc constructGC_MakeConicalSurface*(p1: GpPnt; p2: GpPnt; r1: StandardReal;
                                    r2: StandardReal): GC_MakeConicalSurface {.
    constructor, importcpp: "GC_MakeConicalSurface(@)",
    header: headerGcmakeconicalsurface.}
proc value*(this: GC_MakeConicalSurface): Handle[GeomConicalSurface] {.noSideEffect,
    importcpp: "Value", header: headerGcmakeconicalsurface.}
converter `constopencascade`*(this: GC_MakeConicalSurface): Handle[
    GeomConicalSurface] {.noSideEffect, importcpp: "GC_MakeConicalSurface::operator constopencascade",
                         header: headerGcmakeconicalsurface.}