# /usr/include/opencascade/Standard_TooManyUsers.hxx --> occt/standard/Standard_TooManyUsers.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardtoomanyusers = "/usr/include/opencascade/Standard_TooManyUsers.hxx"
discard "forward decl of Standard_TooManyUsers"
discard "forward decl of Standard_TooManyUsers"
type
  HandleStandardTooManyUsers* = Handle[StandardTooManyUsers]
  StandardTooManyUsers* {.importcpp: "Standard_TooManyUsers",
                         header: headerStandardtoomanyusers, bycopy.} = object of StandardLicenseError


proc constructStandardTooManyUsers*(): StandardTooManyUsers {.constructor,
    importcpp: "Standard_TooManyUsers(@)", header: headerStandardtoomanyusers.}
proc constructStandardTooManyUsers*(theMessage: StandardCString): StandardTooManyUsers {.
    constructor, importcpp: "Standard_TooManyUsers(@)",
    header: headerStandardtoomanyusers.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_TooManyUsers::Raise(@)",
    header: headerStandardtoomanyusers.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_TooManyUsers::Raise(@)",
    header: headerStandardtoomanyusers.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardTooManyUsers] {.
    importcpp: "Standard_TooManyUsers::NewInstance(@)",
    header: headerStandardtoomanyusers.}
type
  StandardTooManyUsersbaseType* = StandardLicenseError

proc getTypeName*(): cstring {.importcpp: "Standard_TooManyUsers::get_type_name(@)",
                            header: headerStandardtoomanyusers.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_TooManyUsers::get_type_descriptor(@)",
    header: headerStandardtoomanyusers.}
proc dynamicType*(this: StandardTooManyUsers): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardtoomanyusers.}