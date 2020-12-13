{.push header: "BRep_PolygonOnSurface.hxx".}


# Constructors and methods
proc constructor_BRep_PolygonOnSurface*(P: Handle[Poly_Polygon2D], S: Handle[Geom_Surface], L: TopLoc_Location): BRep_PolygonOnSurface {.constructor,importcpp: "BRep_PolygonOnSurface(@)".}

proc isPolygonOnSurface*(this: BRep_PolygonOnSurface): Standard_Boolean  {.importcpp: "IsPolygonOnSurface".}
  ## A 2D polygon representation in the parametric space of a surface.

proc isPolygonOnSurface*(this: BRep_PolygonOnSurface, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPolygonOnSurface".}
  ## A 2D polygon representation in the parametric space of a surface.

proc surface*(this: BRep_PolygonOnSurface): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc polygon*(this: BRep_PolygonOnSurface): Handle[Poly_Polygon2D]  {.importcpp: "Polygon".}

proc polygon*(this: var BRep_PolygonOnSurface, P: Handle[Poly_Polygon2D])  {.importcpp: "Polygon".}

proc copy*(this: BRep_PolygonOnSurface): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_PolygonOnSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PolygonOnSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PolygonOnSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PolygonOnSurface.hxx
