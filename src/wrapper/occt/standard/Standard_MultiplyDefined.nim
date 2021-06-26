# /usr/include/opencascade/Standard_MultiplyDefined.hxx --> occt/standard/Standard_MultiplyDefined.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardmultiplydefined = "/usr/include/opencascade/Standard_MultiplyDefined.hxx"
discard "forward decl of Standard_MultiplyDefined"
discard "forward decl of Standard_MultiplyDefined"
type
  HandleStandardMultiplyDefined* = Handle[StandardMultiplyDefined]
  StandardMultiplyDefined* {.importcpp: "Standard_MultiplyDefined",
                            header: headerStandardmultiplydefined, bycopy.} = object of StandardDomainError


proc constructStandardMultiplyDefined*(): StandardMultiplyDefined {.constructor,
    importcpp: "Standard_MultiplyDefined(@)",
    header: headerStandardmultiplydefined.}
proc constructStandardMultiplyDefined*(theMessage: StandardCString): StandardMultiplyDefined {.
    constructor, importcpp: "Standard_MultiplyDefined(@)",
    header: headerStandardmultiplydefined.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_MultiplyDefined::Raise(@)",
    header: headerStandardmultiplydefined.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_MultiplyDefined::Raise(@)",
    header: headerStandardmultiplydefined.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardMultiplyDefined] {.
    importcpp: "Standard_MultiplyDefined::NewInstance(@)",
    header: headerStandardmultiplydefined.}
type
  StandardMultiplyDefinedbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_MultiplyDefined::get_type_name(@)",
                            header: headerStandardmultiplydefined.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_MultiplyDefined::get_type_descriptor(@)",
    header: headerStandardmultiplydefined.}
proc dynamicType*(this: StandardMultiplyDefined): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandardmultiplydefined.}