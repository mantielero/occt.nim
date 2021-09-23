# /usr/include/opencascade/Standard_ImmutableObject.hxx --> occt/standard/Standard_ImmutableObject.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardimmutableobject = "/usr/include/opencascade/Standard_ImmutableObject.hxx"
discard "forward decl of Standard_ImmutableObject"
discard "forward decl of Standard_ImmutableObject"
type
  HandleStandardImmutableObject* = Handle[StandardImmutableObject]
  StandardImmutableObject* {.importcpp: "Standard_ImmutableObject",
                            header: headerStandardimmutableobject, bycopy.} = object of StandardDomainError


proc constructStandardImmutableObject*(): StandardImmutableObject {.constructor,
    importcpp: "Standard_ImmutableObject(@)",
    header: headerStandardimmutableobject.}
proc constructStandardImmutableObject*(theMessage: StandardCString): StandardImmutableObject {.
    constructor, importcpp: "Standard_ImmutableObject(@)",
    header: headerStandardimmutableobject.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_ImmutableObject::Raise(@)",
    header: headerStandardimmutableobject.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_ImmutableObject::Raise(@)",
    header: headerStandardimmutableobject.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardImmutableObject] {.
    importcpp: "Standard_ImmutableObject::NewInstance(@)",
    header: headerStandardimmutableobject.}
type
  StandardImmutableObjectbaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "Standard_ImmutableObject::get_type_name(@)",
                            header: headerStandardimmutableobject.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_ImmutableObject::get_type_descriptor(@)",
    header: headerStandardimmutableobject.}
proc dynamicType*(this: StandardImmutableObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandardimmutableobject.}