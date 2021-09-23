# /usr/include/opencascade/TopoDS_Iterator.hxx --> occt/topods/TopoDS_Iterator.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsiterator = "/usr/include/opencascade/TopoDS_Iterator.hxx"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  TopoDS_Iterator* {.importcpp: "TopoDS_Iterator", header: headerTopodsiterator,
                    bycopy.} = object


proc `new`*(this: var TopoDS_Iterator; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Iterator::operator new", header: headerTopodsiterator.}
proc `delete`*(this: var TopoDS_Iterator; theAddress: pointer) {.
    importcpp: "TopoDS_Iterator::operator delete", header: headerTopodsiterator.}
proc `new[]`*(this: var TopoDS_Iterator; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Iterator::operator new[]", header: headerTopodsiterator.}
proc `delete[]`*(this: var TopoDS_Iterator; theAddress: pointer) {.
    importcpp: "TopoDS_Iterator::operator delete[]", header: headerTopodsiterator.}
proc `new`*(this: var TopoDS_Iterator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Iterator::operator new", header: headerTopodsiterator.}
proc `delete`*(this: var TopoDS_Iterator; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Iterator::operator delete", header: headerTopodsiterator.}
proc constructTopoDS_Iterator*(): TopoDS_Iterator {.constructor,
    importcpp: "TopoDS_Iterator(@)", header: headerTopodsiterator.}
proc constructTopoDS_Iterator*(s: TopoDS_Shape; cumOri: StandardBoolean = true;
                              cumLoc: StandardBoolean = true): TopoDS_Iterator {.
    constructor, importcpp: "TopoDS_Iterator(@)", header: headerTopodsiterator.}
proc initialize*(this: var TopoDS_Iterator; s: TopoDS_Shape;
                cumOri: StandardBoolean = true; cumLoc: StandardBoolean = true) {.
    importcpp: "Initialize", header: headerTopodsiterator.}
proc more*(this: TopoDS_Iterator): StandardBoolean {.noSideEffect, importcpp: "More",
    header: headerTopodsiterator.}
proc next*(this: var TopoDS_Iterator) {.importcpp: "Next",
                                    header: headerTopodsiterator.}
proc value*(this: TopoDS_Iterator): TopoDS_Shape {.noSideEffect, importcpp: "Value",
    header: headerTopodsiterator.}