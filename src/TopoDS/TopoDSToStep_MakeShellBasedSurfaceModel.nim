{.push header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeShellBasedSurfaceModel*(F: TopoDS_Face, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeShellBasedSurfaceModel {.constructor,importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel(@)".}

proc constructor_TopoDSToStep_MakeShellBasedSurfaceModel*(S: TopoDS_Shell, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeShellBasedSurfaceModel {.constructor,importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel(@)".}

proc constructor_TopoDSToStep_MakeShellBasedSurfaceModel*(S: TopoDS_Solid, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeShellBasedSurfaceModel {.constructor,importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel(@)".}

proc ` new`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, pointer, pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeShellBasedSurfaceModel): Handle[StepShape_ShellBasedSurfaceModel]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx
