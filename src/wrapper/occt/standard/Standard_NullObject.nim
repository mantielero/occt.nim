# /usr/include/opencascade/Standard_NullObject.hxx --> occt/standard/Standard_NullObject.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnullobject = "/usr/include/opencascade/Standard_NullObject.hxx"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NullObject"
type
  HandleStandardNullObject* = Handle[StandardNullObject]
  StandardNullObject* {.importcpp: "Standard_NullObject",
                       header: headerStandardnullobject, bycopy.} = object of StandardDomainError


proc constructStandardNullObject*(): StandardNullObject {.constructor,
    importcpp: "Standard_NullObject(@)", header: headerStandardnullobject.}
proc constructStandardNullObject*(theMessage: StandardCString): StandardNullObject {.
    constructor, importcpp: "Standard_NullObject(@)",
    header: headerStandardnullobject.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NullObject::Raise(@)", header: headerStandardnullobject.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NullObject::Raise(@)", header: headerStandardnullobject.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNullObject] {.
    importcpp: "Standard_NullObject::NewInstance(@)",
    header: headerStandardnullobject.}
type
  StandardNullObjectbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_NullObject::get_type_name(@)",
                            header: headerStandardnullobject.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NullObject::get_type_descriptor(@)",
    header: headerStandardnullobject.}
proc dynamicType*(this: StandardNullObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardnullobject.}