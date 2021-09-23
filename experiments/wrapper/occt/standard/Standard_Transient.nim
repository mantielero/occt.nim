# /usr/include/opencascade/Standard_Transient.hxx --> occt/standard/Standard_Transient.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardtransient = "/usr/include/opencascade/Standard_Transient.hxx"
discard "forward decl of Standard_Type"
discard "forward decl of handle"
type
  StandardTransient* {.importcpp: "Standard_Transient",
                      header: headerStandardtransient, bycopy.} = object


proc `new`*(this: var StandardTransient; theSize: csize_t): pointer {.
    importcpp: "Standard_Transient::operator new", header: headerStandardtransient.}
proc `delete`*(this: var StandardTransient; theAddress: pointer) {.
    importcpp: "Standard_Transient::operator delete",
    header: headerStandardtransient.}
proc `new[]`*(this: var StandardTransient; theSize: csize_t): pointer {.
    importcpp: "Standard_Transient::operator new[]",
    header: headerStandardtransient.}
proc `delete[]`*(this: var StandardTransient; theAddress: pointer) {.
    importcpp: "Standard_Transient::operator delete[]",
    header: headerStandardtransient.}
proc `new`*(this: var StandardTransient; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Standard_Transient::operator new", header: headerStandardtransient.}
proc `delete`*(this: var StandardTransient; a2: pointer; a3: pointer) {.
    importcpp: "Standard_Transient::operator delete",
    header: headerStandardtransient.}
proc constructStandardTransient*(): StandardTransient {.constructor,
    importcpp: "Standard_Transient(@)", header: headerStandardtransient.}
proc constructStandardTransient*(a1: StandardTransient): StandardTransient {.
    constructor, importcpp: "Standard_Transient(@)",
    header: headerStandardtransient.}
proc destroyStandardTransient*(this: var StandardTransient) {.
    importcpp: "#.~Standard_Transient()", header: headerStandardtransient.}
proc delete*(this: StandardTransient) {.noSideEffect, importcpp: "Delete",
                                     header: headerStandardtransient.}
type
  StandardTransientbaseType* = void

proc getTypeName*(): cstring {.importcpp: "Standard_Transient::get_type_name(@)",
                            header: headerStandardtransient.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Transient::get_type_descriptor(@)",
    header: headerStandardtransient.}
proc dynamicType*(this: StandardTransient): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardtransient.}
proc isInstance*(this: StandardTransient; theType: Handle[StandardType]): StandardBoolean {.
    noSideEffect, importcpp: "IsInstance", header: headerStandardtransient.}
proc isInstance*(this: StandardTransient; theTypeName: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "IsInstance", header: headerStandardtransient.}
proc isKind*(this: StandardTransient; theType: Handle[StandardType]): StandardBoolean {.
    noSideEffect, importcpp: "IsKind", header: headerStandardtransient.}
proc isKind*(this: StandardTransient; theTypeName: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "IsKind", header: headerStandardtransient.}
proc this*(this: StandardTransient): ptr StandardTransient {.noSideEffect,
    importcpp: "This", header: headerStandardtransient.}
proc getRefCount*(this: StandardTransient): StandardInteger {.noSideEffect,
    importcpp: "GetRefCount", header: headerStandardtransient.}
proc incrementRefCounter*(this: StandardTransient) {.noSideEffect,
    importcpp: "IncrementRefCounter", header: headerStandardtransient.}
proc decrementRefCounter*(this: StandardTransient): StandardInteger {.noSideEffect,
    importcpp: "DecrementRefCounter", header: headerStandardtransient.}
proc hashCode*(theTransientObject: ptr StandardTransient;
              theUpperBound: StandardInteger): StandardInteger =
  discard

type
  HandleStandardTransient* = Handle[StandardTransient]
