# /usr/include/opencascade/TopoDS_TSolid.hxx --> occt/tkBRep/topods/TopoDS_TSolid.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstsolid = "/usr/include/opencascade/TopoDS_TSolid.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TSolid"
discard "forward decl of TopoDS_TSolid"
type
  HandleTopoDS_TSolid* = Handle[TopoDS_TSolid]
  TopoDS_TSolid* {.importcpp: "TopoDS_TSolid", header: headerTopodstsolid, bycopy.} = object of TopoDS_TShape


proc constructTopoDS_TSolid*(): TopoDS_TSolid {.constructor,
    importcpp: "TopoDS_TSolid(@)", header: headerTopodstsolid.}
proc shapeType*(this: TopoDS_TSolid): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstsolid.}
proc emptyCopy*(this: TopoDS_TSolid): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstsolid.}
type
  TopoDS_TSolidbaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TSolid::get_type_name(@)",
                            header: headerTopodstsolid.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TSolid::get_type_descriptor(@)", header: headerTopodstsolid.}
proc dynamicType*(this: TopoDS_TSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstsolid.}