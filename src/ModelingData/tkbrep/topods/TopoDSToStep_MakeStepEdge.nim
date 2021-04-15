import topods_types


type
  TopoDSToStep_MakeStepEdge* {.header: "TopoDSToStep_MakeStepEdge.hxx", importcpp: "TopoDSToStep_MakeStepEdge", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Edge from TopoDS and
    ## TopologicalRepresentationItem from StepShape.



{.push header: "TopoDSToStep_MakeStepEdge.hxx".}

proc constructTopoDSToStep_MakeStepEdge*(): TopoDSToStep_MakeStepEdge {.constructor,importcpp: "TopoDSToStep_MakeStepEdge::TopoDSToStep_MakeStepEdge".}

proc constructTopoDSToStep_MakeStepEdge*(E: TopoDS_Edge, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepEdge {.constructor,importcpp: "TopoDSToStep_MakeStepEdge::TopoDSToStep_MakeStepEdge(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepEdge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepEdge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepEdge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepEdge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepEdge, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepEdge, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepEdge, E: TopoDS_Edge, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepEdge): handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepEdge): TopoDSToStep_MakeEdgeError  {.importcpp: "Error".}

{.pop.}  # header: "TopoDSToStep_MakeStepEdge.hxx"
