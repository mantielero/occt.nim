{.push header: "TopoDSToStep_MakeStepWire.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeStepWire*(): TopoDSToStep_MakeStepWire {.constructor,importcpp: "TopoDSToStep_MakeStepWire".}

proc constructor_TopoDSToStep_MakeStepWire*(W: TopoDS_Wire, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepWire {.constructor,importcpp: "TopoDSToStep_MakeStepWire(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepWire, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepWire, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepWire, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepWire, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepWire, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepWire, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepWire, W: TopoDS_Wire, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepWire): Handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepWire): TopoDSToStep_MakeWireError  {.importcpp: "Error".}

{.pop.} # header: "TopoDSToStep_MakeStepWire.hxx
