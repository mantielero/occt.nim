{.push header: "TopoDS_TEdge.hxx".}


# Constructors and methods
proc constructor_TopoDS_TEdge*(): TopoDS_TEdge {.constructor,importcpp: "TopoDS_TEdge".}
  ## Construct an edge.

proc shapeType*(this: TopoDS_TEdge): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns EDGE.

proc get_type_name*(this: var TopoDS_TEdge): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TEdge): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TEdge): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TEdge.hxx
