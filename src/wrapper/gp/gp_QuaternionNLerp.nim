{.push header: "gp_QuaternionNLerp.hxx".}


# Constructors and methods
proc constructor_gp_QuaternionNLerp*(): gp_QuaternionNLerp {.constructor,importcpp: "gp_QuaternionNLerp".}
  ## Empty constructor,

proc constructor_gp_QuaternionNLerp*(theQStart: gp_Quaternion, theQEnd: gp_Quaternion): gp_QuaternionNLerp {.constructor,importcpp: "gp_QuaternionNLerp(@)".}
  ## Constructor with initialization.

proc Interpolate*(this: var gp_QuaternionNLerp, theQStart: gp_Quaternion, theQEnd: gp_Quaternion, theT: Standard_Real): gp_Quaternion  {.importcpp: "Interpolate".}
  ## Compute interpolated quaternion between two quaternions.

proc Init*(this: var gp_QuaternionNLerp, theQStart: gp_Quaternion, theQEnd: gp_Quaternion)  {.importcpp: "Init".}
  ## Initialize the tool with Start and End values.

proc InitFromUnit*(this: var gp_QuaternionNLerp, theQStart: gp_Quaternion, theQEnd: gp_Quaternion)  {.importcpp: "InitFromUnit".}
  ## Initialize the tool with Start and End unit quaternions.

proc Interpolate*(this: gp_QuaternionNLerp, theT: Standard_Real, theResultQ: var gp_Quaternion)  {.importcpp: "Interpolate".}
  ## Set interpolated quaternion for theT position (from 0.0 to 1.0)

{.pop.} # header: "gp_QuaternionNLerp.hxx
