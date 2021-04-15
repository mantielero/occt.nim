import topods_types


{.push header: "TopoDS_Vertex.hxx".}

proc constructTopoDS_Vertex*(): TopoDS_Vertex {.constructor,importcpp: "TopoDS_Vertex::TopoDS_Vertex".}
    ## Undefined Vertex.

proc ` new`*(this: var TopoDS_Vertex, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Vertex, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Vertex, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Vertex, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Vertex, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Vertex, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_Vertex.hxx"
