{.push header: "Standard_Condition.hxx".}


# Constructors and methods
proc constructor_Standard_Condition*(theIsSet: bool): Standard_Condition {.constructor,importcpp: "Standard_Condition(@)".}
  ## Default constructor.

proc constructor_Standard_Condition*(theCopy: Standard_Condition): Standard_Condition {.constructor,importcpp: "Standard_Condition(@)".}
  ## This method should not be called (prohibited).

proc Set*(this: var Standard_Condition)  {.importcpp: "Set".}
  ## Set event into signaling state.

proc Reset*(this: var Standard_Condition)  {.importcpp: "Reset".}
  ## Reset event (unset signaling state)

proc Wait*(this: var Standard_Condition)  {.importcpp: "Wait".}
  ## Wait for Event (infinity).

proc Wait*(this: var Standard_Condition, theTimeMilliseconds: cint): bool  {.importcpp: "Wait".}
  ## Wait for signal requested time.

proc Check*(this: var Standard_Condition): bool  {.importcpp: "Check".}
  ## Do not wait for signal - just test it state.

proc CheckReset*(this: var Standard_Condition): bool  {.importcpp: "CheckReset".}
  ## Method perform two steps at-once - reset the event object and returns
  ## true if it was in signaling state.

proc `=`*(this: var Standard_Condition, theCopy: Standard_Condition): Standard_Condition  {.importcpp: "`=`".}
  ## This method should not be called (prohibited).

{.pop.} # header: "Standard_Condition.hxx
