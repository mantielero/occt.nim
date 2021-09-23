# /usr/include/opencascade/TopoDS_FrozenShape.hxx --> occt/topods/TopoDS_FrozenShape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsfrozenshape = "/usr/include/opencascade/TopoDS_FrozenShape.hxx"
discard "forward decl of TopoDS_FrozenShape"
discard "forward decl of TopoDS_FrozenShape"
type
  HandleTopoDS_FrozenShape* = Handle[TopoDS_FrozenShape]
  TopoDS_FrozenShape* {.importcpp: "TopoDS_FrozenShape",
                       header: headerTopodsfrozenshape, bycopy.} = object of StandardDomainError


proc constructTopoDS_FrozenShape*(): TopoDS_FrozenShape {.constructor,
    importcpp: "TopoDS_FrozenShape(@)", header: headerTopodsfrozenshape.}
proc constructTopoDS_FrozenShape*(theMessage: StandardCString): TopoDS_FrozenShape {.
    constructor, importcpp: "TopoDS_FrozenShape(@)",
    header: headerTopodsfrozenshape.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "TopoDS_FrozenShape::Raise(@)", header: headerTopodsfrozenshape.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "TopoDS_FrozenShape::Raise(@)", header: headerTopodsfrozenshape.}
proc newInstance*(theMessage: StandardCString = ""): Handle[TopoDS_FrozenShape] {.
    importcpp: "TopoDS_FrozenShape::NewInstance(@)",
    header: headerTopodsfrozenshape.}
type
  TopoDS_FrozenShapebaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "TopoDS_FrozenShape::get_type_name(@)",
                            header: headerTopodsfrozenshape.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_FrozenShape::get_type_descriptor(@)",
    header: headerTopodsfrozenshape.}
proc dynamicType*(this: TopoDS_FrozenShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodsfrozenshape.}