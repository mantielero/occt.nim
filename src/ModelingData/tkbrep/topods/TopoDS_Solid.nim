import topods_types


{.push header: "TopoDS_Solid.hxx".}

proc constructTopoDS_Solid*(): TopoDS_Solid {.constructor,importcpp: "TopoDS_Solid::TopoDS_Solid".}
    ## Constructs an Undefined Solid.

proc ` new`*(this: var TopoDS_Solid, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Solid, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Solid, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Solid, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Solid, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Solid, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_Solid.hxx"
