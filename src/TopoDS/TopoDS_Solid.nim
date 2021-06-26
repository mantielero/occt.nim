{.push header: "TopoDS_Solid.hxx".}


# Constructors and methods
proc constructor_TopoDS_Solid*(): TopoDS_Solid {.constructor,importcpp: "TopoDS_Solid".}
  ## Constructs an Undefined Solid.

proc ` new`*(this: var TopoDS_Solid, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Solid, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Solid, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Solid, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Solid, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Solid, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_Solid.hxx
