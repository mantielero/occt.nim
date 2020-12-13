{.push header: "TopoDS_TVertex.hxx".}


# Constructors and methods
proc constructor_TopoDS_TVertex*(): TopoDS_TVertex {.constructor,importcpp: "TopoDS_TVertex".}
  ## Construct a vertex.

proc shapeType*(this: TopoDS_TVertex): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns VERTEX.

proc get_type_name*(this: var TopoDS_TVertex): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TVertex): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TVertex): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TVertex.hxx
