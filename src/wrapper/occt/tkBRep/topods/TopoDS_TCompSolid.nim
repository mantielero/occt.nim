# /usr/include/opencascade/TopoDS_TCompSolid.hxx --> occt/tkBRep/topods/TopoDS_TCompSolid.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstcompsolid = "/usr/include/opencascade/TopoDS_TCompSolid.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TCompSolid"
discard "forward decl of TopoDS_TCompSolid"
type
  HandleTopoDS_TCompSolid* = Handle[TopoDS_TCompSolid]
  TopoDS_TCompSolid* {.importcpp: "TopoDS_TCompSolid",
                      header: headerTopodstcompsolid, bycopy.} = object of TopoDS_TShape


proc constructTopoDS_TCompSolid*(): TopoDS_TCompSolid {.constructor,
    importcpp: "TopoDS_TCompSolid(@)", header: headerTopodstcompsolid.}
proc shapeType*(this: TopoDS_TCompSolid): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstcompsolid.}
proc emptyCopy*(this: TopoDS_TCompSolid): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstcompsolid.}
type
  TopoDS_TCompSolidbaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TCompSolid::get_type_name(@)",
                            header: headerTopodstcompsolid.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TCompSolid::get_type_descriptor(@)",
    header: headerTopodstcompsolid.}
proc dynamicType*(this: TopoDS_TCompSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstcompsolid.}