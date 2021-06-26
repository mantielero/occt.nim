# /usr/include/opencascade/Standard_MMgrRaw.hxx --> occt/standard/Standard_MMgrRaw.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardmmgrraw = "/usr/include/opencascade/Standard_MMgrRaw.hxx"
type
  StandardMMgrRaw* {.importcpp: "Standard_MMgrRaw", header: headerStandardmmgrraw,
                    bycopy.} = object of StandardMMgrRoot


proc constructStandardMMgrRaw*(aClear: StandardBoolean = false): StandardMMgrRaw {.
    constructor, importcpp: "Standard_MMgrRaw(@)", header: headerStandardmmgrraw.}
proc allocate*(this: var StandardMMgrRaw; aSize: StandardSize): StandardAddress {.
    importcpp: "Allocate", header: headerStandardmmgrraw.}
proc reallocate*(this: var StandardMMgrRaw; thePtr: StandardAddress;
                theSize: StandardSize): StandardAddress {.importcpp: "Reallocate",
    header: headerStandardmmgrraw.}
proc free*(this: var StandardMMgrRaw; thePtr: StandardAddress) {.importcpp: "Free",
    header: headerStandardmmgrraw.}