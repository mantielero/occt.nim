import topods_types


type
  TopoDSToStep_MakeFacetedBrep* {.header: "TopoDSToStep_MakeFacetedBrep.hxx", importcpp: "TopoDSToStep_MakeFacetedBrep", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Shell or Solid from
    ## TopoDS and FacetedBrep from StepShape. All the topology and geometry
    ## comprised into the shell or the solid are taken into account and
    ## translated.



{.push header: "TopoDSToStep_MakeFacetedBrep.hxx".}

proc constructTopoDSToStep_MakeFacetedBrep*(S: TopoDS_Shell, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeFacetedBrep {.constructor,importcpp: "TopoDSToStep_MakeFacetedBrep::TopoDSToStep_MakeFacetedBrep(@)".}

proc constructTopoDSToStep_MakeFacetedBrep*(S: TopoDS_Solid, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeFacetedBrep {.constructor,importcpp: "TopoDSToStep_MakeFacetedBrep::TopoDSToStep_MakeFacetedBrep(@)".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeFacetedBrep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeFacetedBrep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrep, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrep, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeFacetedBrep): handle[StepShape_FacetedBrep]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_MakeFacetedBrep.hxx"
