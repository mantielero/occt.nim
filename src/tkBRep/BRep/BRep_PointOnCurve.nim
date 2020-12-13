{.push header: "BRep_PointOnCurve.hxx".}


# Constructors and methods
proc constructor_BRep_PointOnCurve*(P: Standard_Real, C: Handle[Geom_Curve], L: TopLoc_Location): BRep_PointOnCurve {.constructor,importcpp: "BRep_PointOnCurve(@)".}

proc isPointOnCurve*(this: BRep_PointOnCurve): Standard_Boolean  {.importcpp: "IsPointOnCurve".}
  ## Returns True

proc isPointOnCurve*(this: BRep_PointOnCurve, C: Handle[Geom_Curve], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPointOnCurve".}

proc curve*(this: BRep_PointOnCurve): Handle[Geom_Curve]  {.importcpp: "Curve".}

proc curve*(this: var BRep_PointOnCurve, C: Handle[Geom_Curve])  {.importcpp: "Curve".}

proc get_type_name*(this: var BRep_PointOnCurve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PointOnCurve): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PointOnCurve): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PointOnCurve.hxx
