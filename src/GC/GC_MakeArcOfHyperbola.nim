{.push header: "GC_MakeArcOfHyperbola.hxx".}


# Constructors and methods
proc constructor_GC_MakeArcOfHyperbola*(Hypr: gp_Hypr, Alpha1: cdouble, Alpha2: cdouble, Sense: bool): GC_MakeArcOfHyperbola {.constructor,importcpp: "GC_MakeArcOfHyperbola(@)".}
  ## Creates an arc of Hyperbola (TrimmedCurve from Geom) from a Hyperbola
  ## between two parameters Alpha1 and Alpha2 (given in radians).

proc constructor_GC_MakeArcOfHyperbola*(Hypr: gp_Hypr, P: gp_Pnt, Alpha: cdouble, Sense: bool): GC_MakeArcOfHyperbola {.constructor,importcpp: "GC_MakeArcOfHyperbola(@)".}
  ## Creates an arc of Hyperbola (TrimmedCurve from Geom) from a Hyperbola
  ## between point <P> and the parameter Alpha (given in radians).

proc constructor_GC_MakeArcOfHyperbola*(Hypr: gp_Hypr, P1: gp_Pnt, P2: gp_Pnt, Sense: bool): GC_MakeArcOfHyperbola {.constructor,importcpp: "GC_MakeArcOfHyperbola(@)".}
  ## Creates an arc of Hyperbola (TrimmedCurve from Geom) from a Hyperbola
  ## between two points P1 and P2. The orientation of the arc of hyperbola
  ## is: - the sense of Hypr if Sense is true, or - the opposite sense if
  ## Sense is false.

proc ` new`*(this: var GC_MakeArcOfHyperbola, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfHyperbola, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeArcOfHyperbola, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeArcOfHyperbola, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeArcOfHyperbola, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfHyperbola, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeArcOfHyperbola): Handle[Geom_TrimmedCurve]  {.importcpp: "Value".}
  ## Returns the constructed arc of hyperbola.

{.pop.} # header: "GC_MakeArcOfHyperbola.hxx
