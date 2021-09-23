# /usr/include/opencascade/Standard_LicenseError.hxx --> occt/standard/Standard_LicenseError.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardlicenseerror = "/usr/include/opencascade/Standard_LicenseError.hxx"
discard "forward decl of Standard_LicenseError"
discard "forward decl of Standard_LicenseError"
type
  HandleStandardLicenseError* = Handle[StandardLicenseError]
  StandardLicenseError* {.importcpp: "Standard_LicenseError",
                         header: headerStandardlicenseerror, bycopy.} = object of StandardFailure


proc constructStandardLicenseError*(): StandardLicenseError {.constructor,
    importcpp: "Standard_LicenseError(@)", header: headerStandardlicenseerror.}
proc constructStandardLicenseError*(theMessage: StandardCString): StandardLicenseError {.
    constructor, importcpp: "Standard_LicenseError(@)",
    header: headerStandardlicenseerror.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_LicenseError::Raise(@)",
    header: headerStandardlicenseerror.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_LicenseError::Raise(@)",
    header: headerStandardlicenseerror.}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardLicenseError] {.
    importcpp: "Standard_LicenseError::NewInstance(@)",
    header: headerStandardlicenseerror.}
type
  StandardLicenseErrorbaseType* = StandardFailure

proc getTypeName*(): cstring {.importcpp: "Standard_LicenseError::get_type_name(@)",
                            header: headerStandardlicenseerror.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_LicenseError::get_type_descriptor(@)",
    header: headerStandardlicenseerror.}
proc dynamicType*(this: StandardLicenseError): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerStandardlicenseerror.}