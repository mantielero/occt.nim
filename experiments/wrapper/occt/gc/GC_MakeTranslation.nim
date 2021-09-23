# /usr/include/opencascade/GC_MakeTranslation.hxx --> occt/gc/GC_MakeTranslation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcmaketranslation = "/usr/include/opencascade/GC_MakeTranslation.hxx"
discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  GC_MakeTranslation* {.importcpp: "GC_MakeTranslation",
                       header: headerGcmaketranslation, bycopy.} = object


proc `new`*(this: var GC_MakeTranslation; theSize: csize_t): pointer {.
    importcpp: "GC_MakeTranslation::operator new", header: headerGcmaketranslation.}
proc `delete`*(this: var GC_MakeTranslation; theAddress: pointer) {.
    importcpp: "GC_MakeTranslation::operator delete",
    header: headerGcmaketranslation.}
proc `new[]`*(this: var GC_MakeTranslation; theSize: csize_t): pointer {.
    importcpp: "GC_MakeTranslation::operator new[]",
    header: headerGcmaketranslation.}
proc `delete[]`*(this: var GC_MakeTranslation; theAddress: pointer) {.
    importcpp: "GC_MakeTranslation::operator delete[]",
    header: headerGcmaketranslation.}
proc `new`*(this: var GC_MakeTranslation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_MakeTranslation::operator new", header: headerGcmaketranslation.}
proc `delete`*(this: var GC_MakeTranslation; a2: pointer; a3: pointer) {.
    importcpp: "GC_MakeTranslation::operator delete",
    header: headerGcmaketranslation.}
proc constructGC_MakeTranslation*(vect: GpVec): GC_MakeTranslation {.constructor,
    importcpp: "GC_MakeTranslation(@)", header: headerGcmaketranslation.}
proc constructGC_MakeTranslation*(point1: GpPnt; point2: GpPnt): GC_MakeTranslation {.
    constructor, importcpp: "GC_MakeTranslation(@)",
    header: headerGcmaketranslation.}
proc value*(this: GC_MakeTranslation): Handle[GeomTransformation] {.noSideEffect,
    importcpp: "Value", header: headerGcmaketranslation.}
converter `constopencascade`*(this: GC_MakeTranslation): Handle[GeomTransformation] {.
    noSideEffect, importcpp: "GC_MakeTranslation::operator constopencascade",
    header: headerGcmaketranslation.}