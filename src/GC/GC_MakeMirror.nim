{.push header: "GC_MakeMirror.hxx".}


# Constructors and methods
proc constructor_GC_MakeMirror*(Point: gp_Pnt): GC_MakeMirror {.constructor,importcpp: "GC_MakeMirror(@)".}

proc constructor_GC_MakeMirror*(Axis: gp_Ax1): GC_MakeMirror {.constructor,importcpp: "GC_MakeMirror(@)".}

proc constructor_GC_MakeMirror*(Line: gp_Lin): GC_MakeMirror {.constructor,importcpp: "GC_MakeMirror(@)".}

proc constructor_GC_MakeMirror*(Point: gp_Pnt, Direc: gp_Dir): GC_MakeMirror {.constructor,importcpp: "GC_MakeMirror(@)".}
  ## Make a symetry transformation af axis defined by <Point> and <Direc>.

proc constructor_GC_MakeMirror*(Plane: gp_Pln): GC_MakeMirror {.constructor,importcpp: "GC_MakeMirror(@)".}
  ## Make a symetry transformation of plane <Plane>.

proc constructor_GC_MakeMirror*(Plane: gp_Ax2): GC_MakeMirror {.constructor,importcpp: "GC_MakeMirror(@)".}
  ## Make a symetry transformation of plane <Plane>.

proc ` new`*(this: var GC_MakeMirror, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeMirror, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var GC_MakeMirror, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var GC_MakeMirror, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var GC_MakeMirror, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var GC_MakeMirror, pointer, pointer)  {.importcpp: "` delete`".}

proc Value*(this: GC_MakeMirror): Handle[Geom_Transformation]  {.importcpp: "Value".}
  ## Returns the constructed transformation.

{.pop.} # header: "GC_MakeMirror.hxx
