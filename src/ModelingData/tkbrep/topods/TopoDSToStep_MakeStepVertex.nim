import topods_types


type
  TopoDSToStep_MakeStepVertex* {.header: "TopoDSToStep_MakeStepVertex.hxx", importcpp: "TopoDSToStep_MakeStepVertex", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Vertex from TopoDS
    ## and TopologicalRepresentationItem from StepShape.



{.push header: "TopoDSToStep_MakeStepVertex.hxx".}

proc constructTopoDSToStep_MakeStepVertex*(): TopoDSToStep_MakeStepVertex {.constructor,importcpp: "TopoDSToStep_MakeStepVertex::TopoDSToStep_MakeStepVertex".}

proc constructTopoDSToStep_MakeStepVertex*(V: TopoDS_Vertex, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepVertex {.constructor,importcpp: "TopoDSToStep_MakeStepVertex::TopoDSToStep_MakeStepVertex(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepVertex, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepVertex, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepVertex, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepVertex, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepVertex, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepVertex, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepVertex, V: TopoDS_Vertex, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepVertex): handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepVertex): TopoDSToStep_MakeVertexError  {.importcpp: "Error".}

{.pop.}  # header: "TopoDSToStep_MakeStepVertex.hxx"
