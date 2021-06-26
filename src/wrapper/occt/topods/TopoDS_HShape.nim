# /usr/include/opencascade/TopoDS_HShape.hxx --> occt/topods/TopoDS_HShape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodshshape = "/usr/include/opencascade/TopoDS_HShape.hxx"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_HShape"
discard "forward decl of TopoDS_HShape"
type
  HandleTopoDS_HShape* = Handle[TopoDS_HShape]
  TopoDS_HShape* {.importcpp: "TopoDS_HShape", header: headerTopodshshape, bycopy.} = object of StandardTransient


proc constructTopoDS_HShape*(): TopoDS_HShape {.constructor,
    importcpp: "TopoDS_HShape(@)", header: headerTopodshshape.}
proc constructTopoDS_HShape*(aShape: TopoDS_Shape): TopoDS_HShape {.constructor,
    importcpp: "TopoDS_HShape(@)", header: headerTopodshshape.}
proc shape*(this: var TopoDS_HShape; aShape: TopoDS_Shape) {.importcpp: "Shape",
    header: headerTopodshshape.}
proc shape*(this: TopoDS_HShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: headerTopodshshape.}
proc changeShape*(this: var TopoDS_HShape): var TopoDS_Shape {.
    importcpp: "ChangeShape", header: headerTopodshshape.}
type
  TopoDS_HShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopoDS_HShape::get_type_name(@)",
                            header: headerTopodshshape.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_HShape::get_type_descriptor(@)", header: headerTopodshshape.}
proc dynamicType*(this: TopoDS_HShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodshshape.}