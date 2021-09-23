# /usr/include/opencascade/Standard_OutOfMemory.hxx --> occt/standard/Standard_OutOfMemory.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardoutofmemory = "/usr/include/opencascade/Standard_OutOfMemory.hxx"
discard "forward decl of Standard_OutOfMemory"
discard "forward decl of Standard_OutOfMemory"
type
  HandleStandardOutOfMemory* = Handle[StandardOutOfMemory]
  StandardOutOfMemory* {.importcpp: "Standard_OutOfMemory",
                        header: headerStandardoutofmemory, bycopy.} = object of StandardProgramError


proc constructStandardOutOfMemory*(theMessage: StandardCString = 0): StandardOutOfMemory {.
    constructor, importcpp: "Standard_OutOfMemory(@)",
    header: headerStandardoutofmemory.}
proc getMessageString*(this: StandardOutOfMemory): StandardCString {.noSideEffect,
    importcpp: "GetMessageString", header: headerStandardoutofmemory.}
proc setMessageString*(this: var StandardOutOfMemory; aMessage: StandardCString) {.
    importcpp: "SetMessageString", header: headerStandardoutofmemory.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_OutOfMemory::Raise(@)", header: headerStandardoutofmemory.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_OutOfMemory::Raise(@)", header: headerStandardoutofmemory.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardOutOfMemory] {.
    importcpp: "Standard_OutOfMemory::NewInstance(@)",
    header: headerStandardoutofmemory.}
type
  StandardOutOfMemorybaseType* = StandardProgramError

proc getTypeName*(): cstring {.importcpp: "Standard_OutOfMemory::get_type_name(@)",
                            header: headerStandardoutofmemory.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_OutOfMemory::get_type_descriptor(@)",
    header: headerStandardoutofmemory.}
proc dynamicType*(this: StandardOutOfMemory): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardoutofmemory.}