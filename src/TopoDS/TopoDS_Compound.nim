{.push header: "TopoDS_Compound.hxx".}


# Constructors and methods
proc constructor_TopoDS_Compound*(): TopoDS_Compound {.constructor,importcpp: "TopoDS_Compound".}
  ## Constructs an Undefined Compound.

proc ` new`*(this: var TopoDS_Compound, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Compound, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Compound, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Compound, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Compound, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Compound, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_Compound.hxx
