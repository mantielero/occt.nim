{.push header: "TopoDSToStep_MakeStepVertex.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeStepVertex*(): TopoDSToStep_MakeStepVertex {.constructor,importcpp: "TopoDSToStep_MakeStepVertex".}

proc constructor_TopoDSToStep_MakeStepVertex*(V: TopoDS_Vertex, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepVertex {.constructor,importcpp: "TopoDSToStep_MakeStepVertex(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepVertex, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepVertex, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepVertex, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepVertex, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepVertex, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepVertex, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepVertex, V: TopoDS_Vertex, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepVertex): Handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepVertex): TopoDSToStep_MakeVertexError  {.importcpp: "Error".}

{.pop.} # header: "TopoDSToStep_MakeStepVertex.hxx
