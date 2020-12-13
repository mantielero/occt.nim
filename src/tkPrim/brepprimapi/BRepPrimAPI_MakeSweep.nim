{.push header: "BRepPrimAPI_MakeSweep.hxx".}


# Constructors and methods
#[
proc ` new`*(this: var BRepPrimAPI_MakeSweep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeSweep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakeSweep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakeSweep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakeSweep, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakeSweep, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc firstShape*(this: var BRepPrimAPI_MakeSweep): TopoDS_Shape  {.importcpp: "FirstShape".}
  ## Returns the TopoDS Shape of the bottom of the sweep.

proc lastShape*(this: var BRepPrimAPI_MakeSweep): TopoDS_Shape  {.importcpp: "LastShape".}
  ## Returns the TopoDS Shape of the top of the sweep.

{.pop.} # header: "BRepPrimAPI_MakeSweep.hxx
