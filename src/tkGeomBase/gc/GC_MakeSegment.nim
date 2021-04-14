{.push header: "GC_MakeSegment.hxx".}


# Constructors and methods
proc constructor_GC_MakeSegment*(P1: gp_Pnt, P2: gp_Pnt): GC_MakeSegment {.constructor,importcpp: "GC_MakeSegment(@)".}
  ## Make a segment of Line from the 2 points <P1> and <P2>. It returns
  ## NullObject if <P1> and <P2> are confused.

proc constructor_GC_MakeSegment*(Line: gp_Lin, U1: cdouble, U2: cdouble): GC_MakeSegment {.constructor,importcpp: "GC_MakeSegment(@)".}
  ## Make a segment of Line from the line <Line1> between the two
  ## parameters U1 and U2. It returns NullObject if <U1> is equal <U2>.

proc constructor_GC_MakeSegment*(Line: gp_Lin, Point: gp_Pnt, Ulast: cdouble): GC_MakeSegment {.constructor,importcpp: "GC_MakeSegment(@)".}
  ## Make a segment of Line from the line <Line1> between the point <Point>
  ## and the parameter Ulast. It returns NullObject if <U1> is equal <U2>.

proc constructor_GC_MakeSegment*(Line: gp_Lin, P1: gp_Pnt, P2: gp_Pnt): GC_MakeSegment {.constructor,importcpp: "GC_MakeSegment(@)".}
  ## Make a segment of Line from the line <Line1> between the two points
  ## <P1> and <P2>. It returns NullObject if <U1> is equal <U2>.

proc ` new`*(this: var GC_MakeSegment, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeSegment, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeSegment, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeSegment, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeSegment, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeSegment, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeSegment): Handle[Geom_TrimmedCurve]  {.importcpp: "Value".}
  ## Returns the constructed line segment.

{.pop.} # header: "GC_MakeSegment.hxx
