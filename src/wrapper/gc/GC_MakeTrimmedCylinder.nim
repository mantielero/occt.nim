{.push header: "GC_MakeTrimmedCylinder.hxx".}


# Constructors and methods
proc constructor_GC_MakeTrimmedCylinder*(P1: gp_Pnt, P2: gp_Pnt, P3: gp_Pnt): GC_MakeTrimmedCylinder {.constructor,importcpp: "GC_MakeTrimmedCylinder(@)".}
  ## Make a cylindricalSurface <Cyl> from Geom Its axis is is <P1P2> and
  ## its radius is the distance between <P3> and <P1P2>. The height is the
  ## distance between P1 and P2.

proc constructor_GC_MakeTrimmedCylinder*(Circ: gp_Circ, Height: Standard_Real): GC_MakeTrimmedCylinder {.constructor,importcpp: "GC_MakeTrimmedCylinder(@)".}
  ## Make a cylindricalSurface <Cyl> from gp by its base <Circ>. Its axis
  ## is the normal to the plane defined bi <Circ>. <Height> can be greater
  ## than zero or lower than zero. In the first case the V parametric
  ## direction of the result has the same orientation as the normal to
  ## <Circ>. In the other case it has the opposite orientation.

proc constructor_GC_MakeTrimmedCylinder*(A1: gp_Ax1, Radius: Standard_Real, Height: Standard_Real): GC_MakeTrimmedCylinder {.constructor,importcpp: "GC_MakeTrimmedCylinder(@)".}
  ## Make a cylindricalSurface <Cyl> from gp by its axis <A1> and its
  ## radius <Radius>. It returns NullObject if <Radius> is lower than zero.
  ## <Height> can be greater than zero or lower than zero. In the first
  ## case the V parametric direction of the result has the same orientation
  ## as <A1>. In the other case it has the opposite orientation.

proc ` new`*(this: var GC_MakeTrimmedCylinder, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeTrimmedCylinder, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeTrimmedCylinder, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeTrimmedCylinder, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeTrimmedCylinder, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeTrimmedCylinder, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeTrimmedCylinder): Handle[Geom_RectangularTrimmedSurface]  {.importcpp: "Value".}
  ## Returns the constructed trimmed cylinder. Exceptions StdFail_NotDone
  ## if no trimmed cylinder is constructed.

{.pop.} # header: "GC_MakeTrimmedCylinder.hxx
