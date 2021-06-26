# /usr/include/opencascade/GC_Root.hxx --> occt/tkGeomBase/gc/GC_Root.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGcroot = "/usr/include/opencascade/GC_Root.hxx"
type
  GC_Root* {.importcpp: "GC_Root", header: headerGcroot, bycopy.} = object


proc `new`*(this: var GC_Root; theSize: csize_t): pointer {.
    importcpp: "GC_Root::operator new", header: headerGcroot.}
proc `delete`*(this: var GC_Root; theAddress: pointer) {.
    importcpp: "GC_Root::operator delete", header: headerGcroot.}
proc `new[]`*(this: var GC_Root; theSize: csize_t): pointer {.
    importcpp: "GC_Root::operator new[]", header: headerGcroot.}
proc `delete[]`*(this: var GC_Root; theAddress: pointer) {.
    importcpp: "GC_Root::operator delete[]", header: headerGcroot.}
proc `new`*(this: var GC_Root; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GC_Root::operator new", header: headerGcroot.}
proc `delete`*(this: var GC_Root; a2: pointer; a3: pointer) {.
    importcpp: "GC_Root::operator delete", header: headerGcroot.}
proc isDone*(this: GC_Root): StandardBoolean {.noSideEffect, importcpp: "IsDone",
    header: headerGcroot.}
proc status*(this: GC_Root): GceErrorType {.noSideEffect, importcpp: "Status",
                                        header: headerGcroot.}