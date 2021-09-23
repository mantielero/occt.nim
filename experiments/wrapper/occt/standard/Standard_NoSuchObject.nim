# /usr/include/opencascade/Standard_NoSuchObject.hxx --> occt/standard/Standard_NoSuchObject.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnosuchobject = "/usr/include/opencascade/Standard_NoSuchObject.hxx"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NoSuchObject"
type
  HandleStandardNoSuchObject* = Handle[StandardNoSuchObject]
  StandardNoSuchObject* {.importcpp: "Standard_NoSuchObject",
                         header: headerStandardnosuchobject, bycopy.} = object of StandardDomainError


proc constructStandardNoSuchObject*(): StandardNoSuchObject {.constructor,
    importcpp: "Standard_NoSuchObject(@)", header: headerStandardnosuchobject.}
proc constructStandardNoSuchObject*(theMessage: StandardCString): StandardNoSuchObject {.
    constructor, importcpp: "Standard_NoSuchObject(@)",
    header: headerStandardnosuchobject.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NoSuchObject::Raise(@)",
    header: headerStandardnosuchobject.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NoSuchObject::Raise(@)",
    header: headerStandardnosuchobject.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNoSuchObject] {.
    importcpp: "Standard_NoSuchObject::NewInstance(@)",
    header: headerStandardnosuchobject.}
type
  StandardNoSuchObjectbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_NoSuchObject::get_type_name(@)",
                            header: headerStandardnosuchobject.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NoSuchObject::get_type_descriptor(@)",
    header: headerStandardnosuchobject.}
proc dynamicType*(this: StandardNoSuchObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardnosuchobject.}