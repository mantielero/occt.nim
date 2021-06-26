{.push header: "gp_TrsfNLerp.hxx".}


# Constructors and methods
proc constructor_NCollection_Lerp*(): NCollection_Lerp {.constructor,importcpp: "NCollection_Lerp".}
  ## Empty constructor

proc constructor_NCollection_Lerp*(theStart: gp_Trsf, theEnd: gp_Trsf): NCollection_Lerp {.constructor,importcpp: "NCollection_Lerp(@)".}
  ## Main constructor.

proc Init*(this: var NCollection_Lerp, theStart: gp_Trsf, theEnd: gp_Trsf)  {.importcpp: "Init".}
  ## Initialize values.

proc Interpolate*(this: NCollection_Lerp, theT: cdouble, theResult: var gp_Trsf)  {.importcpp: "Interpolate".}
  ## Compute interpolated value between two values.

{.pop.} # header: "gp_TrsfNLerp.hxx
