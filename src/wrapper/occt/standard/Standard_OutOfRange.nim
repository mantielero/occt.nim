# /usr/include/opencascade/Standard_OutOfRange.hxx --> occt/standard/Standard_OutOfRange.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardoutofrange = "/usr/include/opencascade/Standard_OutOfRange.hxx"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_OutOfRange"
type
  HandleStandardOutOfRange* = Handle[StandardOutOfRange]
  StandardOutOfRange* {.importcpp: "Standard_OutOfRange",
                       header: headerStandardoutofrange, bycopy.} = object of StandardRangeError


proc constructStandardOutOfRange*(): StandardOutOfRange {.constructor,
    importcpp: "Standard_OutOfRange(@)", header: headerStandardoutofrange.}
proc constructStandardOutOfRange*(theMessage: StandardCString): StandardOutOfRange {.
    constructor, importcpp: "Standard_OutOfRange(@)",
    header: headerStandardoutofrange.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_OutOfRange::Raise(@)", header: headerStandardoutofrange.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_OutOfRange::Raise(@)", header: headerStandardoutofrange.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardOutOfRange] {.
    importcpp: "Standard_OutOfRange::NewInstance(@)",
    header: headerStandardoutofrange.}
type
  StandardOutOfRangebaseType* = StandardRangeError

proc getTypeName*(): cstring {.importcpp: "Standard_OutOfRange::get_type_name(@)",
                            header: headerStandardoutofrange.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_OutOfRange::get_type_descriptor(@)",
    header: headerStandardoutofrange.}
proc dynamicType*(this: StandardOutOfRange): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardoutofrange.}