{.push header: "GC_MakeScale.hxx".}


# Constructors and methods
proc constructor_GC_MakeScale*(Point: gp_Pnt, Scale: cdouble): GC_MakeScale {.constructor,importcpp: "GC_MakeScale(@)".}
  ## Constructs a scaling transformation with - Point as the center of the
  ## transformation, and - Scale as the scale factor.

proc ` new`*(this: var GC_MakeScale, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeScale, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeScale, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeScale, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeScale, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeScale, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeScale): Handle[Geom_Transformation]  {.importcpp: "Value".}
  ## Returns the constructed transformation.

{.pop.} # header: "GC_MakeScale.hxx
