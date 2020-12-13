{.push header: "GC_MakeConicalSurface.hxx".}


# Constructors and methods
proc constructor_GC_MakeConicalSurface*(A2: gp_Ax2, Ang: Standard_Real, Radius: Standard_Real): GC_MakeConicalSurface {.constructor,importcpp: "GC_MakeConicalSurface(@)".}
  ## A2 defines the local coordinate system of the conical surface. Ang is
  ## the conical surface semi-angle ]0, PI/2[. Radius is the radius of the
  ## circle Viso in the placement plane of the conical surface defined with
  ## "XAxis" and "YAxis". The "ZDirection" of A2 defines the direction of
  ## the surface's axis of symmetry. If the location point of A2 is the
  ## apex of the surface Radius = 0 . At the creation the parametrization
  ## of the surface is defined such that the normal Vector (N = D1U ^ D1V)
  ## is oriented towards the "outside region" of the surface. Status is
  ## "NegativeRadius" if Radius < 0.0 or "BadAngle" if Ang < Resolution
  ## from gp or Ang >= PI/ - Resolution

proc constructor_GC_MakeConicalSurface*(C: gp_Cone): GC_MakeConicalSurface {.constructor,importcpp: "GC_MakeConicalSurface(@)".}
  ## Creates a ConicalSurface from a non persistent Cone from package gp.

proc constructor_GC_MakeConicalSurface*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt, P4: gp_Pnt): GC_MakeConicalSurface {.constructor,importcpp: "GC_MakeConicalSurface(@)".}
  ## Make a ConicalSurface from Geom <TheCone> passing through 3 Pnt
  ## <P1>,<P2>,<P3>. Its axis is <P1P2> and the radius of its base is the
  ## distance between <P3> and <P1P2>. The distance between <P4> and <P1P2>
  ## is the radius of the section passing through <P4>. An error iss raised
  ## if <P1>,<P2>,<P3>,<P4> are colinear or if <P3P4> is perpendicular to
  ## <P1P2> or <P3P4> is colinear to <P1P2>.

proc constructor_GC_MakeConicalSurface*(P1: gp_Pnt, P2: gp_Pnt, R1: Standard_Real, R2: Standard_Real): GC_MakeConicalSurface {.constructor,importcpp: "GC_MakeConicalSurface(@)".}
  ## Make a ConicalSurface with two points and two radius. The axis of the
  ## solution is the line passing through <P1> and <P2>. <R1> is the radius
  ## of the section passing through <P1> and <R2> the radius of the section
  ## passing through <P2>.

proc ` new`*(this: var GC_MakeConicalSurface, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeConicalSurface, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeConicalSurface, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeConicalSurface, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeConicalSurface, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeConicalSurface, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeConicalSurface): Handle[Geom_ConicalSurface]  {.importcpp: "Value".}
  ## Returns the constructed cone. Exceptions StdFail_NotDone if no cone is
  ## constructed.

{.pop.} # header: "GC_MakeConicalSurface.hxx
