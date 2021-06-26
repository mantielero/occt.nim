{.push header: "BRep_GCurve.hxx".}


# Constructors and methods
proc constructor_BRep_GCurve*(L: TopLoc_Location, First: Standard_Real, Last: Standard_Real): BRep_GCurve {.constructor,importcpp: "BRep_GCurve(@)".}

proc setRange*(this: var BRep_GCurve, First: Standard_Real, Last: Standard_Real)  {.importcpp: "SetRange".}

proc range*(this: BRep_GCurve, First: var Standard_Real, Last: var Standard_Real)  {.importcpp: "Range".}

proc first*(this: BRep_GCurve): Standard_Real  {.importcpp: "First".}

proc last*(this: BRep_GCurve): Standard_Real  {.importcpp: "Last".}

proc first*(this: var BRep_GCurve, F: Standard_Real)  {.importcpp: "First".}

proc last*(this: var BRep_GCurve, L: Standard_Real)  {.importcpp: "Last".}

proc d0*(this: BRep_GCurve, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
  ## Computes the point at parameter U.

proc update*(this: var BRep_GCurve)  {.importcpp: "Update".}
  ## Recomputes any derived data after a modification. This is called when
  ## the range is modified.

proc get_type_name*(this: var BRep_GCurve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_GCurve): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_GCurve): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_GCurve.hxx
