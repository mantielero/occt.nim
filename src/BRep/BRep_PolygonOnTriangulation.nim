{.push header: "BRep_PolygonOnTriangulation.hxx".}


# Constructors and methods
proc constructor_BRep_PolygonOnTriangulation*(P: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation], L: TopLoc_Location): BRep_PolygonOnTriangulation {.constructor,importcpp: "BRep_PolygonOnTriangulation(@)".}

proc isPolygonOnTriangulation*(this: BRep_PolygonOnTriangulation): Standard_Boolean  {.importcpp: "IsPolygonOnTriangulation".}
  ## returns True.

proc isPolygonOnTriangulation*(this: BRep_PolygonOnTriangulation, T: Handle[Poly_Triangulation], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPolygonOnTriangulation".}
  ## Is it a polygon in the definition of <T> with location <L>.

proc polygonOnTriangulation*(this: var BRep_PolygonOnTriangulation, P: Handle[Poly_PolygonOnTriangulation])  {.importcpp: "PolygonOnTriangulation".}
  ## returns True.

proc triangulation*(this: BRep_PolygonOnTriangulation): Handle[Poly_Triangulation]  {.importcpp: "Triangulation".}

proc polygonOnTriangulation*(this: BRep_PolygonOnTriangulation): Handle[Poly_PolygonOnTriangulation]  {.importcpp: "PolygonOnTriangulation".}

proc copy*(this: BRep_PolygonOnTriangulation): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_PolygonOnTriangulation): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PolygonOnTriangulation): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PolygonOnTriangulation): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PolygonOnTriangulation.hxx
