{.push header: "TopoDS_Shell.hxx".}


# Constructors and methods
proc constructor_TopoDS_Shell*(): TopoDS_Shell {.constructor,importcpp: "TopoDS_Shell".}
  ## Constructs an Undefined Shell.

proc ` new`*(this: var TopoDS_Shell, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Shell, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Shell, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Shell, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Shell, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Shell, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_Shell.hxx
