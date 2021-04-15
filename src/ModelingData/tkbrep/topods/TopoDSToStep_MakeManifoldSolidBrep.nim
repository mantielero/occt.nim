import topods_types


type
  TopoDSToStep_MakeManifoldSolidBrep* {.header: "TopoDSToStep_MakeManifoldSolidBrep.hxx", importcpp: "TopoDSToStep_MakeManifoldSolidBrep", byref.} = object #of class TopoDSToStep_Root
    ## This class implements the mapping between classes Shell or Solid from
    ## TopoDS and ManifoldSolidBrep from StepShape. All the topology and
    ## geometry comprised into the shell or the solid are taken into account
    ## and translated.



{.push header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}

proc constructTopoDSToStep_MakeManifoldSolidBrep*(S: TopoDS_Shell, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeManifoldSolidBrep {.constructor,importcpp: "TopoDSToStep_MakeManifoldSolidBrep::TopoDSToStep_MakeManifoldSolidBrep(@)".}

proc constructTopoDSToStep_MakeManifoldSolidBrep*(S: TopoDS_Solid, FP: handle[Transfer_FinderProcess], theProgress: Message_ProgressRange = )): TopoDSToStep_MakeManifoldSolidBrep {.constructor,importcpp: "TopoDSToStep_MakeManifoldSolidBrep::TopoDSToStep_MakeManifoldSolidBrep(@)".}

proc ` new`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeManifoldSolidBrep, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeManifoldSolidBrep, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeManifoldSolidBrep): handle[StepShape_ManifoldSolidBrep]  {.importcpp: "Value".}

{.pop.}  # header: "TopoDSToStep_MakeManifoldSolidBrep.hxx"
