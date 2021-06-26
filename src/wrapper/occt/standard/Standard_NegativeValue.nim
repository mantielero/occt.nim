# /usr/include/opencascade/Standard_NegativeValue.hxx --> occt/standard/Standard_NegativeValue.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnegativevalue = "/usr/include/opencascade/Standard_NegativeValue.hxx"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NegativeValue"
type
  HandleStandardNegativeValue* = Handle[StandardNegativeValue]
  StandardNegativeValue* {.importcpp: "Standard_NegativeValue",
                          header: headerStandardnegativevalue, bycopy.} = object of StandardRangeError


proc constructStandardNegativeValue*(): StandardNegativeValue {.constructor,
    importcpp: "Standard_NegativeValue(@)", header: headerStandardnegativevalue.}
proc constructStandardNegativeValue*(theMessage: StandardCString): StandardNegativeValue {.
    constructor, importcpp: "Standard_NegativeValue(@)",
    header: headerStandardnegativevalue.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NegativeValue::Raise(@)",
    header: headerStandardnegativevalue.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NegativeValue::Raise(@)",
    header: headerStandardnegativevalue.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNegativeValue] {.
    importcpp: "Standard_NegativeValue::NewInstance(@)",
    header: headerStandardnegativevalue.}
type
  StandardNegativeValuebaseType* = StandardRangeError

proc getTypeName*(): cstring {.importcpp: "Standard_NegativeValue::get_type_name(@)",
                            header: headerStandardnegativevalue.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NegativeValue::get_type_descriptor(@)",
    header: headerStandardnegativevalue.}
proc dynamicType*(this: StandardNegativeValue): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardnegativevalue.}