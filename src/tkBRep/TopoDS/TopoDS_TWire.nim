{.push header: "TopoDS_TWire.hxx".}


# Constructors and methods
proc constructor_TopoDS_TWire*(): TopoDS_TWire {.constructor,importcpp: "TopoDS_TWire".}
  ## Creates an empty TWire.

proc shapeType*(this: TopoDS_TWire): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns WIRE.

proc emptyCopy*(this: TopoDS_TWire): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns an empty TWire.

proc get_type_name*(this: var TopoDS_TWire): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TWire): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TWire): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TWire.hxx
