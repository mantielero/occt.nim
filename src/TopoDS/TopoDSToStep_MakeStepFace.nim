{.push header: "TopoDSToStep_MakeStepFace.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeStepFace*(): TopoDSToStep_MakeStepFace {.constructor,importcpp: "TopoDSToStep_MakeStepFace".}

proc constructor_TopoDSToStep_MakeStepFace*(F: TopoDS_Face, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepFace {.constructor,importcpp: "TopoDSToStep_MakeStepFace(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepFace, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepFace, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepFace, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepFace, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepFace, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepFace, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepFace, F: TopoDS_Face, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepFace): Handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepFace): TopoDSToStep_MakeFaceError  {.importcpp: "Error".}

{.pop.} # header: "TopoDSToStep_MakeStepFace.hxx
