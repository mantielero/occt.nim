import topods_types


type
  TopoDSToStep_MakeBrepWithVoids* {.header: "TopoDSToStep_MakeBrepWithVoids.hxx", importcpp: "TopoDSToStep_MakeBrepWithVoids", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Solid from TopoDS
    ## and BrepWithVoids from StepShape. All the topology and geometry
    ## comprised into the shell or the solid are taken into account and
    ## translated.



{.push header: "TopoDSToStep_MakeBrepWithVoids.hxx".}

proc constructTopoDSToStep_MakeBrepWithVoids*(S: TopoDS_Solid, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeBrepWithVoids {.constructor,importcpp: "TopoDSToStep_MakeBrepWithVoids::TopoDSToStep_MakeBrepWithVoids(@)".}

proc ` new`*(this: var TopoDSToStep_MakeBrepWithVoids, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeBrepWithVoids, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeBrepWithVoids, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeBrepWithVoids, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeBrepWithVoids, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeBrepWithVoids): handle[StepShape_BrepWithVoids]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_MakeBrepWithVoids.hxx"
