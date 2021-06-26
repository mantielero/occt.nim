{.push header: "BRep_CurveOnClosedSurface.hxx".}


# Constructors and methods
proc constructor_BRep_CurveOnClosedSurface*(PC1: Handle[Geom2d_Curve], PC2: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location, C: GeomAbs_Shape): BRep_CurveOnClosedSurface {.constructor,importcpp: "BRep_CurveOnClosedSurface(@)".}

proc setUVPoints2*(this: var BRep_CurveOnClosedSurface, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "SetUVPoints2".}

proc uVPoints2*(this: BRep_CurveOnClosedSurface, P1: var gp_Pnt2d, P2: var gp_Pnt2d)  {.importcpp: "UVPoints2".}

proc isCurveOnClosedSurface*(this: BRep_CurveOnClosedSurface): Standard_Boolean  {.importcpp: "IsCurveOnClosedSurface".}
  ## Returns True.

proc isRegularity*(this: BRep_CurveOnClosedSurface): Standard_Boolean  {.importcpp: "IsRegularity".}
  ## Returns True

proc isRegularity*(this: BRep_CurveOnClosedSurface, S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location): Standard_Boolean  {.importcpp: "IsRegularity".}
  ## A curve on two surfaces (continuity).

proc pCurve2*(this: BRep_CurveOnClosedSurface): Handle[Geom2d_Curve]  {.importcpp: "PCurve2".}

proc surface2*(this: BRep_CurveOnClosedSurface): Handle[Geom_Surface]  {.importcpp: "Surface2".}
  ## Returns Surface()

proc location2*(this: BRep_CurveOnClosedSurface): TopLoc_Location  {.importcpp: "Location2".}
  ## Returns Location()

proc continuity*(this: BRep_CurveOnClosedSurface): GeomAbs_Shape  {.importcpp: "Continuity".}

proc continuity*(this: var BRep_CurveOnClosedSurface, C: GeomAbs_Shape)  {.importcpp: "Continuity".}

proc pCurve2*(this: var BRep_CurveOnClosedSurface, C: Handle[Geom2d_Curve])  {.importcpp: "PCurve2".}

proc copy*(this: BRep_CurveOnClosedSurface): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc update*(this: var BRep_CurveOnClosedSurface)  {.importcpp: "Update".}
  ## Recomputes any derived data after a modification. This is called when
  ## the range is modified.

proc get_type_name*(this: var BRep_CurveOnClosedSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_CurveOnClosedSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_CurveOnClosedSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_CurveOnClosedSurface.hxx
