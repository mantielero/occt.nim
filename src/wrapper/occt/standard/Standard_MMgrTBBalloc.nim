# /usr/include/opencascade/Standard_MMgrTBBalloc.hxx --> occt/standard/Standard_MMgrTBBalloc.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardmmgrtbballoc = "/usr/include/opencascade/Standard_MMgrTBBalloc.hxx"
type
  StandardMMgrTBBalloc* {.importcpp: "Standard_MMgrTBBalloc",
                         header: headerStandardmmgrtbballoc, bycopy.} = object of StandardMMgrRoot


proc constructStandardMMgrTBBalloc*(aClear: StandardBoolean = false): StandardMMgrTBBalloc {.
    constructor, importcpp: "Standard_MMgrTBBalloc(@)",
    header: headerStandardmmgrtbballoc.}
proc allocate*(this: var StandardMMgrTBBalloc; aSize: StandardSize): StandardAddress {.
    importcpp: "Allocate", header: headerStandardmmgrtbballoc.}
proc reallocate*(this: var StandardMMgrTBBalloc; thePtr: StandardAddress;
                theSize: StandardSize): StandardAddress {.importcpp: "Reallocate",
    header: headerStandardmmgrtbballoc.}
proc free*(this: var StandardMMgrTBBalloc; thePtr: StandardAddress) {.
    importcpp: "Free", header: headerStandardmmgrtbballoc.}