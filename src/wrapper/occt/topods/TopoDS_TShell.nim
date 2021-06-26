# /usr/include/opencascade/TopoDS_TShell.hxx --> occt/topods/TopoDS_TShell.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstshell = "/usr/include/opencascade/TopoDS_TShell.hxx"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TShell"
discard "forward decl of TopoDS_TShell"
type
  HandleTopoDS_TShell* = Handle[TopoDS_TShell]
  TopoDS_TShell* {.importcpp: "TopoDS_TShell", header: headerTopodstshell, bycopy.} = object of TopoDS_TShape


proc constructTopoDS_TShell*(): TopoDS_TShell {.constructor,
    importcpp: "TopoDS_TShell(@)", header: headerTopodstshell.}
proc shapeType*(this: TopoDS_TShell): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstshell.}
proc emptyCopy*(this: TopoDS_TShell): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstshell.}
type
  TopoDS_TShellbaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TShell::get_type_name(@)",
                            header: headerTopodstshell.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TShell::get_type_descriptor(@)", header: headerTopodstshell.}
proc dynamicType*(this: TopoDS_TShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstshell.}