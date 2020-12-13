{.push header: "TopoDS_CompSolid.hxx".}


# Constructors and methods
proc constructor_TopoDS_CompSolid*(): TopoDS_CompSolid {.constructor,importcpp: "TopoDS_CompSolid".}
  ## Constructs an Undefined CompSolid.

proc ` new`*(this: var TopoDS_CompSolid, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_CompSolid, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_CompSolid, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_CompSolid, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_CompSolid, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_CompSolid, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_CompSolid.hxx
