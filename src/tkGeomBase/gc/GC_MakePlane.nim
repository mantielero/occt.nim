{.push header: "GC_MakePlane.hxx".}


# Constructors and methods
proc constructor_GC_MakePlane*(Pl: gp_Pln): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## Creates a plane from a non persistent plane from package gp.

proc constructor_GC_MakePlane*(P: gp_Pnt, V: gp_Dir): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## P is the "Location" point or origin of the plane. V is the direction
  ## normal to the plane.

proc constructor_GC_MakePlane*(A: cdouble, B: cdouble, C: cdouble, D: cdouble): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## Creates a plane from its cartesian equation : Ax + By + Cz + D = 0.0
  ## Status is "BadEquation" if Sqrt (A*A + B*B + C*C) <= Resolution from
  ## gp

proc constructor_GC_MakePlane*(Pln: gp_Pln, Point: gp_Pnt): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## Make a Plane from Geom <ThePlane> parallel to another Pln <Pln> and
  ## passing through a Pnt <Point>.

proc constructor_GC_MakePlane*(Pln: gp_Pln, Dist: cdouble): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## Make a Plane from Geom <ThePlane> parallel to another Pln <Pln> at the
  ## distance <Dist> which can be greater or lower than zero. In the first
  ## case the result is at the distance <Dist> to the plane <Pln> in the
  ## direction of the normal to <Pln>. Otherwize it is in the oposite
  ## direction.

proc constructor_GC_MakePlane*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## Make a Plane from Geom <ThePlane> passing through 3 Pnt
  ## <P1>,<P2>,<P3>. It returns false if <P1> <P2> <P3> are confused.

proc constructor_GC_MakePlane*(Axis: gp_Ax1): GC_MakePlane {.constructor,importcpp: "GC_MakePlane(@)".}
  ## Make a Plane passing through the location of <Axis>and normal to the
  ## Direction of <Axis>.

proc ` new`*(this: var GC_MakePlane, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakePlane, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakePlane, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakePlane, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakePlane, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakePlane, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakePlane): Handle[Geom_Plane]  {.importcpp: "Value".}
  ## Returns the constructed plane. Exceptions StdFail_NotDone if no plane
  ## is constructed.

{.pop.} # header: "GC_MakePlane.hxx
