{.push header: "GC_MakeLine.hxx".}


# Constructors and methods
proc constructor_GC_MakeLine*(A1: gp_Ax1): GC_MakeLine {.constructor,importcpp: "GC_MakeLine(@)".}
  ## Creates a line located in 3D space with the axis placement A1. The
  ## Location of A1 is the origin of the line.

proc constructor_GC_MakeLine*(L: gp_Lin): GC_MakeLine {.constructor,importcpp: "GC_MakeLine(@)".}
  ## Creates a line from a non persistent line from package gp.

proc constructor_GC_MakeLine*(P: gp_Pnt, V: gp_Dir): GC_MakeLine {.constructor,importcpp: "GC_MakeLine(@)".}
  ## P is the origin and V is the direction of the line.

proc constructor_GC_MakeLine*(Lin: gp_Lin, Point: gp_Pnt): GC_MakeLine {.constructor,importcpp: "GC_MakeLine(@)".}
  ## Make a Line from Geom <TheLin> parallel to another Lin <Lin> and
  ## passing through a Pnt <Point>.

proc constructor_GC_MakeLine*(P1: gp_Pnt, P2: gp_Pnt): GC_MakeLine {.constructor,importcpp: "GC_MakeLine(@)".}
  ## Make a Line from Geom <TheLin> passing through 2 Pnt <P1>,<P2>. It
  ## returns false if <p1> and <P2> are confused. Warning If the points P1
  ## and P2 are coincident (that is, when IsDone returns false), the Status
  ## function returns gce_ConfusedPoints.

proc ` new`*(this: var GC_MakeLine, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeLine, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeLine, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeLine, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeLine, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeLine, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeLine): Handle[Geom_Line]  {.importcpp: "Value".}
  ## Returns the constructed line. Exceptions StdFail_NotDone if no line is
  ## constructed.

{.pop.} # header: "GC_MakeLine.hxx
