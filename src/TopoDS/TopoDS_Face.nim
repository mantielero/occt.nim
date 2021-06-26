{.push header: "TopoDS_Face.hxx".}


# Constructors and methods
proc constructor_TopoDS_Face*(): TopoDS_Face {.constructor,importcpp: "TopoDS_Face".}
  ## Undefined Face.

proc ` new`*(this: var TopoDS_Face, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Face, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Face, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Face, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Face, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Face, pointer, pointer)  {.importcpp: "#  delete #".}

{.pop.} # header: "TopoDS_Face.hxx
