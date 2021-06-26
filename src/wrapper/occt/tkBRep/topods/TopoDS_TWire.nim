# /usr/include/opencascade/TopoDS_TWire.hxx --> occt/tkBRep/topods/TopoDS_TWire.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstwire = "/usr/include/opencascade/TopoDS_TWire.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TWire"
discard "forward decl of TopoDS_TWire"
type
  HandleTopoDS_TWire* = Handle[TopoDS_TWire]
  TopoDS_TWire* {.importcpp: "TopoDS_TWire", header: headerTopodstwire, bycopy.} = object of TopoDS_TShape


proc constructTopoDS_TWire*(): TopoDS_TWire {.constructor,
    importcpp: "TopoDS_TWire(@)", header: headerTopodstwire.}
proc shapeType*(this: TopoDS_TWire): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstwire.}
proc emptyCopy*(this: TopoDS_TWire): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstwire.}
type
  TopoDS_TWirebaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TWire::get_type_name(@)",
                            header: headerTopodstwire.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TWire::get_type_descriptor(@)", header: headerTopodstwire.}
proc dynamicType*(this: TopoDS_TWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstwire.}