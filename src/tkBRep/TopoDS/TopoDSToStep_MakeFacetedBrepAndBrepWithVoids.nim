{.push header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeFacetedBrepAndBrepWithVoids*(S: TopoDS_Solid, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeFacetedBrepAndBrepWithVoids {.constructor,importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids(@)".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, pointer, pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeFacetedBrepAndBrepWithVoids): Handle[StepShape_FacetedBrepAndBrepWithVoids]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx
