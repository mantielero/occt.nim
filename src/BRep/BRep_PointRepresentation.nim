{.push header: "BRep_PointRepresentation.hxx".}


# Constructors and methods
proc constructor_BRep_PointRepresentation*(P: Standard_Real, L: TopLoc_Location): BRep_PointRepresentation {.constructor,importcpp: "BRep_PointRepresentation(@)".}

proc isPointOnCurve*(this: BRep_PointRepresentation): Standard_Boolean  {.importcpp: "IsPointOnCurve".}
  ## A point on a 3d curve.

proc isPointOnCurveOnSurface*(this: BRep_PointRepresentation): Standard_Boolean  {.importcpp: "IsPointOnCurveOnSurface".}
  ## A point on a 2d curve on a surface.

proc isPointOnSurface*(this: BRep_PointRepresentation): Standard_Boolean  {.importcpp: "IsPointOnSurface".}
  ## A point on a surface.

proc isPointOnCurve*(this: BRep_PointRepresentation, C: Handle[Geom_Curve], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPointOnCurve".}
  ## A point on the curve <C>.

proc isPointOnCurveOnSurface*(this: BRep_PointRepresentation, PC: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPointOnCurveOnSurface".}
  ## A point on the 2d curve <PC> on the surface <S>.

proc isPointOnSurface*(this: BRep_PointRepresentation, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPointOnSurface".}
  ## A point on the surface <S>.

proc location*(this: BRep_PointRepresentation): TopLoc_Location  {.importcpp: "Location".}

proc location*(this: var BRep_PointRepresentation, L: TopLoc_Location)  {.importcpp: "Location".}

proc parameter*(this: BRep_PointRepresentation): Standard_Real  {.importcpp: "Parameter".}

proc parameter*(this: var BRep_PointRepresentation, P: Standard_Real)  {.importcpp: "Parameter".}

proc parameter2*(this: BRep_PointRepresentation): Standard_Real  {.importcpp: "Parameter2".}

proc parameter2*(this: var BRep_PointRepresentation, P: Standard_Real)  {.importcpp: "Parameter2".}

proc curve*(this: BRep_PointRepresentation): Handle[Geom_Curve]  {.importcpp: "Curve".}

proc curve*(this: var BRep_PointRepresentation, C: Handle[Geom_Curve])  {.importcpp: "Curve".}

proc pCurve*(this: BRep_PointRepresentation): Handle[Geom2d_Curve]  {.importcpp: "PCurve".}

proc pCurve*(this: var BRep_PointRepresentation, C: Handle[Geom2d_Curve])  {.importcpp: "PCurve".}

proc surface*(this: BRep_PointRepresentation): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc surface*(this: var BRep_PointRepresentation, S: Handle[Geom_Surface])  {.importcpp: "Surface".}

proc get_type_name*(this: var BRep_PointRepresentation): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PointRepresentation): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PointRepresentation): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PointRepresentation.hxx
