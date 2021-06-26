# /usr/include/opencascade/Standard_Overflow.hxx --> occt/standard/Standard_Overflow.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardoverflow = "/usr/include/opencascade/Standard_Overflow.hxx"
discard "forward decl of Standard_Overflow"
discard "forward decl of Standard_Overflow"
type
  HandleStandardOverflow* = Handle[StandardOverflow]
  StandardOverflow* {.importcpp: "Standard_Overflow",
                     header: headerStandardoverflow, bycopy.} = object of StandardNumericError


proc constructStandardOverflow*(): StandardOverflow {.constructor,
    importcpp: "Standard_Overflow(@)", header: headerStandardoverflow.}
proc constructStandardOverflow*(theMessage: StandardCString): StandardOverflow {.
    constructor, importcpp: "Standard_Overflow(@)", header: headerStandardoverflow.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_Overflow::Raise(@)", header: headerStandardoverflow.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_Overflow::Raise(@)", header: headerStandardoverflow.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardOverflow] {.
    importcpp: "Standard_Overflow::NewInstance(@)", header: headerStandardoverflow.}
type
  StandardOverflowbaseType* = StandardNumericError

proc getTypeName*(): cstring {.importcpp: "Standard_Overflow::get_type_name(@)",
                            header: headerStandardoverflow.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Overflow::get_type_descriptor(@)",
    header: headerStandardoverflow.}
proc dynamicType*(this: StandardOverflow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardoverflow.}