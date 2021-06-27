{.push header: "TopoDS_Wire.hxx".}


# Constructors and methods
proc constructor_TopoDS_Wire*(): TopoDS_Wire {.constructor,importcpp: "TopoDS_Wire".}
  ## Undefined Wire.

#[
proc ` new`*(this: var TopoDS_Wire, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Wire, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Wire, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Wire, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Wire, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Wire, pointer, pointer)  {.importcpp: "#  delete #".}
]#
{.pop.} # header: "TopoDS_Wire.hxx
