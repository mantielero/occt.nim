# /usr/include/opencascade/Standard_NoMoreObject.hxx --> occt/standard/Standard_NoMoreObject.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardnomoreobject = "/usr/include/opencascade/Standard_NoMoreObject.hxx"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoMoreObject"
type
  HandleStandardNoMoreObject* = Handle[StandardNoMoreObject]
  StandardNoMoreObject* {.importcpp: "Standard_NoMoreObject",
                         header: headerStandardnomoreobject, bycopy.} = object of StandardDomainError


proc constructStandardNoMoreObject*(): StandardNoMoreObject {.constructor,
    importcpp: "Standard_NoMoreObject(@)", header: headerStandardnomoreobject.}
proc constructStandardNoMoreObject*(theMessage: StandardCString): StandardNoMoreObject {.
    constructor, importcpp: "Standard_NoMoreObject(@)",
    header: headerStandardnomoreobject.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_NoMoreObject::Raise(@)",
    header: headerStandardnomoreobject.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_NoMoreObject::Raise(@)",
    header: headerStandardnomoreobject.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardNoMoreObject] {.
    importcpp: "Standard_NoMoreObject::NewInstance(@)",
    header: headerStandardnomoreobject.}
type
  StandardNoMoreObjectbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_NoMoreObject::get_type_name(@)",
                            header: headerStandardnomoreobject.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_NoMoreObject::get_type_descriptor(@)",
    header: headerStandardnomoreobject.}
proc dynamicType*(this: StandardNoMoreObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardnomoreobject.}