# /usr/include/opencascade/Standard_NumericError.hxx --> occt/standard/Standard_NumericError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnumericerror = "/usr/include/opencascade/Standard_NumericError.hxx"
discard "forward decl of Standard_NumericError"
discard "forward decl of Standard_NumericError"
type
  HandleStandardNumericError* = Handle[StandardNumericError]
  StandardNumericError* {.importcpp: "Standard_NumericError",
                         header: headerStandardnumericerror, bycopy.} = object of StandardFailure


proc constructStandardNumericError*(): StandardNumericError {.constructor,
    importcpp: "Standard_NumericError(@)", header: headerStandardnumericerror.}
proc constructStandardNumericError*(theMessage: StandardCString): StandardNumericError {.
    constructor, importcpp: "Standard_NumericError(@)",
    header: headerStandardnumericerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NumericError::Raise(@)",
    header: headerStandardnumericerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NumericError::Raise(@)",
    header: headerStandardnumericerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNumericError] {.
    importcpp: "Standard_NumericError::NewInstance(@)",
    header: headerStandardnumericerror.}
type
  StandardNumericErrorbaseType* = StandardFailure

proc getTypeName*(): cstring {.importcpp: "Standard_NumericError::get_type_name(@)",
                            header: headerStandardnumericerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NumericError::get_type_descriptor(@)",
    header: headerStandardnumericerror.}
proc dynamicType*(this: StandardNumericError): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardnumericerror.}