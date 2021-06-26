# /usr/include/opencascade/Standard_DimensionError.hxx --> occt/standard/Standard_DimensionError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarddimensionerror = "/usr/include/opencascade/Standard_DimensionError.hxx"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DimensionError"
type
  HandleStandardDimensionError* = Handle[StandardDimensionError]
  StandardDimensionError* {.importcpp: "Standard_DimensionError",
                           header: headerStandarddimensionerror, bycopy.} = object of StandardDomainError


proc constructStandardDimensionError*(): StandardDimensionError {.constructor,
    importcpp: "Standard_DimensionError(@)", header: headerStandarddimensionerror.}
proc constructStandardDimensionError*(theMessage: StandardCString): StandardDimensionError {.
    constructor, importcpp: "Standard_DimensionError(@)",
    header: headerStandarddimensionerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_DimensionError::Raise(@)",
    header: headerStandarddimensionerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_DimensionError::Raise(@)",
    header: headerStandarddimensionerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardDimensionError] {.
    importcpp: "Standard_DimensionError::NewInstance(@)",
    header: headerStandarddimensionerror.}
type
  StandardDimensionErrorbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_DimensionError::get_type_name(@)",
                            header: headerStandarddimensionerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_DimensionError::get_type_descriptor(@)",
    header: headerStandarddimensionerror.}
proc dynamicType*(this: StandardDimensionError): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandarddimensionerror.}