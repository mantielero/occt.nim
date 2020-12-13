{.push header: "BRep_PolygonOnClosedSurface.hxx".}


# Constructors and methods
proc constructor_BRep_PolygonOnClosedSurface*(P1: Handle[Poly_Polygon2D], P2: Handle[Poly_Polygon2D], S: Handle[Geom_Surface], L: TopLoc_Location): BRep_PolygonOnClosedSurface {.constructor,importcpp: "BRep_PolygonOnClosedSurface(@)".}

proc isPolygonOnClosedSurface*(this: BRep_PolygonOnClosedSurface): Standard_Boolean  {.importcpp: "IsPolygonOnClosedSurface".}
  ## returns True.

proc polygon2*(this: BRep_PolygonOnClosedSurface): Handle[Poly_Polygon2D]  {.importcpp: "Polygon2".}

proc polygon2*(this: var BRep_PolygonOnClosedSurface, P: Handle[Poly_Polygon2D])  {.importcpp: "Polygon2".}

proc copy*(this: BRep_PolygonOnClosedSurface): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_PolygonOnClosedSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PolygonOnClosedSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PolygonOnClosedSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PolygonOnClosedSurface.hxx
