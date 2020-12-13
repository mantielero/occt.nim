{.push header: "TopoDS_TCompSolid.hxx".}


# Constructors and methods
proc constructor_TopoDS_TCompSolid*(): TopoDS_TCompSolid {.constructor,importcpp: "TopoDS_TCompSolid".}
  ## Creates an empty TCompSolid.

proc shapeType*(this: TopoDS_TCompSolid): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## returns COMPSOLID

proc emptyCopy*(this: TopoDS_TCompSolid): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns an empty TCompSolid.

proc get_type_name*(this: var TopoDS_TCompSolid): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TCompSolid): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TCompSolid): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TCompSolid.hxx
