import topods_types


type
  TopoDSToStep_Builder* {.header: "TopoDSToStep_Builder.hxx", importcpp: "TopoDSToStep_Builder", byref.} = object #of class TopoDSToStep_Root
    ## This builder Class provides services to build a ProSTEP Shape model
    ## from a Cas.Cad BRep.



{.push header: "TopoDSToStep_Builder.hxx".}

proc constructTopoDSToStep_Builder*(): TopoDSToStep_Builder {.constructor,importcpp: "TopoDSToStep_Builder::TopoDSToStep_Builder".}

proc constructTopoDSToStep_Builder*(S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_Builder {.constructor,importcpp: "TopoDSToStep_Builder::TopoDSToStep_Builder(@)".}

proc ` new`*(this: var TopoDSToStep_Builder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Builder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_Builder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_Builder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_Builder, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Builder, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_Builder, S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = ))  {.importcpp: "Init".}

proc error*(this: TopoDSToStep_Builder): TopoDSToStep_BuilderError  {.importcpp: "Error".}

proc value*(this: TopoDSToStep_Builder): handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_Builder.hxx"
