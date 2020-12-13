{.push header: "GC_MakeRotation.hxx".}


# Constructors and methods
proc constructor_GC_MakeRotation*(Line: gp_Lin, Angle: Standard_Real): GC_MakeRotation {.constructor,importcpp: "GC_MakeRotation(@)".}
  ## Constructs a rotation through angle Angle about the axis defined by
  ## the line Line.

proc constructor_GC_MakeRotation*(Axis: gp_Ax1, Angle: Standard_Real): GC_MakeRotation {.constructor,importcpp: "GC_MakeRotation(@)".}
  ## Constructs a rotation through angle Angle about the axis defined by
  ## the axis Axis.

proc constructor_GC_MakeRotation*(Point: gp_Pnt, Direc: gp_Dir, Angle: Standard_Real): GC_MakeRotation {.constructor,importcpp: "GC_MakeRotation(@)".}
  ## Constructs a rotation through angle Angle about the axis defined by
  ## the point Point and the unit vector Direc.

proc ` new`*(this: var GC_MakeRotation, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeRotation, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeRotation, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeRotation, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeRotation, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeRotation, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeRotation): Handle[Geom_Transformation]  {.importcpp: "Value".}
  ## Returns the constructed transformation.

{.pop.} # header: "GC_MakeRotation.hxx
