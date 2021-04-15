import topods_types


type
  TopoDSToStep_MakeStepWire* {.header: "TopoDSToStep_MakeStepWire.hxx", importcpp: "TopoDSToStep_MakeStepWire", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Wire from TopoDS and
    ## TopologicalRepresentationItem from StepShape.



{.push header: "TopoDSToStep_MakeStepWire.hxx".}

proc constructTopoDSToStep_MakeStepWire*(): TopoDSToStep_MakeStepWire {.constructor,importcpp: "TopoDSToStep_MakeStepWire::TopoDSToStep_MakeStepWire".}

proc constructTopoDSToStep_MakeStepWire*(W: TopoDS_Wire, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepWire {.constructor,importcpp: "TopoDSToStep_MakeStepWire::TopoDSToStep_MakeStepWire(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepWire, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepWire, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepWire, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepWire, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepWire, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepWire, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepWire, W: TopoDS_Wire, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepWire): handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepWire): TopoDSToStep_MakeWireError  {.importcpp: "Error".}

{.pop.}  # header: "TopoDSToStep_MakeStepWire.hxx"
