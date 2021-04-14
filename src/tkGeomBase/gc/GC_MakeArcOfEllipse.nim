{.push header: "GC_MakeArcOfEllipse.hxx".}


# Constructors and methods
proc constructor_GC_MakeArcOfEllipse*(Elips: gp_Elips, Alpha1: cdouble, Alpha2: cdouble, Sense: bool): GC_MakeArcOfEllipse {.constructor,importcpp: "GC_MakeArcOfEllipse(@)".}
  ## Constructs an arc of Ellipse (TrimmedCurve from Geom) from a Ellipse
  ## between two parameters Alpha1 and Alpha2.

proc constructor_GC_MakeArcOfEllipse*(Elips: gp_Elips, P: gp_Pnt, Alpha: cdouble, Sense: bool): GC_MakeArcOfEllipse {.constructor,importcpp: "GC_MakeArcOfEllipse(@)".}
  ## Constructs an arc of Ellipse (TrimmedCurve from Geom) from a Ellipse
  ## between point <P> and the angle Alpha given in radians.

proc constructor_GC_MakeArcOfEllipse*(Elips: gp_Elips, P1: gp_Pnt, P2: gp_Pnt, Sense: bool): GC_MakeArcOfEllipse {.constructor,importcpp: "GC_MakeArcOfEllipse(@)".}
  ## Constructs an arc of Ellipse (TrimmedCurve from Geom) from a Ellipse
  ## between two points P1 and P2. The orientation of the arc of ellipse
  ## is: - the sense of Elips if Sense is true, or - the opposite sense if
  ## Sense is false. Notes: - Alpha1, Alpha2 and Alpha are angle values,
  ## given in radians. - IsDone always returns true.

proc ` new`*(this: var GC_MakeArcOfEllipse, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfEllipse, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeArcOfEllipse, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeArcOfEllipse, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeArcOfEllipse, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfEllipse, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeArcOfEllipse): Handle[Geom_TrimmedCurve]  {.importcpp: "Value".}
  ## Returns the constructed arc of ellipse.

{.pop.} # header: "GC_MakeArcOfEllipse.hxx
