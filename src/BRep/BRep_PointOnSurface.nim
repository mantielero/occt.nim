{.push header: "BRep_PointOnSurface.hxx".}


# Constructors and methods
proc constructor_BRep_PointOnSurface*(P1: Standard_Real, P2: Standard_Real, S: Handle[Geom_Surface], L: TopLoc_Location): BRep_PointOnSurface {.constructor,importcpp: "BRep_PointOnSurface(@)".}

proc isPointOnSurface*(this: BRep_PointOnSurface): Standard_Boolean  {.importcpp: "IsPointOnSurface".}

proc isPointOnSurface*(this: BRep_PointOnSurface, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPointOnSurface".}

proc parameter2*(this: BRep_PointOnSurface): Standard_Real  {.importcpp: "Parameter2".}

proc parameter2*(this: var BRep_PointOnSurface, P: Standard_Real)  {.importcpp: "Parameter2".}

proc get_type_name*(this: var BRep_PointOnSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PointOnSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PointOnSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PointOnSurface.hxx
