# /usr/include/opencascade/TopoDS_AlertWithShape.hxx --> occt/tkBRep/topods/TopoDS_AlertWithShape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsalertwithshape = "/usr/include/opencascade/TopoDS_AlertWithShape.hxx"
type
  TopoDS_AlertWithShape* {.importcpp: "TopoDS_AlertWithShape",
                          header: headerTopodsalertwithshape, bycopy.} = object of MessageAlert


proc constructTopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.
    constructor, importcpp: "TopoDS_AlertWithShape(@)",
    header: headerTopodsalertwithshape.}
proc getShape*(this: TopoDS_AlertWithShape): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: headerTopodsalertwithshape.}
proc setShape*(this: var TopoDS_AlertWithShape; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: headerTopodsalertwithshape.}
proc supportsMerge*(this: TopoDS_AlertWithShape): StandardBoolean {.noSideEffect,
    importcpp: "SupportsMerge", header: headerTopodsalertwithshape.}
proc merge*(this: var TopoDS_AlertWithShape; theTarget: Handle[MessageAlert]): StandardBoolean {.
    importcpp: "Merge", header: headerTopodsalertwithshape.}
type
  TopoDS_AlertWithShapebaseType* = MessageAlert

proc getTypeName*(): cstring {.importcpp: "TopoDS_AlertWithShape::get_type_name(@)",
                            header: headerTopodsalertwithshape.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_AlertWithShape::get_type_descriptor(@)",
    header: headerTopodsalertwithshape.}
proc dynamicType*(this: TopoDS_AlertWithShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodsalertwithshape.}