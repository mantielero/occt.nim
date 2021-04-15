import brepbuilderapi_types


type
  BRepBuilderAPI_Collect* {.header: "BRepBuilderAPI_Collect.hxx", importcpp: "BRepBuilderAPI_Collect", byref.} = object



{.push header: "BRepBuilderAPI_Collect.hxx".}

proc constructBRepBuilderAPI_Collect*(): BRepBuilderAPI_Collect {.constructor,importcpp: "BRepBuilderAPI_Collect::BRepBuilderAPI_Collect".}

proc ` new`*(this: var BRepBuilderAPI_Collect, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Collect, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_Collect, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_Collect, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_Collect, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Collect, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc add*(this: var BRepBuilderAPI_Collect, SI: TopoDS_Shape, MKS: var BRepBuilderAPI_MakeShape)  {.importcpp: "Add".}

proc addGenerated*(this: var BRepBuilderAPI_Collect, S: TopoDS_Shape, Gen: TopoDS_Shape)  {.importcpp: "AddGenerated".}

proc addModif*(this: var BRepBuilderAPI_Collect, S: TopoDS_Shape, Mod: TopoDS_Shape)  {.importcpp: "AddModif".}

proc filter*(this: var BRepBuilderAPI_Collect, SF: TopoDS_Shape)  {.importcpp: "Filter".}

proc modification*(this: BRepBuilderAPI_Collect): TopTools_DataMapOfShapeListOfShape  {.importcpp: "Modification".}

proc generated*(this: BRepBuilderAPI_Collect): TopTools_DataMapOfShapeListOfShape  {.importcpp: "Generated".}

{.pop.}  # header: "BRepBuilderAPI_Collect.hxx"
