{.push header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}


# Constructors and methods
proc constructor_TopoDSToStep_MakeManifoldSolidBrep*(S: TopoDS_Shell, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeManifoldSolidBrep {.constructor,importcpp: "TopoDSToStep_MakeManifoldSolidBrep(@)".}

proc constructor_TopoDSToStep_MakeManifoldSolidBrep*(S: TopoDS_Solid, FP: Handle[Transfer_FinderProcess]): TopoDSToStep_MakeManifoldSolidBrep {.constructor,importcpp: "TopoDSToStep_MakeManifoldSolidBrep(@)".}

proc ` new`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var TopoDSToStep_MakeManifoldSolidBrep, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var TopoDSToStep_MakeManifoldSolidBrep, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var TopoDSToStep_MakeManifoldSolidBrep, pointer, pointer)  {.importcpp: "#  delete #".}

proc value*(this: TopoDSToStep_MakeManifoldSolidBrep): Handle[StepShape_ManifoldSolidBrep]  {.importcpp: "Value".}

{.pop.} # header: "TopoDSToStep_MakeManifoldSolidBrep.hxx
