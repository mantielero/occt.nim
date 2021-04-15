import topods_types


{.push header: "TopoDS_Edge.hxx".}

proc constructTopoDS_Edge*(): TopoDS_Edge {.constructor,importcpp: "TopoDS_Edge::TopoDS_Edge".}
    ## Undefined Edge.

proc ` new`*(this: var TopoDS_Edge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Edge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Edge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Edge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Edge, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Edge, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_Edge.hxx"
