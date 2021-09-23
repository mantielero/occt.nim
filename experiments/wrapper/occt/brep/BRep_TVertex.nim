# /usr/include/opencascade/BRep_TVertex.hxx --> occt/brep/BRep_TVertex.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreptvertex = "/usr/include/opencascade/BRep_TVertex.hxx"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TVertex"
discard "forward decl of BRep_TVertex"
type
  HandleBRepTVertex* = Handle[BRepTVertex]
  BRepTVertex* {.importcpp: "BRep_TVertex", header: headerBreptvertex, bycopy.} = object of TopoDS_TVertex


proc constructBRepTVertex*(): BRepTVertex {.constructor,
    importcpp: "BRep_TVertex(@)", header: headerBreptvertex.}
proc tolerance*(this: BRepTVertex): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: headerBreptvertex.}
proc tolerance*(this: var BRepTVertex; t: StandardReal) {.importcpp: "Tolerance",
    header: headerBreptvertex.}
proc updateTolerance*(this: var BRepTVertex; t: StandardReal) {.
    importcpp: "UpdateTolerance", header: headerBreptvertex.}
proc pnt*(this: BRepTVertex): GpPnt {.noSideEffect, importcpp: "Pnt",
                                  header: headerBreptvertex.}
proc pnt*(this: var BRepTVertex; p: GpPnt) {.importcpp: "Pnt", header: headerBreptvertex.}
proc points*(this: BRepTVertex): BRepListOfPointRepresentation {.noSideEffect,
    importcpp: "Points", header: headerBreptvertex.}
proc changePoints*(this: var BRepTVertex): var BRepListOfPointRepresentation {.
    importcpp: "ChangePoints", header: headerBreptvertex.}
proc emptyCopy*(this: BRepTVertex): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerBreptvertex.}
proc dumpJson*(this: BRepTVertex; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreptvertex.}
type
  BRepTVertexbaseType* = TopoDS_TVertex

proc getTypeName*(): cstring {.importcpp: "BRep_TVertex::get_type_name(@)",
                            header: headerBreptvertex.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_TVertex::get_type_descriptor(@)", header: headerBreptvertex.}
proc dynamicType*(this: BRepTVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreptvertex.}