# /usr/include/opencascade/Standard_Underflow.hxx --> occt/standard/Standard_Underflow.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardunderflow = "/usr/include/opencascade/Standard_Underflow.hxx"
discard "forward decl of Standard_Underflow"
discard "forward decl of Standard_Underflow"
type
  HandleStandardUnderflow* = Handle[StandardUnderflow]
  StandardUnderflow* {.importcpp: "Standard_Underflow",
                      header: headerStandardunderflow, bycopy.} = object of StandardNumericError


proc constructStandardUnderflow*(): StandardUnderflow {.constructor,
    importcpp: "Standard_Underflow(@)", header: headerStandardunderflow.}
proc constructStandardUnderflow*(theMessage: StandardCString): StandardUnderflow {.
    constructor, importcpp: "Standard_Underflow(@)",
    header: headerStandardunderflow.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_Underflow::Raise(@)", header: headerStandardunderflow.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_Underflow::Raise(@)", header: headerStandardunderflow.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardUnderflow] {.
    importcpp: "Standard_Underflow::NewInstance(@)",
    header: headerStandardunderflow.}
type
  StandardUnderflowbaseType* = StandardNumericError

proc getTypeName*(): cstring {.importcpp: "Standard_Underflow::get_type_name(@)",
                            header: headerStandardunderflow.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Underflow::get_type_descriptor(@)",
    header: headerStandardunderflow.}
proc dynamicType*(this: StandardUnderflow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardunderflow.}