# /usr/include/opencascade/Standard_ProgramError.hxx --> occt/standard/Standard_ProgramError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardprogramerror = "/usr/include/opencascade/Standard_ProgramError.hxx"
discard "forward decl of Standard_ProgramError"
discard "forward decl of Standard_ProgramError"
type
  HandleStandardProgramError* = Handle[StandardProgramError]
  StandardProgramError* {.importcpp: "Standard_ProgramError",
                         header: headerStandardprogramerror, bycopy.} = object of StandardFailure


proc constructStandardProgramError*(): StandardProgramError {.constructor,
    importcpp: "Standard_ProgramError(@)", header: headerStandardprogramerror.}
proc constructStandardProgramError*(theMessage: StandardCString): StandardProgramError {.
    constructor, importcpp: "Standard_ProgramError(@)",
    header: headerStandardprogramerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_ProgramError::Raise(@)",
    header: headerStandardprogramerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_ProgramError::Raise(@)",
    header: headerStandardprogramerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardProgramError] {.
    importcpp: "Standard_ProgramError::NewInstance(@)",
    header: headerStandardprogramerror.}
type
  StandardProgramErrorbaseType* = StandardFailure

proc getTypeName*(): cstring {.importcpp: "Standard_ProgramError::get_type_name(@)",
                            header: headerStandardprogramerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_ProgramError::get_type_descriptor(@)",
    header: headerStandardprogramerror.}
proc dynamicType*(this: StandardProgramError): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardprogramerror.}