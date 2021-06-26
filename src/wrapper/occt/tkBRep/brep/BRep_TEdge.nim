# /usr/include/opencascade/BRep_TEdge.hxx --> occt/tkBRep/brep/BRep_TEdge.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreptedge = "/usr/include/opencascade/BRep_TEdge.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TEdge"
discard "forward decl of BRep_TEdge"
type
  HandleBRepTEdge* = Handle[BRepTEdge]
  BRepTEdge* {.importcpp: "BRep_TEdge", header: headerBreptedge, bycopy.} = object of TopoDS_TEdge


proc constructBRepTEdge*(): BRepTEdge {.constructor, importcpp: "BRep_TEdge(@)",
                                     header: headerBreptedge.}
proc tolerance*(this: BRepTEdge): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: headerBreptedge.}
proc tolerance*(this: var BRepTEdge; t: StandardReal) {.importcpp: "Tolerance",
    header: headerBreptedge.}
proc updateTolerance*(this: var BRepTEdge; t: StandardReal) {.
    importcpp: "UpdateTolerance", header: headerBreptedge.}
proc sameParameter*(this: BRepTEdge): StandardBoolean {.noSideEffect,
    importcpp: "SameParameter", header: headerBreptedge.}
proc sameParameter*(this: var BRepTEdge; s: StandardBoolean) {.
    importcpp: "SameParameter", header: headerBreptedge.}
proc sameRange*(this: BRepTEdge): StandardBoolean {.noSideEffect,
    importcpp: "SameRange", header: headerBreptedge.}
proc sameRange*(this: var BRepTEdge; s: StandardBoolean) {.importcpp: "SameRange",
    header: headerBreptedge.}
proc degenerated*(this: BRepTEdge): StandardBoolean {.noSideEffect,
    importcpp: "Degenerated", header: headerBreptedge.}
proc degenerated*(this: var BRepTEdge; s: StandardBoolean) {.importcpp: "Degenerated",
    header: headerBreptedge.}
proc curves*(this: BRepTEdge): BRepListOfCurveRepresentation {.noSideEffect,
    importcpp: "Curves", header: headerBreptedge.}
proc changeCurves*(this: var BRepTEdge): var BRepListOfCurveRepresentation {.
    importcpp: "ChangeCurves", header: headerBreptedge.}
proc emptyCopy*(this: BRepTEdge): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerBreptedge.}
proc dumpJson*(this: BRepTEdge; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreptedge.}
type
  BRepTEdgebaseType* = TopoDS_TEdge

proc getTypeName*(): cstring {.importcpp: "BRep_TEdge::get_type_name(@)",
                            header: headerBreptedge.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_TEdge::get_type_descriptor(@)", header: headerBreptedge.}
proc dynamicType*(this: BRepTEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreptedge.}