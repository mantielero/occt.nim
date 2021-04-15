import topods_types


{.push header: "TopoDS_Shell.hxx".}

proc constructorTopoDS_Shell*(): TopoDS_Shell {.constructor,importcpp: "TopoDS_Shell::TopoDS_Shell".}
    ## Constructs an Undefined Shell.
#[
proc ` new`*(this: var TopoDS_Shell, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Shell, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Shell, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Shell, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Shell, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Shell, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}
]#
{.pop.}  # header: "TopoDS_Shell.hxx"
