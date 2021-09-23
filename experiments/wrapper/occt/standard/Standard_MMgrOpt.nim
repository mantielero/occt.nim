# /usr/include/opencascade/Standard_MMgrOpt.hxx --> occt/standard/Standard_MMgrOpt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardmmgropt = "/usr/include/opencascade/Standard_MMgrOpt.hxx"
type
  StandardMMgrOpt* {.importcpp: "Standard_MMgrOpt", header: headerStandardmmgropt,
                    bycopy.} = object of StandardMMgrRoot


proc constructStandardMMgrOpt*(aClear: StandardBoolean = true;
                              aMMap: StandardBoolean = true;
                              aCellSize: StandardSize = 200;
                              aNbPages: StandardInteger = 10000;
                              aThreshold: StandardSize = 40000): StandardMMgrOpt {.
    constructor, importcpp: "Standard_MMgrOpt(@)", header: headerStandardmmgropt.}
proc destroyStandardMMgrOpt*(this: var StandardMMgrOpt) {.
    importcpp: "#.~Standard_MMgrOpt()", header: headerStandardmmgropt.}
proc allocate*(this: var StandardMMgrOpt; aSize: StandardSize): StandardAddress {.
    importcpp: "Allocate", header: headerStandardmmgropt.}
proc reallocate*(this: var StandardMMgrOpt; thePtr: StandardAddress;
                theSize: StandardSize): StandardAddress {.importcpp: "Reallocate",
    header: headerStandardmmgropt.}
proc free*(this: var StandardMMgrOpt; thePtr: StandardAddress) {.importcpp: "Free",
    header: headerStandardmmgropt.}
proc purge*(this: var StandardMMgrOpt; isDestroyed: StandardBoolean): StandardInteger {.
    importcpp: "Purge", header: headerStandardmmgropt.}
type
  StandardMMgrOptTPCallBackFunc* = proc (theIsAlloc: StandardBoolean;
                                      theStorage: StandardAddress;
                                      theRoundSize: StandardSize;
                                      theSize: StandardSize)

proc setCallBackFunction*(pFunc: StandardMMgrOptTPCallBackFunc) {.
    importcpp: "Standard_MMgrOpt::SetCallBackFunction(@)",
    header: headerStandardmmgropt.}