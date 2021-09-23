# /usr/include/opencascade/GC_MakeRotation.hxx --> occt/gc/GC_MakeRotation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakerotation = "/usr/include/opencascade/GC_MakeRotation.hxx"
discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  GC_MakeRotation* {.importcpp: "GC_MakeRotation", header: headerGcmakerotation,
                    bycopy.} = object


proc `new`*(this: var GC_MakeRotation; theSize: csize_t): pointer {.
    importcpp: "GC_MakeRotation::operator new", header: headerGcmakerotation.}
proc `delete`*(this: var GC_MakeRotation; theAddress: pointer) {.
    importcpp: "GC_MakeRotation::operator delete", header: headerGcmakerotation.}
proc `new[]`*(this: var GC_MakeRotation; theSize: csize_t): pointer {.
    importcpp: "GC_MakeRotation::operator new[]", header: headerGcmakerotation.}
proc `delete[]`*(this: var GC_MakeRotation; theAddress: pointer) {.
    importcpp: "GC_MakeRotation::operator delete[]", header: headerGcmakerotation.}
proc `new`*(this: var GC_MakeRotation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeRotation::operator new", header: headerGcmakerotation.}
proc `delete`*(this: var GC_MakeRotation; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeRotation::operator delete", header: headerGcmakerotation.}
proc constructGC_MakeRotation*(line: GpLin; angle: StandardReal): GC_MakeRotation {.
    constructor, importcpp: "GC_MakeRotation(@)", header: headerGcmakerotation.}
proc constructGC_MakeRotation*(axis: GpAx1; angle: StandardReal): GC_MakeRotation {.
    constructor, importcpp: "GC_MakeRotation(@)", header: headerGcmakerotation.}
proc constructGC_MakeRotation*(point: GpPnt; direc: GpDir; angle: StandardReal): GC_MakeRotation {.
    constructor, importcpp: "GC_MakeRotation(@)", header: headerGcmakerotation.}
proc value*(this: GC_MakeRotation): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Value", header: headerGcmakerotation.}
converter `constopencascade`*(this: GC_MakeRotation): Handle[GeomTransformation] {.
    noSideEffect, importcpp: "GC_MakeRotation::operator constopencascade",
    header: headerGcmakerotation.}