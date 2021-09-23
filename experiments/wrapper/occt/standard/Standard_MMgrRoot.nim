# /usr/include/opencascade/Standard_MMgrRoot.hxx --> occt/standard/Standard_MMgrRoot.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardmmgrroot = "/usr/include/opencascade/Standard_MMgrRoot.hxx"
type
  StandardMMgrRoot* {.importcpp: "Standard_MMgrRoot",
                     header: headerStandardmmgrroot, bycopy.} = object


proc destroyStandardMMgrRoot*(this: var StandardMMgrRoot) {.
    importcpp: "#.~Standard_MMgrRoot()", header: headerStandardmmgrroot.}
proc allocate*(this: var StandardMMgrRoot; theSize: StandardSize): StandardAddress {.
    importcpp: "Allocate", header: headerStandardmmgrroot.}
proc reallocate*(this: var StandardMMgrRoot; thePtr: StandardAddress;
                theSize: StandardSize): StandardAddress {.importcpp: "Reallocate",
    header: headerStandardmmgrroot.}
proc free*(this: var StandardMMgrRoot; thePtr: StandardAddress) {.importcpp: "Free",
    header: headerStandardmmgrroot.}
proc purge*(this: var StandardMMgrRoot; isDestroyed: StandardBoolean = false): StandardInteger {.
    importcpp: "Purge", header: headerStandardmmgrroot.}