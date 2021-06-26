# /usr/include/opencascade/Standard_Failure.hxx --> occt/standard/Standard_Failure.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardfailure = "/usr/include/opencascade/Standard_Failure.hxx"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Failure"
discard "forward decl of Standard_Failure"
type
  HandleStandardFailure* = Handle[StandardFailure]
  StandardFailure* {.importcpp: "Standard_Failure", header: headerStandardfailure,
                    bycopy.} = object of StandardTransient


proc constructStandardFailure*(): StandardFailure {.constructor,
    importcpp: "Standard_Failure(@)", header: headerStandardfailure.}
proc constructStandardFailure*(f: StandardFailure): StandardFailure {.constructor,
    importcpp: "Standard_Failure(@)", header: headerStandardfailure.}
proc constructStandardFailure*(aString: StandardCString): StandardFailure {.
    constructor, importcpp: "Standard_Failure(@)", header: headerStandardfailure.}
proc destroyStandardFailure*(this: var StandardFailure) {.
    importcpp: "#.~Standard_Failure()", header: headerStandardfailure.}
proc print*(this: StandardFailure; theStream: var StandardOStream) {.noSideEffect,
    importcpp: "Print", header: headerStandardfailure.}
proc getMessageString*(this: StandardFailure): StandardCString {.noSideEffect,
    importcpp: "GetMessageString", header: headerStandardfailure.}
proc setMessageString*(this: var StandardFailure; aMessage: StandardCString) {.
    importcpp: "SetMessageString", header: headerStandardfailure.}
proc reraise*(this: var StandardFailure) {.importcpp: "Reraise",
                                       header: headerStandardfailure.}
proc reraise*(this: var StandardFailure; aMessage: StandardCString) {.
    importcpp: "Reraise", header: headerStandardfailure.}
proc reraise*(this: var StandardFailure; aReason: StandardSStream) {.
    importcpp: "Reraise", header: headerStandardfailure.}
proc `raise`*(aMessage: StandardCString = "") {.
    importcpp: "Standard_Failure::Raise(@)", header: headerStandardfailure.}
proc `raise`*(aReason: StandardSStream) {.importcpp: "Standard_Failure::Raise(@)",
                                       header: headerStandardfailure.}
proc newInstance*(aMessage: StandardCString): Handle[StandardFailure] {.
    importcpp: "Standard_Failure::NewInstance(@)", header: headerStandardfailure.}
proc jump*(this: var StandardFailure) {.importcpp: "Jump",
                                    header: headerStandardfailure.}
## !!!Ignored construct:  ( ( deprecated ( This method is deprecated (not thread-safe), use standard C++ mechanism instead ) ) ) static opencascade :: handle < Standard_Failure > Caught ( ) ;
## Error: identifier expected, but got: (!!!

type
  StandardFailurebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Standard_Failure::get_type_name(@)",
                            header: headerStandardfailure.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Failure::get_type_descriptor(@)",
    header: headerStandardfailure.}
proc dynamicType*(this: StandardFailure): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardfailure.}
proc `<<`*(aStream: var StandardOStream; aFailure: Handle[StandardFailure]): var StandardOStream {.
    importcpp: "(# << #)", header: headerStandardfailure.}
proc `<<`*(aStream: var StandardOStream; aFailure: StandardFailure): var StandardOStream {.
    importcpp: "(# << #)", header: headerStandardfailure.}