import topods_types


{.push header: "TopoDS_CompSolid.hxx".}

proc constructTopoDS_CompSolid*(): TopoDS_CompSolid {.constructor,importcpp: "TopoDS_CompSolid::TopoDS_CompSolid".}
    ## Constructs an Undefined CompSolid.

proc ` new`*(this: var TopoDS_CompSolid, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_CompSolid, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_CompSolid, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_CompSolid, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_CompSolid, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_CompSolid, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_CompSolid.hxx"
