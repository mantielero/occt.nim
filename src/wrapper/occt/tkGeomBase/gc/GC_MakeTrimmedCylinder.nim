# /usr/include/opencascade/GC_MakeTrimmedCylinder.hxx --> occt/tkGeomBase/gc/GC_MakeTrimmedCylinder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmaketrimmedcylinder = "/usr/include/opencascade/GC_MakeTrimmedCylinder.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Cylinder"
type
  GC_MakeTrimmedCylinder* {.importcpp: "GC_MakeTrimmedCylinder",
                           header: headerGcmaketrimmedcylinder, bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeTrimmedCylinder; theSize: csize_t): pointer {.
    importcpp: "GC_MakeTrimmedCylinder::operator new",
    header: headerGcmaketrimmedcylinder.}
proc `delete`*(this: var GC_MakeTrimmedCylinder; theAddress: pointer) {.
    importcpp: "GC_MakeTrimmedCylinder::operator delete",
    header: headerGcmaketrimmedcylinder.}
proc `new[]`*(this: var GC_MakeTrimmedCylinder; theSize: csize_t): pointer {.
    importcpp: "GC_MakeTrimmedCylinder::operator new[]",
    header: headerGcmaketrimmedcylinder.}
proc `delete[]`*(this: var GC_MakeTrimmedCylinder; theAddress: pointer) {.
    importcpp: "GC_MakeTrimmedCylinder::operator delete[]",
    header: headerGcmaketrimmedcylinder.}
proc `new`*(this: var GC_MakeTrimmedCylinder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeTrimmedCylinder::operator new",
    header: headerGcmaketrimmedcylinder.}
proc `delete`*(this: var GC_MakeTrimmedCylinder; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeTrimmedCylinder::operator delete",
    header: headerGcmaketrimmedcylinder.}
proc constructGC_MakeTrimmedCylinder*(p1: GpPnt; p2: GpPnt; p3: GpPnt): GC_MakeTrimmedCylinder {.
    constructor, importcpp: "GC_MakeTrimmedCylinder(@)",
    header: headerGcmaketrimmedcylinder.}
proc constructGC_MakeTrimmedCylinder*(circ: GpCirc; height: StandardReal): GC_MakeTrimmedCylinder {.
    constructor, importcpp: "GC_MakeTrimmedCylinder(@)",
    header: headerGcmaketrimmedcylinder.}
proc constructGC_MakeTrimmedCylinder*(a1: GpAx1; radius: StandardReal;
                                     height: StandardReal): GC_MakeTrimmedCylinder {.
    constructor, importcpp: "GC_MakeTrimmedCylinder(@)",
    header: headerGcmaketrimmedcylinder.}
proc value*(this: GC_MakeTrimmedCylinder): Handle[GeomRectangularTrimmedSurface] {.
    noSideEffect, importcpp: "Value", header: headerGcmaketrimmedcylinder.}
converter `constopencascade`*(this: GC_MakeTrimmedCylinder): Handle[
    GeomRectangularTrimmedSurface] {.noSideEffect, importcpp: "GC_MakeTrimmedCylinder::operator constopencascade",
                                    header: headerGcmaketrimmedcylinder.}