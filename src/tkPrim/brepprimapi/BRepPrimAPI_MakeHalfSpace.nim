{.push header: "BRepPrimAPI_MakeHalfSpace.hxx".}


# Constructors and methods
proc MakeHalfSpace*(Face: TopoDS_Face, RefPnt: gp_Pnt): BRepPrimAPI_MakeHalfSpace {.constructor,importcpp: "BRepPrimAPI_MakeHalfSpace(@)".}
  ## Make a HalfSpace defined with a Face and a Point.

proc MakeHalfSpace*(Shell: TopoDS_Shell, RefPnt: gp_Pnt): BRepPrimAPI_MakeHalfSpace {.constructor,importcpp: "BRepPrimAPI_MakeHalfSpace(@)".}
  ## Make a HalfSpace defined with a Shell and a Point.

#[
proc ` new`*(this: var BRepPrimAPI_MakeHalfSpace, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeHalfSpace, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeHalfSpace, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeHalfSpace, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeHalfSpace, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeHalfSpace, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc solid*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid  {.importcpp: "Solid".}
  ## Returns the constructed half-space as a solid.

{.pop.} # header: "BRepPrimAPI_MakeHalfSpace.hxx
