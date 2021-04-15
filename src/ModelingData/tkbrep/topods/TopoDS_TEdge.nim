import topods_types


type
  TopoDS_TEdge* {.header: "TopoDS_TEdge.hxx", importcpp: "TopoDS_TEdge", byref.} = object #of class TopoDS_TShape
    ## A topological part of a curve in 2D or 3D, the boundary is a set of
    ## oriented Vertices.

  Handle_TopoDS_TEdge* {.header: "TopoDS_TEdge.hxx", importcpp: "Handle_TopoDS_TEdge".} = handle[TopoDS_TEdge]
  Base_type* {.header: "TopoDS_TEdge.hxx", importcpp: "TopoDS_TEdge::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TEdge.hxx".}

proc constructTopoDS_TEdge*(): TopoDS_TEdge {.constructor,importcpp: "TopoDS_TEdge::TopoDS_TEdge".}
    ## Construct an edge.

proc shapeType*(this: TopoDS_TEdge): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## Returns EDGE.

proc get_type_name*(this: var TopoDS_TEdge): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TEdge): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TEdge): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TEdge.hxx"
