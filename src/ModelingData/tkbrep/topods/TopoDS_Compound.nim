import topods_types


{.push header: "TopoDS_Compound.hxx".}

proc constructTopoDS_Compound*(): TopoDS_Compound {.constructor,importcpp: "TopoDS_Compound::TopoDS_Compound".}
    ## Constructs an Undefined Compound.

proc ` new`*(this: var TopoDS_Compound, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Compound, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Compound, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Compound, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Compound, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Compound, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_Compound.hxx"
