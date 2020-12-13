{.push header: "BRep_Polygon3D.hxx".}


# Constructors and methods
proc constructor_BRep_Polygon3D*(P: Handle[Poly_Polygon3D], L: TopLoc_Location): BRep_Polygon3D {.constructor,importcpp: "BRep_Polygon3D(@)".}

proc isPolygon3D*(this: BRep_Polygon3D): Standard_Boolean  {.importcpp: "IsPolygon3D".}
  ## Returns True.

proc polygon3D*(this: BRep_Polygon3D): Handle[Poly_Polygon3D]  {.importcpp: "Polygon3D".}

proc polygon3D*(this: var BRep_Polygon3D, P: Handle[Poly_Polygon3D])  {.importcpp: "Polygon3D".}

proc copy*(this: BRep_Polygon3D): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_Polygon3D): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_Polygon3D): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_Polygon3D): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_Polygon3D.hxx
