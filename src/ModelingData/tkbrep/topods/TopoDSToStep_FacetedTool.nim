import topods_types


type
  TopoDSToStep_FacetedTool* {.header: "TopoDSToStep_FacetedTool.hxx", importcpp: "TopoDSToStep_FacetedTool", byref.} = object
    ## This Tool Class provides Information about Faceted Shapes to be mapped
    ## to STEP.



{.push header: "TopoDSToStep_FacetedTool.hxx".}

proc ` new`*(this: var TopoDSToStep_FacetedTool, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_FacetedTool, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_FacetedTool, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_FacetedTool, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_FacetedTool, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_FacetedTool, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc checkTopoDSShape*(this: var TopoDSToStep_FacetedTool, SH: TopoDS_Shape): TopoDSToStep_FacetedError  {.importcpp: "CheckTopoDSShape".}

{.pop.}  # header: "TopoDSToStep_FacetedTool.hxx"
