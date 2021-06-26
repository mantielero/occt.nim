# /usr/include/opencascade/TopoDS_TEdge.hxx --> occt/tkBRep/topods/TopoDS_TEdge.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstedge = "/usr/include/opencascade/TopoDS_TEdge.hxx"
discard "forward decl of TopoDS_TEdge"
discard "forward decl of TopoDS_TEdge"
type
  HandleTopoDS_TEdge* = Handle[TopoDS_TEdge]
  TopoDS_TEdge* {.importcpp: "TopoDS_TEdge", header: headerTopodstedge, bycopy.} = object of TopoDS_TShape


proc shapeType*(this: TopoDS_TEdge): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstedge.}
type
  TopoDS_TEdgebaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TEdge::get_type_name(@)",
                            header: headerTopodstedge.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TEdge::get_type_descriptor(@)", header: headerTopodstedge.}
proc dynamicType*(this: TopoDS_TEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstedge.}