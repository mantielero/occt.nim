# /usr/include/opencascade/TopoDS_TFace.hxx --> occt/topods/TopoDS_TFace.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstface = "/usr/include/opencascade/TopoDS_TFace.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TFace"
discard "forward decl of TopoDS_TFace"
type
  HandleTopoDS_TFace* = Handle[TopoDS_TFace]
  TopoDS_TFace* {.importcpp: "TopoDS_TFace", header: headerTopodstface, bycopy.} = object of TopoDS_TShape


proc constructTopoDS_TFace*(): TopoDS_TFace {.constructor,
    importcpp: "TopoDS_TFace(@)", header: headerTopodstface.}
proc shapeType*(this: TopoDS_TFace): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstface.}
proc emptyCopy*(this: TopoDS_TFace): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstface.}
type
  TopoDS_TFacebaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TFace::get_type_name(@)",
                            header: headerTopodstface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TFace::get_type_descriptor(@)", header: headerTopodstface.}
proc dynamicType*(this: TopoDS_TFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstface.}