{.push header: "TopoDS_Vertex.hxx".}


# Constructors and methods
proc constructor_TopoDS_Vertex*(): TopoDS_Vertex {.constructor,importcpp: "TopoDS_Vertex".}
  ## Undefined Vertex.

proc ` new`*(this: var TopoDS_Vertex, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Vertex, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Vertex, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Vertex, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Vertex, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Vertex, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_Vertex.hxx
