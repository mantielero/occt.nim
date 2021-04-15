import topods_types


type
  TopoDSToStep_MakeShellBasedSurfaceModel* {.header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx", importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Face, Shell or Solid
    ## from TopoDS and ShellBasedSurfaceModel from StepShape. All the
    ## topology and geometry comprised into the shape are taken into account
    ## and translated.



{.push header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx".}

proc constructTopoDSToStep_MakeShellBasedSurfaceModel*(F: TopoDS_Face, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeShellBasedSurfaceModel {.constructor,importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::TopoDSToStep_MakeShellBasedSurfaceModel(@)".}

proc constructTopoDSToStep_MakeShellBasedSurfaceModel*(S: TopoDS_Shell, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeShellBasedSurfaceModel {.constructor,importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::TopoDSToStep_MakeShellBasedSurfaceModel(@)".}

proc constructTopoDSToStep_MakeShellBasedSurfaceModel*(S: TopoDS_Solid, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeShellBasedSurfaceModel {.constructor,importcpp: "TopoDSToStep_MakeShellBasedSurfaceModel::TopoDSToStep_MakeShellBasedSurfaceModel(@)".}

proc ` new`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeShellBasedSurfaceModel, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeShellBasedSurfaceModel): handle[StepShape_ShellBasedSurfaceModel]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_MakeShellBasedSurfaceModel.hxx"
