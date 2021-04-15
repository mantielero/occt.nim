import topods_types


type
  TopoDSToStep_MakeStepFace* {.header: "TopoDSToStep_MakeStepFace.hxx", importcpp: "TopoDSToStep_MakeStepFace", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Face from TopoDS and
    ## TopologicalRepresentationItem from StepShape.



{.push header: "TopoDSToStep_MakeStepFace.hxx".}

proc constructTopoDSToStep_MakeStepFace*(): TopoDSToStep_MakeStepFace {.constructor,importcpp: "TopoDSToStep_MakeStepFace::TopoDSToStep_MakeStepFace".}

proc constructTopoDSToStep_MakeStepFace*(F: TopoDS_Face, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepFace {.constructor,importcpp: "TopoDSToStep_MakeStepFace::TopoDSToStep_MakeStepFace(@)".}

proc ` new`*(this: var TopoDSToStep_MakeStepFace, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepFace, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeStepFace, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeStepFace, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeStepFace, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeStepFace, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_MakeStepFace, F: TopoDS_Face, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc value*(this: TopoDSToStep_MakeStepFace): handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

proc error*(this: TopoDSToStep_MakeStepFace): TopoDSToStep_MakeFaceError  {.importcpp: "Error".}

{.pop.}  # header: "TopoDSToStep_MakeStepFace.hxx"
