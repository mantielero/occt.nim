import topods_types


{.push header: "TopoDS_Wire.hxx".}

proc constructTopoDS_Wire*(): TopoDS_Wire {.constructor,importcpp: "TopoDS_Wire::TopoDS_Wire".}
    ## Undefined Wire.

proc ` new`*(this: var TopoDS_Wire, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Wire, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Wire, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Wire, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Wire, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Wire, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_Wire.hxx"
