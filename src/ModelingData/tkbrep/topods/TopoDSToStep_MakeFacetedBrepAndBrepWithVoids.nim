import topods_types


type
  TopoDSToStep_MakeFacetedBrepAndBrepWithVoids* {.header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx", importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Solid from TopoDS
    ## and FacetedBrepAndBrepWithVoids from StepShape. All the topology and
    ## geometry comprised into the shell or the solid are taken into account
    ## and translated.



{.push header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}

proc constructTopoDSToStep_MakeFacetedBrepAndBrepWithVoids*(S: TopoDS_Solid, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeFacetedBrepAndBrepWithVoids {.constructor,importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::TopoDSToStep_MakeFacetedBrepAndBrepWithVoids(@)".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeFacetedBrepAndBrepWithVoids, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeFacetedBrepAndBrepWithVoids): handle[StepShape_FacetedBrepAndBrepWithVoids]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx"
