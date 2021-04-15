import topods_types


type
  TopoDS_TVertex* {.header: "TopoDS_TVertex.hxx", importcpp: "TopoDS_TVertex", byref.} = object #of class TopoDS_TShape
    ## A Vertex is a topological point in two or three dimensions.

  Handle_TopoDS_TVertex* {.header: "TopoDS_TVertex.hxx", importcpp: "Handle_TopoDS_TVertex".} = handle[TopoDS_TVertex]
  Base_type* {.header: "TopoDS_TVertex.hxx", importcpp: "TopoDS_TVertex::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TVertex.hxx".}

proc constructTopoDS_TVertex*(): TopoDS_TVertex {.constructor,importcpp: "TopoDS_TVertex::TopoDS_TVertex".}
    ## Construct a vertex.

proc shapeType*(this: TopoDS_TVertex): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## Returns VERTEX.

proc get_type_name*(this: var TopoDS_TVertex): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TVertex): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TVertex): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TVertex.hxx"
