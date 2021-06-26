{.push header: "GC_MakeHyperbola.hxx".}


# Constructors and methods
proc constructor_GC_MakeHyperbola*(H: gp_Hypr): GC_MakeHyperbola {.constructor,importcpp: "GC_MakeHyperbola(@)".}
  ## Creates an Hyperbola from a non persistent hyperbola from package gp
  ## by conversion.

proc constructor_GC_MakeHyperbola*(A2: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble): GC_MakeHyperbola {.constructor,importcpp: "GC_MakeHyperbola(@)".}
  ## Constructs a hyperbola centered on the origin of the coordinate system
  ## A2, with major and minor radii MajorRadius and MinorRadius, where: the
  ## plane of the hyperbola is defined by the "X Axis" and "Y Axis" of A2,
  ## - its major axis is the "X Axis" of A2.

proc constructor_GC_MakeHyperbola*(S1: gp_Pnt, S2: gp_Pnt, Center: gp_Pnt): GC_MakeHyperbola {.constructor,importcpp: "GC_MakeHyperbola(@)".}
  ## Constructs a hyperbola centered on the point Center, where - the plane
  ## of the hyperbola is defined by Center, S1 and S2, - its major axis is
  ## defined by Center and S1, - its major radius is the distance between
  ## Center and S1, and - its minor radius is the distance between S2 and
  ## the major axis;

proc ` new`*(this: var GC_MakeHyperbola, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeHyperbola, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeHyperbola, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeHyperbola, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeHyperbola, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeHyperbola, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeHyperbola): Handle[Geom_Hyperbola]  {.importcpp: "Value".}
  ## Returns the constructed hyperbola. Exceptions StdFail_NotDone if no
  ## hyperbola is constructed.

{.pop.} # header: "GC_MakeHyperbola.hxx
