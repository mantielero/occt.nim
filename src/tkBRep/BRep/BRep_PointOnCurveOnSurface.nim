{.push header: "BRep_PointOnCurveOnSurface.hxx".}


# Constructors and methods
proc constructor_BRep_PointOnCurveOnSurface*(P: Standard_Real, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location): BRep_PointOnCurveOnSurface {.constructor,importcpp: "BRep_PointOnCurveOnSurface(@)".}

proc isPointOnCurveOnSurface*(this: BRep_PointOnCurveOnSurface): Standard_Boolean  {.importcpp: "IsPointOnCurveOnSurface".}
  ## Returns True

proc isPointOnCurveOnSurface*(this: BRep_PointOnCurveOnSurface, PC: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPointOnCurveOnSurface".}

proc pCurve*(this: BRep_PointOnCurveOnSurface): Handle[Geom2d_Curve]  {.importcpp: "PCurve".}

proc pCurve*(this: var BRep_PointOnCurveOnSurface, C: Handle[Geom2d_Curve])  {.importcpp: "PCurve".}

proc get_type_name*(this: var BRep_PointOnCurveOnSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PointOnCurveOnSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PointOnCurveOnSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PointOnCurveOnSurface.hxx
