{.push header: "TopoDSToStep_Builder.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_Builder*(): TopoDSToStep_Builder {.constructor,importcpp: "TopoDSToStep_Builder".}

proc constructor_TopoDSToStep_Builder*(S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_Builder {.constructor,importcpp: "TopoDSToStep_Builder(@)".}

proc ` new`*(this: var TopoDSToStep_Builder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Builder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_Builder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_Builder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_Builder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_Builder, pointer, pointer)  {.importcpp: "#  delete #".}

proc init*(this: var TopoDSToStep_Builder, S: TopoDS_Shape, T: var TopoDSToStep_Tool, FP: Handle[Transfer_FinderProcess])  {.importcpp: "Init".}

proc error*(this: TopoDSToStep_Builder): TopoDSToStep_BuilderError  {.importcpp: "Error".}

proc value*(this: TopoDSToStep_Builder): Handle[StepShape_TopologicalRepresentationItem]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_Builder.hxx
