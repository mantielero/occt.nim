# /usr/include/opencascade/Standard_DomainError.hxx --> occt/standard/Standard_DomainError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarddomainerror = "/usr/include/opencascade/Standard_DomainError.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_DomainError"
type
  HandleStandardDomainError* = Handle[StandardDomainError]
  StandardDomainError* {.importcpp: "Standard_DomainError",
                        header: headerStandarddomainerror, bycopy.} = object of StandardFailure


proc constructStandardDomainError*(): StandardDomainError {.constructor,
    importcpp: "Standard_DomainError(@)", header: headerStandarddomainerror.}
proc constructStandardDomainError*(theMessage: StandardCString): StandardDomainError {.
    constructor, importcpp: "Standard_DomainError(@)",
    header: headerStandarddomainerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_DomainError::Raise(@)", header: headerStandarddomainerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_DomainError::Raise(@)", header: headerStandarddomainerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardDomainError] {.
    importcpp: "Standard_DomainError::NewInstance(@)",
    header: headerStandarddomainerror.}
type
  StandardDomainErrorbaseType* = StandardFailure

proc getTypeName*(): cstring {.importcpp: "Standard_DomainError::get_type_name(@)",
                            header: headerStandarddomainerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_DomainError::get_type_descriptor(@)",
    header: headerStandarddomainerror.}
proc dynamicType*(this: StandardDomainError): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandarddomainerror.}