{.push header: "BRep_PointsOnSurface.hxx".}


# Constructors and methods
proc constructor_BRep_PointsOnSurface*(P: Standard_Real, S: Handle[Geom_Surface], L: TopLoc_Location): BRep_PointsOnSurface {.constructor,importcpp: "BRep_PointsOnSurface(@)".}

proc surface*(this: BRep_PointsOnSurface): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc surface*(this: var BRep_PointsOnSurface, S: Handle[Geom_Surface])  {.importcpp: "Surface".}

proc get_type_name*(this: var BRep_PointsOnSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PointsOnSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PointsOnSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PointsOnSurface.hxx
