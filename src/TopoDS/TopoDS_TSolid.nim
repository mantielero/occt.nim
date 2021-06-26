{.push header: "TopoDS_TSolid.hxx".}


# Constructors and methods
proc constructor_TopoDS_TSolid*(): TopoDS_TSolid {.constructor,importcpp: "TopoDS_TSolid".}
  ## Creates an empty TSolid.

proc shapeType*(this: TopoDS_TSolid): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## returns SOLID.

proc emptyCopy*(this: TopoDS_TSolid): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns an empty TSolid.

proc get_type_name*(this: var TopoDS_TSolid): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TSolid): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TSolid): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TSolid.hxx
