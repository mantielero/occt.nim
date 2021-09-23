# /usr/include/opencascade/Standard_DivideByZero.hxx --> occt/standard/Standard_DivideByZero.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarddividebyzero = "/usr/include/opencascade/Standard_DivideByZero.hxx"
discard "forward decl of Standard_DivideByZero"
discard "forward decl of Standard_DivideByZero"
type
  HandleStandardDivideByZero* = Handle[StandardDivideByZero]
  StandardDivideByZero* {.importcpp: "Standard_DivideByZero",
                         header: headerStandarddividebyzero, bycopy.} = object of StandardNumericError


proc constructStandardDivideByZero*(): StandardDivideByZero {.constructor,
    importcpp: "Standard_DivideByZero(@)", header: headerStandarddividebyzero.}
proc constructStandardDivideByZero*(theMessage: StandardCString): StandardDivideByZero {.
    constructor, importcpp: "Standard_DivideByZero(@)",
    header: headerStandarddividebyzero.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_DivideByZero::Raise(@)",
    header: headerStandarddividebyzero.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_DivideByZero::Raise(@)",
    header: headerStandarddividebyzero.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardDivideByZero] {.
    importcpp: "Standard_DivideByZero::NewInstance(@)",
    header: headerStandarddividebyzero.}
type
  StandardDivideByZerobaseType* = StandardNumericError

proc getTypeName*(): cstring {.importcpp: "Standard_DivideByZero::get_type_name(@)",
                            header: headerStandarddividebyzero.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_DivideByZero::get_type_descriptor(@)",
    header: headerStandarddividebyzero.}
proc dynamicType*(this: StandardDivideByZero): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandarddividebyzero.}