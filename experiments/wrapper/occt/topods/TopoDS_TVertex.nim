# /usr/include/opencascade/TopoDS_TVertex.hxx --> occt/topods/TopoDS_TVertex.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstvertex = "/usr/include/opencascade/TopoDS_TVertex.hxx"
discard "forward decl of TopoDS_TVertex"
discard "forward decl of TopoDS_TVertex"
type
  HandleTopoDS_TVertex* = Handle[TopoDS_TVertex]
  TopoDS_TVertex* {.importcpp: "TopoDS_TVertex", header: headerTopodstvertex, bycopy.} = object of TopoDS_TShape


proc shapeType*(this: TopoDS_TVertex): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstvertex.}
type
  TopoDS_TVertexbaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TVertex::get_type_name(@)",
                            header: headerTopodstvertex.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TVertex::get_type_descriptor(@)",
    header: headerTopodstvertex.}
proc dynamicType*(this: TopoDS_TVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstvertex.}