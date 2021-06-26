# /usr/include/opencascade/Standard_NullValue.hxx --> occt/standard/Standard_NullValue.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnullvalue = "/usr/include/opencascade/Standard_NullValue.hxx"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_NullValue"
type
  HandleStandardNullValue* = Handle[StandardNullValue]
  StandardNullValue* {.importcpp: "Standard_NullValue",
                      header: headerStandardnullvalue, bycopy.} = object of StandardRangeError


proc constructStandardNullValue*(): StandardNullValue {.constructor,
    importcpp: "Standard_NullValue(@)", header: headerStandardnullvalue.}
proc constructStandardNullValue*(theMessage: StandardCString): StandardNullValue {.
    constructor, importcpp: "Standard_NullValue(@)",
    header: headerStandardnullvalue.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NullValue::Raise(@)", header: headerStandardnullvalue.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NullValue::Raise(@)", header: headerStandardnullvalue.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNullValue] {.
    importcpp: "Standard_NullValue::NewInstance(@)",
    header: headerStandardnullvalue.}
type
  StandardNullValuebaseType* = StandardRangeError

proc getTypeName*(): cstring {.importcpp: "Standard_NullValue::get_type_name(@)",
                            header: headerStandardnullvalue.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NullValue::get_type_descriptor(@)",
    header: headerStandardnullvalue.}
proc dynamicType*(this: StandardNullValue): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardnullvalue.}