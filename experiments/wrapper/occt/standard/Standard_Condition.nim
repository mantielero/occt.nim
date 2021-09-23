# /usr/include/opencascade/Standard_Condition.hxx --> occt/standard/Standard_Condition.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardcondition = "/usr/include/opencascade/Standard_Condition.hxx"
type
  StandardCondition* {.importcpp: "Standard_Condition",
                      header: headerStandardcondition, bycopy.} = object


proc constructStandardCondition*(theIsSet: bool): StandardCondition {.constructor,
    importcpp: "Standard_Condition(@)", header: headerStandardcondition.}
proc destroyStandardCondition*(this: var StandardCondition) {.
    importcpp: "#.~Standard_Condition()", header: headerStandardcondition.}
proc set*(this: var StandardCondition) {.importcpp: "Set",
                                     header: headerStandardcondition.}
proc reset*(this: var StandardCondition) {.importcpp: "Reset",
                                       header: headerStandardcondition.}
proc wait*(this: var StandardCondition) {.importcpp: "Wait",
                                      header: headerStandardcondition.}
proc wait*(this: var StandardCondition; theTimeMilliseconds: cint): bool {.
    importcpp: "Wait", header: headerStandardcondition.}
proc check*(this: var StandardCondition): bool {.importcpp: "Check",
    header: headerStandardcondition.}
proc checkReset*(this: var StandardCondition): bool {.importcpp: "CheckReset",
    header: headerStandardcondition.}