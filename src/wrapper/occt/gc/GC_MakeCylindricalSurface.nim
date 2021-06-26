# /usr/include/opencascade/GC_MakeCylindricalSurface.hxx --> occt/gc/GC_MakeCylindricalSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakecylindricalsurface = "/usr/include/opencascade/GC_MakeCylindricalSurface.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Circ"
type
  GC_MakeCylindricalSurface* {.importcpp: "GC_MakeCylindricalSurface",
                              header: headerGcmakecylindricalsurface, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeCylindricalSurface; theSize: csize_t): pointer {.
    importcpp: "GC_MakeCylindricalSurface::operator new",
    header: headerGcmakecylindricalsurface.}
proc `delete`*(this: var GC_MakeCylindricalSurface; theAddress: pointer) {.
    importcpp: "GC_MakeCylindricalSurface::operator delete",
    header: headerGcmakecylindricalsurface.}
proc `new[]`*(this: var GC_MakeCylindricalSurface; theSize: csize_t): pointer {.
    importcpp: "GC_MakeCylindricalSurface::operator new[]",
    header: headerGcmakecylindricalsurface.}
proc `delete[]`*(this: var GC_MakeCylindricalSurface; theAddress: pointer) {.
    importcpp: "GC_MakeCylindricalSurface::operator delete[]",
    header: headerGcmakecylindricalsurface.}
proc `new`*(this: var GC_MakeCylindricalSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeCylindricalSurface::operator new",
    header: headerGcmakecylindricalsurface.}
proc `delete`*(this: var GC_MakeCylindricalSurface; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeCylindricalSurface::operator delete",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(a2: GpAx2; radius: StandardReal): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(c: GpCylinder): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(cyl: GpCylinder; point: GpPnt): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(cyl: GpCylinder; dist: StandardReal): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(axis: GpAx1; radius: StandardReal): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc constructGC_MakeCylindricalSurface*(circ: GpCirc): GC_MakeCylindricalSurface {.
    constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: headerGcmakecylindricalsurface.}
proc value*(this: GC_MakeCylindricalSurface): Handle[GeomCylindricalSurface] {.
    noSideEffect, importcpp: "Value", header: headerGcmakecylindricalsurface.}
converter `constopencascade`*(this: GC_MakeCylindricalSurface): Handle[
    GeomCylindricalSurface] {.noSideEffect, importcpp: "GC_MakeCylindricalSurface::operator constopencascade",
                             header: headerGcmakecylindricalsurface.}