{.push header: "BRep_Curve3D.hxx".}


# Constructors and methods
proc constructor_BRep_Curve3D*(C: Handle[Geom_Curve], L: TopLoc_Location): BRep_Curve3D {.constructor,importcpp: "BRep_Curve3D(@)".}

proc d0*(this: BRep_Curve3D, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
  ## Computes the point at parameter U.

proc isCurve3D*(this: BRep_Curve3D): Standard_Boolean  {.importcpp: "IsCurve3D".}
  ## Returns True.

proc curve3D*(this: BRep_Curve3D): Handle[Geom_Curve]  {.importcpp: "Curve3D".}

proc curve3D*(this: var BRep_Curve3D, C: Handle[Geom_Curve])  {.importcpp: "Curve3D".}

proc copy*(this: BRep_Curve3D): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_Curve3D): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_Curve3D): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_Curve3D): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_Curve3D.hxx
