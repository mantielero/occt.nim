{.push header: "GC_MakeTranslation.hxx".}


# Constructors and methods
proc constructor_GC_MakeTranslation*(Vect: gp_Vec): GC_MakeTranslation {.constructor,importcpp: "GC_MakeTranslation(@)".}
  ## Constructs a translation along the vector " Vect "

proc constructor_GC_MakeTranslation*(Point1: gp_Pnt, Point2: gp_Pnt): GC_MakeTranslation {.constructor,importcpp: "GC_MakeTranslation(@)".}
  ## Constructs a translation along the vector (Point1,Point2) defined from
  ## the point Point1 to the point Point2.

proc ` new`*(this: var GC_MakeTranslation, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeTranslation, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeTranslation, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeTranslation, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeTranslation, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeTranslation, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeTranslation): Handle[Geom_Transformation]  {.importcpp: "Value".}
  ## Returns the constructed transformation.

{.pop.} # header: "GC_MakeTranslation.hxx
