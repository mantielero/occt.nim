# /usr/include/opencascade/Standard_ConstructionError.hxx --> occt/standard/Standard_ConstructionError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardconstructionerror = "/usr/include/opencascade/Standard_ConstructionError.hxx"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_ConstructionError"
type
  HandleStandardConstructionError* = Handle[StandardConstructionError]
  StandardConstructionError* {.importcpp: "Standard_ConstructionError",
                              header: headerStandardconstructionerror, bycopy.} = object of StandardDomainError


proc constructStandardConstructionError*(): StandardConstructionError {.
    constructor, importcpp: "Standard_ConstructionError(@)",
    header: headerStandardconstructionerror.}
proc constructStandardConstructionError*(theMessage: StandardCString): StandardConstructionError {.
    constructor, importcpp: "Standard_ConstructionError(@)",
    header: headerStandardconstructionerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_ConstructionError::Raise(@)",
    header: headerStandardconstructionerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_ConstructionError::Raise(@)",
    header: headerStandardconstructionerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardConstructionError] {.
    importcpp: "Standard_ConstructionError::NewInstance(@)",
    header: headerStandardconstructionerror.}
type
  StandardConstructionErrorbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_ConstructionError::get_type_name(@)",
                            header: headerStandardconstructionerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_ConstructionError::get_type_descriptor(@)",
    header: headerStandardconstructionerror.}
proc dynamicType*(this: StandardConstructionError): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandardconstructionerror.}