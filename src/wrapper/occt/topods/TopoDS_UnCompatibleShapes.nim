# /usr/include/opencascade/TopoDS_UnCompatibleShapes.hxx --> occt/topods/TopoDS_UnCompatibleShapes.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsuncompatibleshapes = "/usr/include/opencascade/TopoDS_UnCompatibleShapes.hxx"
discard "forward decl of TopoDS_UnCompatibleShapes"
discard "forward decl of TopoDS_UnCompatibleShapes"
type
  HandleTopoDS_UnCompatibleShapes* = Handle[TopoDS_UnCompatibleShapes]
  TopoDS_UnCompatibleShapes* {.importcpp: "TopoDS_UnCompatibleShapes",
                              header: headerTopodsuncompatibleshapes, bycopy.} = object of StandardDomainError


proc constructTopoDS_UnCompatibleShapes*(): TopoDS_UnCompatibleShapes {.
    constructor, importcpp: "TopoDS_UnCompatibleShapes(@)",
    header: headerTopodsuncompatibleshapes.}
proc constructTopoDS_UnCompatibleShapes*(theMessage: StandardCString): TopoDS_UnCompatibleShapes {.
    constructor, importcpp: "TopoDS_UnCompatibleShapes(@)",
    header: headerTopodsuncompatibleshapes.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "TopoDS_UnCompatibleShapes::Raise(@)",
    header: headerTopodsuncompatibleshapes.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "TopoDS_UnCompatibleShapes::Raise(@)",
    header: headerTopodsuncompatibleshapes.}
proc newInstance*(theMessage: StandardCString = ""): Handle[TopoDS_UnCompatibleShapes] {.
    importcpp: "TopoDS_UnCompatibleShapes::NewInstance(@)",
    header: headerTopodsuncompatibleshapes.}
type
  TopoDS_UnCompatibleShapesbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "TopoDS_UnCompatibleShapes::get_type_name(@)",
                            header: headerTopodsuncompatibleshapes.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_UnCompatibleShapes::get_type_descriptor(@)",
    header: headerTopodsuncompatibleshapes.}
proc dynamicType*(this: TopoDS_UnCompatibleShapes): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerTopodsuncompatibleshapes.}