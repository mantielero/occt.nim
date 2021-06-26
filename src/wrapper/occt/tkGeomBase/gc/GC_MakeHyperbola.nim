# /usr/include/opencascade/GC_MakeHyperbola.hxx --> occt/tkGeomBase/gc/GC_MakeHyperbola.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmakehyperbola = "/usr/include/opencascade/GC_MakeHyperbola.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
type
  GC_MakeHyperbola* {.importcpp: "GC_MakeHyperbola", header: headerGcmakehyperbola,
                     bycopy.} = object of GC_Root


proc `new`*(this: var GC_MakeHyperbola; theSize: csize_t): pointer {.
    importcpp: "GC_MakeHyperbola::operator new", header: headerGcmakehyperbola.}
proc `delete`*(this: var GC_MakeHyperbola; theAddress: pointer) {.
    importcpp: "GC_MakeHyperbola::operator delete", header: headerGcmakehyperbola.}
proc `new[]`*(this: var GC_MakeHyperbola; theSize: csize_t): pointer {.
    importcpp: "GC_MakeHyperbola::operator new[]", header: headerGcmakehyperbola.}
proc `delete[]`*(this: var GC_MakeHyperbola; theAddress: pointer) {.
    importcpp: "GC_MakeHyperbola::operator delete[]",
    header: headerGcmakehyperbola.}
proc `new`*(this: var GC_MakeHyperbola; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeHyperbola::operator new", header: headerGcmakehyperbola.}
proc `delete`*(this: var GC_MakeHyperbola; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeHyperbola::operator delete", header: headerGcmakehyperbola.}
proc constructGC_MakeHyperbola*(h: GpHypr): GC_MakeHyperbola {.constructor,
    importcpp: "GC_MakeHyperbola(@)", header: headerGcmakehyperbola.}
proc constructGC_MakeHyperbola*(a2: GpAx2; majorRadius: StandardReal;
                               minorRadius: StandardReal): GC_MakeHyperbola {.
    constructor, importcpp: "GC_MakeHyperbola(@)", header: headerGcmakehyperbola.}
proc constructGC_MakeHyperbola*(s1: GpPnt; s2: GpPnt; center: GpPnt): GC_MakeHyperbola {.
    constructor, importcpp: "GC_MakeHyperbola(@)", header: headerGcmakehyperbola.}
proc value*(this: GC_MakeHyperbola): Handle[GeomHyperbola] {.noSideEffect,
    importcpp: "Value", header: headerGcmakehyperbola.}
converter `constopencascade`*(this: GC_MakeHyperbola): Handle[GeomHyperbola] {.
    noSideEffect, importcpp: "GC_MakeHyperbola::operator constopencascade",
    header: headerGcmakehyperbola.}