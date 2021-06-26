{.push header: "BRep_PolygonOnClosedTriangulation.hxx".}


# Constructors and methods
proc constructor_BRep_PolygonOnClosedTriangulation*(P1: Handle[Poly_PolygonOnTriangulation], P2: Handle[Poly_PolygonOnTriangulation], Tr: Handle[Poly_Triangulation], L: TopLoc_Location): BRep_PolygonOnClosedTriangulation {.constructor,importcpp: "BRep_PolygonOnClosedTriangulation(@)".}

proc isPolygonOnClosedTriangulation*(this: BRep_PolygonOnClosedTriangulation): Standard_Boolean  {.importcpp: "IsPolygonOnClosedTriangulation".}
  ## Returns True.

proc polygonOnTriangulation2*(this: var BRep_PolygonOnClosedTriangulation, P2: Handle[Poly_PolygonOnTriangulation])  {.importcpp: "PolygonOnTriangulation2".}

proc polygonOnTriangulation2*(this: BRep_PolygonOnClosedTriangulation): Handle[Poly_PolygonOnTriangulation]  {.importcpp: "PolygonOnTriangulation2".}

proc copy*(this: BRep_PolygonOnClosedTriangulation): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_PolygonOnClosedTriangulation): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_PolygonOnClosedTriangulation): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_PolygonOnClosedTriangulation): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_PolygonOnClosedTriangulation.hxx
