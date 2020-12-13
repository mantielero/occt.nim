{.push header: "BRep_CurveOnSurface.hxx".}


# Constructors and methods
proc constructor_BRep_CurveOnSurface*(PC: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location): BRep_CurveOnSurface {.constructor,importcpp: "BRep_CurveOnSurface(@)".}

proc setUVPoints*(this: var BRep_CurveOnSurface, P1: gp_Pnt2d, P2: gp_Pnt2d)  {.importcpp: "SetUVPoints".}

proc uVPoints*(this: BRep_CurveOnSurface, P1: var gp_Pnt2d, P2: var gp_Pnt2d)  {.importcpp: "UVPoints".}

proc d0*(this: BRep_CurveOnSurface, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
  ## Computes the point at parameter U.

proc isCurveOnSurface*(this: BRep_CurveOnSurface): Standard_Boolean  {.importcpp: "IsCurveOnSurface".}
  ## Returns True.

proc isCurveOnSurface*(this: BRep_CurveOnSurface, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsCurveOnSurface".}
  ## A curve in the parametric space of a surface.

proc surface*(this: BRep_CurveOnSurface): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc pCurve*(this: BRep_CurveOnSurface): Handle[Geom2d_Curve]  {.importcpp: "PCurve".}

proc pCurve*(this: var BRep_CurveOnSurface, C: Handle[Geom2d_Curve])  {.importcpp: "PCurve".}

proc copy*(this: BRep_CurveOnSurface): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc update*(this: var BRep_CurveOnSurface)  {.importcpp: "Update".}
  ## Recomputes any derived data after a modification. This is called when
  ## the range is modified.

proc get_type_name*(this: var BRep_CurveOnSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_CurveOnSurface): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_CurveOnSurface): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_CurveOnSurface.hxx
