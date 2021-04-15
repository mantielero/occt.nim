import topods_types


{.push header: "TopoDS_Face.hxx".}

proc constructTopoDS_Face*(): TopoDS_Face {.constructor,importcpp: "TopoDS_Face::TopoDS_Face".}
    ## Undefined Face.

proc ` new`*(this: var TopoDS_Face, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Face, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDS_Face, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDS_Face, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDS_Face, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDS_Face, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

{.pop.}  # header: "TopoDS_Face.hxx"
