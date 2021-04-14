{.push header: "GC_MakeArcOfCircle.hxx".}


# Constructors and methods
proc MakeArcOfCircle*(Circ: gp_Circ, Alpha1: cdouble, Alpha2: cdouble, Sense: bool): GC_MakeArcOfCircle {.constructor,importcpp: "GC_MakeArcOfCircle(@)".}
  ## Make an arc of circle (TrimmedCurve from Geom) from a circle between
  ## two angles Alpha1 and Alpha2 given in radiians.

proc MakeArcOfCircle*(Circ: gp_Circ, P: gp_Pnt, Alpha: cdouble, Sense: bool): GC_MakeArcOfCircle {.constructor,importcpp: "GC_MakeArcOfCircle(@)".}
  ## Make an arc of circle (TrimmedCurve from Geom) from a circle between
  ## point <P> and the angle Alpha given in radians.

proc MakeArcOfCircle*(Circ: gp_Circ, P1: gp_Pnt, P2: gp_Pnt, Sense: bool): GC_MakeArcOfCircle {.constructor,importcpp: "GC_MakeArcOfCircle(@)".}
  ## Make an arc of circle (TrimmedCurve from Geom) from a circle between
  ## two points P1 and P2.

proc MakeArcOfCircle*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt): GC_MakeArcOfCircle {.constructor,importcpp: "GC_MakeArcOfCircle(@)".}
  ## Make an arc of circle (TrimmedCurve from Geom) from three points
  ## P1,P2,P3 between two points P1 and P2.

proc MakeArcOfCircle*(P1: gp_Pnt, V: gp_Vec, P2: gp_Pnt): GC_MakeArcOfCircle {.constructor,importcpp: "GC_MakeArcOfCircle(@)".}
  ## Make an arc of circle (TrimmedCurve from Geom) from two points P1,P2
  ## and the tangente to the solution at the point P1. The orientation of
  ## the arc is: - the sense determined by the order of the points P1, P3
  ## and P2; - the sense defined by the vector V; or - for other syntaxes:
  ## - the sense of Circ if Sense is true, or - the opposite sense if Sense
  ## is false. Note: Alpha1, Alpha2 and Alpha are angle values, given in
  ## radians. Warning If an error occurs (that is, when IsDone returns
  ## false), the Status function returns: - gce_ConfusedPoints if: - any 2
  ## of the 3 points P1, P2 and P3 are coincident, or - P1 and P2 are
  ## coincident; or - gce_IntersectionError if: - P1, P2 and P3 are
  ## collinear and not coincident, or - the vector defined by the points P1
  ## and P2 is collinear with the vector V.
#[
proc ` new`*(this: var GC_MakeArcOfCircle, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfCircle, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeArcOfCircle, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeArcOfCircle, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeArcOfCircle, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeArcOfCircle, pointer, pointer)  {.importcpp: "` delete`".}
]#

#[
proc Value*(this: GC_MakeArcOfCircle): Handle[Geom_TrimmedCurve]  {.importcpp: "Value".}
  ## Returns the constructed arc of circle. Exceptions StdFail_NotDone if
  ## no arc of circle is constructed.
]#
{.pop.} # header: "GC_MakeArcOfCircle.hxx
