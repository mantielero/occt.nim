# /usr/include/opencascade/Standard_LicenseNotFound.hxx --> occt/standard/Standard_LicenseNotFound.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardlicensenotfound = "/usr/include/opencascade/Standard_LicenseNotFound.hxx"
discard "forward decl of Standard_LicenseNotFound"
discard "forward decl of Standard_LicenseNotFound"
type
  HandleStandardLicenseNotFound* = Handle[StandardLicenseNotFound]
  StandardLicenseNotFound* {.importcpp: "Standard_LicenseNotFound",
                            header: headerStandardlicensenotfound, bycopy.} = object of StandardLicenseError


proc constructStandardLicenseNotFound*(): StandardLicenseNotFound {.constructor,
    importcpp: "Standard_LicenseNotFound(@)",
    header: headerStandardlicensenotfound.}
proc constructStandardLicenseNotFound*(theMessage: StandardCString): StandardLicenseNotFound {.
    constructor, importcpp: "Standard_LicenseNotFound(@)",
    header: headerStandardlicensenotfound.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_LicenseNotFound::Raise(@)",
    header: headerStandardlicensenotfound.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_LicenseNotFound::Raise(@)",
    header: headerStandardlicensenotfound.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardLicenseNotFound] {.
    importcpp: "Standard_LicenseNotFound::NewInstance(@)",
    header: headerStandardlicensenotfound.}
type
  StandardLicenseNotFoundbaseType* = StandardLicenseError

proc getTypeName*(): cstring {.importcpp: "Standard_LicenseNotFound::get_type_name(@)",
                            header: headerStandardlicensenotfound.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_LicenseNotFound::get_type_descriptor(@)",
    header: headerStandardlicensenotfound.}
proc dynamicType*(this: StandardLicenseNotFound): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandardlicensenotfound.}