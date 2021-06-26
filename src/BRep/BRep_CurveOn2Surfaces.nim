{.push header: "BRep_CurveOn2Surfaces.hxx".}


# Constructors and methods
proc constructor_BRep_CurveOn2Surfaces*(S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location, C: GeomAbs_Shape): BRep_CurveOn2Surfaces {.constructor,importcpp: "BRep_CurveOn2Surfaces(@)".}

proc isRegularity*(this: BRep_CurveOn2Surfaces): Standard_Boolean  {.importcpp: "IsRegularity".}
  ## Returns True.

proc isRegularity*(this: BRep_CurveOn2Surfaces, S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location): Standard_Boolean  {.importcpp: "IsRegularity".}
  ## A curve on two surfaces (continuity).

proc d0*(this: BRep_CurveOn2Surfaces, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
  ## Raises an error.

proc surface*(this: BRep_CurveOn2Surfaces): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc surface2*(this: BRep_CurveOn2Surfaces): Handle[Geom_Surface]  {.importcpp: "Surface2".}

proc location2*(this: BRep_CurveOn2Surfaces): TopLoc_Location  {.importcpp: "Location2".}

proc continuity*(this: BRep_CurveOn2Surfaces): GeomAbs_Shape  {.importcpp: "Continuity".}

proc continuity*(this: var BRep_CurveOn2Surfaces, C: GeomAbs_Shape)  {.importcpp: "Continuity".}

proc copy*(this: BRep_CurveOn2Surfaces): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_CurveOn2Surfaces): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_CurveOn2Surfaces): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_CurveOn2Surfaces): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_CurveOn2Surfaces.hxx
