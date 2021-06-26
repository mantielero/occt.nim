# /usr/include/opencascade/TopoDS_TCompound.hxx --> occt/tkBRep/topods/TopoDS_TCompound.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstcompound = "/usr/include/opencascade/TopoDS_TCompound.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TCompound"
discard "forward decl of TopoDS_TCompound"
type
  HandleTopoDS_TCompound* = Handle[TopoDS_TCompound]
  TopoDS_TCompound* {.importcpp: "TopoDS_TCompound", header: headerTopodstcompound,
                     bycopy.} = object of TopoDS_TShape


proc constructTopoDS_TCompound*(): TopoDS_TCompound {.constructor,
    importcpp: "TopoDS_TCompound(@)", header: headerTopodstcompound.}
proc shapeType*(this: TopoDS_TCompound): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstcompound.}
proc emptyCopy*(this: TopoDS_TCompound): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstcompound.}
type
  TopoDS_TCompoundbaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TCompound::get_type_name(@)",
                            header: headerTopodstcompound.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TCompound::get_type_descriptor(@)",
    header: headerTopodstcompound.}
proc dynamicType*(this: TopoDS_TCompound): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstcompound.}