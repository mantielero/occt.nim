# /usr/include/opencascade/Standard_RangeError.hxx --> occt/standard/Standard_RangeError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardrangeerror = "/usr/include/opencascade/Standard_RangeError.hxx"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_RangeError"
type
  HandleStandardRangeError* = Handle[StandardRangeError]
  StandardRangeError* {.importcpp: "Standard_RangeError",
                       header: headerStandardrangeerror, bycopy.} = object of StandardDomainError


proc constructStandardRangeError*(): StandardRangeError {.constructor,
    importcpp: "Standard_RangeError(@)", header: headerStandardrangeerror.}
proc constructStandardRangeError*(theMessage: StandardCString): StandardRangeError {.
    constructor, importcpp: "Standard_RangeError(@)",
    header: headerStandardrangeerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_RangeError::Raise(@)", header: headerStandardrangeerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_RangeError::Raise(@)", header: headerStandardrangeerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardRangeError] {.
    importcpp: "Standard_RangeError::NewInstance(@)",
    header: headerStandardrangeerror.}
type
  StandardRangeErrorbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_RangeError::get_type_name(@)",
                            header: headerStandardrangeerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_RangeError::get_type_descriptor(@)",
    header: headerStandardrangeerror.}
proc dynamicType*(this: StandardRangeError): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardrangeerror.}