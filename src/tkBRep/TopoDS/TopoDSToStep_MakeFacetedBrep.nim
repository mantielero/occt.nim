{.push header: "TopoDSToStep_MakeFacetedBrep.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeFacetedBrep*(S: TopoDS_Shell, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeFacetedBrep {.constructor,importcpp: "TopoDSToStep_MakeFacetedBrep(@)".}

proc constructor_TopoDSToStep_MakeFacetedBrep*(S: TopoDS_Solid, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeFacetedBrep {.constructor,importcpp: "TopoDSToStep_MakeFacetedBrep(@)".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeFacetedBrep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeFacetedBrep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrep, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrep, pointer, pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeFacetedBrep): Handle[StepShape_FacetedBrep]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_MakeFacetedBrep.hxx
