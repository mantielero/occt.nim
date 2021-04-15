import topods_types


type
  TopoDS_TWire* {.header: "TopoDS_TWire.hxx", importcpp: "TopoDS_TWire", byref.} = object #of class TopoDS_TShape
    ## A set of edges connected by their vertices.

  Handle_TopoDS_TWire* {.header: "TopoDS_TWire.hxx", importcpp: "Handle_TopoDS_TWire".} = handle[TopoDS_TWire]
  Base_type* {.header: "TopoDS_TWire.hxx", importcpp: "TopoDS_TWire::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TWire.hxx".}

proc constructTopoDS_TWire*(): TopoDS_TWire {.constructor,importcpp: "TopoDS_TWire::TopoDS_TWire".}
    ## Creates an empty TWire.

proc shapeType*(this: TopoDS_TWire): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## Returns WIRE.

proc emptyCopy*(this: TopoDS_TWire): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns an empty TWire.

proc get_type_name*(this: var TopoDS_TWire): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TWire): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TWire): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TWire.hxx"
