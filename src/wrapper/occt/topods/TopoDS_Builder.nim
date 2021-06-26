# /usr/include/opencascade/TopoDS_Builder.hxx --> occt/topods/TopoDS_Builder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsbuilder = "/usr/include/opencascade/TopoDS_Builder.hxx"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_FrozenShape"
discard "forward decl of TopoDS_UnCompatibleShapes"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
type
  TopoDS_Builder* {.importcpp: "TopoDS_Builder", header: headerTopodsbuilder, bycopy.} = object


proc `new`*(this: var TopoDS_Builder; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Builder::operator new", header: headerTopodsbuilder.}
proc `delete`*(this: var TopoDS_Builder; theAddress: pointer) {.
    importcpp: "TopoDS_Builder::operator delete", header: headerTopodsbuilder.}
proc `new[]`*(this: var TopoDS_Builder; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Builder::operator new[]", header: headerTopodsbuilder.}
proc `delete[]`*(this: var TopoDS_Builder; theAddress: pointer) {.
    importcpp: "TopoDS_Builder::operator delete[]", header: headerTopodsbuilder.}
proc `new`*(this: var TopoDS_Builder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Builder::operator new", header: headerTopodsbuilder.}
proc `delete`*(this: var TopoDS_Builder; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Builder::operator delete", header: headerTopodsbuilder.}
proc makeWire*(this: TopoDS_Builder; w: var TopoDS_Wire) {.noSideEffect,
    importcpp: "MakeWire", header: headerTopodsbuilder.}
proc makeShell*(this: TopoDS_Builder; s: var TopoDS_Shell) {.noSideEffect,
    importcpp: "MakeShell", header: headerTopodsbuilder.}
proc makeSolid*(this: TopoDS_Builder; s: var TopoDS_Solid) {.noSideEffect,
    importcpp: "MakeSolid", header: headerTopodsbuilder.}
proc makeCompSolid*(this: TopoDS_Builder; c: var TopoDS_CompSolid) {.noSideEffect,
    importcpp: "MakeCompSolid", header: headerTopodsbuilder.}
proc makeCompound*(this: TopoDS_Builder; c: var TopoDS_Compound) {.noSideEffect,
    importcpp: "MakeCompound", header: headerTopodsbuilder.}
proc add*(this: TopoDS_Builder; s: var TopoDS_Shape; c: TopoDS_Shape) {.noSideEffect,
    importcpp: "Add", header: headerTopodsbuilder.}
proc remove*(this: TopoDS_Builder; s: var TopoDS_Shape; c: TopoDS_Shape) {.noSideEffect,
    importcpp: "Remove", header: headerTopodsbuilder.}