# /usr/include/opencascade/Standard_TypeMismatch.hxx --> occt/standard/Standard_TypeMismatch.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardtypemismatch = "/usr/include/opencascade/Standard_TypeMismatch.hxx"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Standard_TypeMismatch"
type
  HandleStandardTypeMismatch* = Handle[StandardTypeMismatch]
  StandardTypeMismatch* {.importcpp: "Standard_TypeMismatch",
                         header: headerStandardtypemismatch, bycopy.} = object of StandardDomainError


proc constructStandardTypeMismatch*(): StandardTypeMismatch {.constructor,
    importcpp: "Standard_TypeMismatch(@)", header: headerStandardtypemismatch.}
proc constructStandardTypeMismatch*(theMessage: StandardCString): StandardTypeMismatch {.
    constructor, importcpp: "Standard_TypeMismatch(@)",
    header: headerStandardtypemismatch.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_TypeMismatch::Raise(@)",
    header: headerStandardtypemismatch.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_TypeMismatch::Raise(@)",
    header: headerStandardtypemismatch.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardTypeMismatch] {.
    importcpp: "Standard_TypeMismatch::NewInstance(@)",
    header: headerStandardtypemismatch.}
type
  StandardTypeMismatchbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_TypeMismatch::get_type_name(@)",
                            header: headerStandardtypemismatch.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_TypeMismatch::get_type_descriptor(@)",
    header: headerStandardtypemismatch.}
proc dynamicType*(this: StandardTypeMismatch): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardtypemismatch.}