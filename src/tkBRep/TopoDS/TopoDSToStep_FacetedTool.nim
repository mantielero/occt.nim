{.push header: "TopoDSToStep_FacetedTool.hxx".}


# Constructors and methods
proc ` new`*(this: var TopoDSToStep_FacetedTool, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_FacetedTool, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_FacetedTool, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_FacetedTool, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_FacetedTool, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_FacetedTool, pointer, pointer)  {.importcpp: "#  delete #".}

proc checkTopoDSShape*(this: var TopoDSToStep_FacetedTool, SH: TopoDS_Shape): TopoDSToStep_FacetedError  {.importcpp: "CheckTopoDSShape".}

{.pop.} # header: "TopoDSToStep_FacetedTool.hxx
