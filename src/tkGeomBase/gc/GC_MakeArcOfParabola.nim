{.push header: "GC_MakeArcOfParabola.hxx".}


# Constructors and methods
proc constructor_GC_MakeArcOfParabola*(Parab: gp_Parab, Alpha1: cdouble, Alpha2: cdouble, Sense: bool): GC_MakeArcOfParabola {.constructor,importcpp: "GC_MakeArcOfParabola(@)".}
  ## Creates an arc of Parabola (TrimmedCurve from Geom) from a Parabola
  ## between two parameters Alpha1 and Alpha2 (given in radians).

proc constructor_GC_MakeArcOfParabola*(Parab: gp_Parab, P: gp_Pnt, Alpha: cdouble, Sense: bool): GC_MakeArcOfParabola {.constructor,importcpp: "GC_MakeArcOfParabola(@)".}
  ## Creates an arc of Parabola (TrimmedCurve from Geom) from a Parabola
  ## between point <P> and the parameter Alpha (given in radians).

proc constructor_GC_MakeArcOfParabola*(Parab: gp_Parab, P1: gp_Pnt, P2: gp_Pnt, Sense: bool): GC_MakeArcOfParabola {.constructor,importcpp: "GC_MakeArcOfParabola(@)".}
  ## Creates an arc of Parabola (TrimmedCurve from Geom) from a Parabola
  ## between two points P1 and P2.

proc ` new`*(this: var GC_MakeArcOfParabola, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfParabola, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeArcOfParabola, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeArcOfParabola, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeArcOfParabola, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfParabola, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeArcOfParabola): Handle[Geom_TrimmedCurve]  {.importcpp: "Value".}
  ## Returns the constructed arc of parabola.

{.pop.} # header: "GC_MakeArcOfParabola.hxx
