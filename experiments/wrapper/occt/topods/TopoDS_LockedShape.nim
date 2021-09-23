# /usr/include/opencascade/TopoDS_LockedShape.hxx --> occt/topods/TopoDS_LockedShape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodslockedshape = "/usr/include/opencascade/TopoDS_LockedShape.hxx"
discard "forward decl of TopoDS_LockedShape"
discard "forward decl of TopoDS_LockedShape"
type
  HandleTopoDS_LockedShape* = Handle[TopoDS_LockedShape]
  TopoDS_LockedShape* {.importcpp: "TopoDS_LockedShape",
                       header: headerTopodslockedshape, bycopy.} = object of StandardDomainError


proc constructTopoDS_LockedShape*(): TopoDS_LockedShape {.constructor,
    importcpp: "TopoDS_LockedShape(@)", header: headerTopodslockedshape.}
proc constructTopoDS_LockedShape*(theMessage: StandardCString): TopoDS_LockedShape {.
    constructor, importcpp: "TopoDS_LockedShape(@)",
    header: headerTopodslockedshape.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "TopoDS_LockedShape::Raise(@)", header: headerTopodslockedshape.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "TopoDS_LockedShape::Raise(@)", header: headerTopodslockedshape.}
proc newInstance*(theMessage: StandardCString = ""): Handle[TopoDS_LockedShape] {.
    importcpp: "TopoDS_LockedShape::NewInstance(@)",
    header: headerTopodslockedshape.}
type
  TopoDS_LockedShapebaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "TopoDS_LockedShape::get_type_name(@)",
                            header: headerTopodslockedshape.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_LockedShape::get_type_descriptor(@)",
    header: headerTopodslockedshape.}
proc dynamicType*(this: TopoDS_LockedShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodslockedshape.}