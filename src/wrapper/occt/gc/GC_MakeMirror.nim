# /usr/include/opencascade/GC_MakeMirror.hxx --> occt/gc/GC_MakeMirror.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakemirror = "/usr/include/opencascade/GC_MakeMirror.hxx"
discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax2"
type
  GC_MakeMirror* {.importcpp: "GC_MakeMirror", header: headerGcmakemirror, bycopy.} = object


proc `new`*(this: var GC_MakeMirror; theSize: csize_t): pointer {.
    importcpp: "GC_MakeMirror::operator new", header: headerGcmakemirror.}
proc `delete`*(this: var GC_MakeMirror; theAddress: pointer) {.
    importcpp: "GC_MakeMirror::operator delete", header: headerGcmakemirror.}
proc `new[]`*(this: var GC_MakeMirror; theSize: csize_t): pointer {.
    importcpp: "GC_MakeMirror::operator new[]", header: headerGcmakemirror.}
proc `delete[]`*(this: var GC_MakeMirror; theAddress: pointer) {.
    importcpp: "GC_MakeMirror::operator delete[]", header: headerGcmakemirror.}
proc `new`*(this: var GC_MakeMirror; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeMirror::operator new", header: headerGcmakemirror.}
proc `delete`*(this: var GC_MakeMirror; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeMirror::operator delete", header: headerGcmakemirror.}
proc constructGC_MakeMirror*(point: GpPnt): GC_MakeMirror {.constructor,
    importcpp: "GC_MakeMirror(@)", header: headerGcmakemirror.}
proc constructGC_MakeMirror*(axis: GpAx1): GC_MakeMirror {.constructor,
    importcpp: "GC_MakeMirror(@)", header: headerGcmakemirror.}
proc constructGC_MakeMirror*(line: GpLin): GC_MakeMirror {.constructor,
    importcpp: "GC_MakeMirror(@)", header: headerGcmakemirror.}
proc constructGC_MakeMirror*(point: GpPnt; direc: GpDir): GC_MakeMirror {.constructor,
    importcpp: "GC_MakeMirror(@)", header: headerGcmakemirror.}
proc constructGC_MakeMirror*(plane: GpPln): GC_MakeMirror {.constructor,
    importcpp: "GC_MakeMirror(@)", header: headerGcmakemirror.}
proc constructGC_MakeMirror*(plane: GpAx2): GC_MakeMirror {.constructor,
    importcpp: "GC_MakeMirror(@)", header: headerGcmakemirror.}
proc value*(this: GC_MakeMirror): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Value", header: headerGcmakemirror.}
converter `constopencascade`*(this: GC_MakeMirror): Handle[GeomTransformation] {.
    noSideEffect, importcpp: "GC_MakeMirror::operator constopencascade",
    header: headerGcmakemirror.}