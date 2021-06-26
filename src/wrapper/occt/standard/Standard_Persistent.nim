# /usr/include/opencascade/Standard_Persistent.hxx --> occt/standard/Standard_Persistent.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardpersistent = "/usr/include/opencascade/Standard_Persistent.hxx"
type
  StandardPersistent* {.importcpp: "Standard_Persistent",
                       header: headerStandardpersistent, bycopy.} = object of StandardTransient


proc `new`*(this: var StandardPersistent; theSize: csize_t): pointer {.
    importcpp: "Standard_Persistent::operator new",
    header: headerStandardpersistent.}
proc `delete`*(this: var StandardPersistent; theAddress: pointer) {.
    importcpp: "Standard_Persistent::operator delete",
    header: headerStandardpersistent.}
proc `new[]`*(this: var StandardPersistent; theSize: csize_t): pointer {.
    importcpp: "Standard_Persistent::operator new[]",
    header: headerStandardpersistent.}
proc `delete[]`*(this: var StandardPersistent; theAddress: pointer) {.
    importcpp: "Standard_Persistent::operator delete[]",
    header: headerStandardpersistent.}
proc `new`*(this: var StandardPersistent; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Standard_Persistent::operator new",
    header: headerStandardpersistent.}
proc `delete`*(this: var StandardPersistent; a2: pointer; a3: pointer) {.
    importcpp: "Standard_Persistent::operator delete",
    header: headerStandardpersistent.}
proc constructStandardPersistent*(): StandardPersistent {.constructor,
    importcpp: "Standard_Persistent(@)", header: headerStandardpersistent.}
type
  StandardPersistentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Standard_Persistent::get_type_name(@)",
                            header: headerStandardpersistent.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Persistent::get_type_descriptor(@)",
    header: headerStandardpersistent.}
proc dynamicType*(this: StandardPersistent): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardpersistent.}
proc typeNum*(this: var StandardPersistent): var StandardInteger {.
    importcpp: "TypeNum", header: headerStandardpersistent.}