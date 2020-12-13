{.push header: "TopoDSToStep_MakeStepEdge.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeStepEdge*(): TopoDSToStep_MakeStepEdge {.constructor,importcpp: "TopoDSToStep_MakeStepEdge".}

proc constructor_TopoDSToStep_MakeStepEdge*(E: TopoDS_Edge, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepEdge {.constructor,importcpp: "TopoDSToStep_MakeStepEdge(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepEdge, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepEdge, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepEdge, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepEdge, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepEdge, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepEdge, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepEdge, E: TopoDS_Edge, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepEdge): Handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepEdge): TopoDSToStep_MakeEdgeError  {.importcpp: "Error".}

{.pop.} # header: "TopoDSToStep_MakeStepEdge.hxx
