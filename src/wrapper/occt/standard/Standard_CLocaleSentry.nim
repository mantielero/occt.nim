# /usr/include/opencascade/Standard_CLocaleSentry.hxx --> occt/standard/Standard_CLocaleSentry.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardclocalesentry = "/usr/include/opencascade/Standard_CLocaleSentry.hxx"
type
  StandardCLocaleSentry* {.importcpp: "Standard_CLocaleSentry",
                          header: headerStandardclocalesentry, bycopy.} = object


proc constructStandardCLocaleSentry*(): StandardCLocaleSentry {.constructor,
    importcpp: "Standard_CLocaleSentry(@)", header: headerStandardclocalesentry.}
proc destroyStandardCLocaleSentry*(this: var StandardCLocaleSentry) {.
    importcpp: "#.~Standard_CLocaleSentry()", header: headerStandardclocalesentry.}
type
  StandardCLocaleSentryclocaleT* = LocaleT

proc getCLocale*(): StandardCLocaleSentryclocaleT {.
    importcpp: "Standard_CLocaleSentry::GetCLocale(@)",
    header: headerStandardclocalesentry.}