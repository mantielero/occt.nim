# /usr/include/opencascade/Standard_NotImplemented.hxx --> occt/standard/Standard_NotImplemented.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnotimplemented = "/usr/include/opencascade/Standard_NotImplemented.hxx"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_NotImplemented"
type
  HandleStandardNotImplemented* = Handle[StandardNotImplemented]
  StandardNotImplemented* {.importcpp: "Standard_NotImplemented",
                           header: headerStandardnotimplemented, bycopy.} = object of StandardProgramError


proc constructStandardNotImplemented*(): StandardNotImplemented {.constructor,
    importcpp: "Standard_NotImplemented(@)", header: headerStandardnotimplemented.}
proc constructStandardNotImplemented*(theMessage: StandardCString): StandardNotImplemented {.
    constructor, importcpp: "Standard_NotImplemented(@)",
    header: headerStandardnotimplemented.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NotImplemented::Raise(@)",
    header: headerStandardnotimplemented.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NotImplemented::Raise(@)",
    header: headerStandardnotimplemented.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNotImplemented] {.
    importcpp: "Standard_NotImplemented::NewInstance(@)",
    header: headerStandardnotimplemented.}
type
  StandardNotImplementedbaseType* = StandardProgramError

proc getTypeName*(): cstring {.importcpp: "Standard_NotImplemented::get_type_name(@)",
                            header: headerStandardnotimplemented.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NotImplemented::get_type_descriptor(@)",
    header: headerStandardnotimplemented.}
proc dynamicType*(this: StandardNotImplemented): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandardnotimplemented.}