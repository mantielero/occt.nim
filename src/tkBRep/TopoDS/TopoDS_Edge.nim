{.push header: "TopoDS_Edge.hxx".}


# Constructors and methods
proc constructor_TopoDS_Edge*(): TopoDS_Edge {.constructor,importcpp: "TopoDS_Edge".}
  ## Undefined Edge.

proc ` new`*(this: var TopoDS_Edge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Edge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Edge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Edge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Edge, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Edge, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_Edge.hxx
