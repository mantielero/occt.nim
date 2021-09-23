# /usr/include/opencascade/Standard_DimensionMismatch.hxx --> occt/standard/Standard_DimensionMismatch.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarddimensionmismatch = "/usr/include/opencascade/Standard_DimensionMismatch.hxx"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_DimensionMismatch"
type
  HandleStandardDimensionMismatch* = Handle[StandardDimensionMismatch]
  StandardDimensionMismatch* {.importcpp: "Standard_DimensionMismatch",
                              header: headerStandarddimensionmismatch, bycopy.} = object of StandardDimensionError


proc constructStandardDimensionMismatch*(): StandardDimensionMismatch {.
    constructor, importcpp: "Standard_DimensionMismatch(@)",
    header: headerStandarddimensionmismatch.}
proc constructStandardDimensionMismatch*(theMessage: StandardCString): StandardDimensionMismatch {.
    constructor, importcpp: "Standard_DimensionMismatch(@)",
    header: headerStandarddimensionmismatch.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_DimensionMismatch::Raise(@)",
    header: headerStandarddimensionmismatch.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_DimensionMismatch::Raise(@)",
    header: headerStandarddimensionmismatch.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardDimensionMismatch] {.
    importcpp: "Standard_DimensionMismatch::NewInstance(@)",
    header: headerStandarddimensionmismatch.}
type
  StandardDimensionMismatchbaseType* = StandardDimensionError

proc getTypeName*(): cstring {.importcpp: "Standard_DimensionMismatch::get_type_name(@)",
                            header: headerStandarddimensionmismatch.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_DimensionMismatch::get_type_descriptor(@)",
    header: headerStandarddimensionmismatch.}
proc dynamicType*(this: StandardDimensionMismatch): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandarddimensionmismatch.}