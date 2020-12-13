{.push header: "TopoDS_TFace.hxx".}


# Constructors and methods
proc constructor_TopoDS_TFace*(): TopoDS_TFace {.constructor,importcpp: "TopoDS_TFace".}
  ## Creates an empty TFace.

proc shapeType*(this: TopoDS_TFace): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## returns FACE.

proc emptyCopy*(this: TopoDS_TFace): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns an empty TFace.

proc get_type_name*(this: var TopoDS_TFace): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TFace): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TFace): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TFace.hxx
