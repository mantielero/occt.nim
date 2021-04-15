import topods_types


type
  TopoDS_TSolid* {.header: "TopoDS_TSolid.hxx", importcpp: "TopoDS_TSolid", byref.} = object #of class TopoDS_TShape
    ## A Topological part of 3D space, bounded by shells, edges and vertices.

  Handle_TopoDS_TSolid* {.header: "TopoDS_TSolid.hxx", importcpp: "Handle_TopoDS_TSolid".} = handle[TopoDS_TSolid]
  Base_type* {.header: "TopoDS_TSolid.hxx", importcpp: "TopoDS_TSolid::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TSolid.hxx".}

proc constructTopoDS_TSolid*(): TopoDS_TSolid {.constructor,importcpp: "TopoDS_TSolid::TopoDS_TSolid".}
    ## Creates an empty TSolid.

proc shapeType*(this: TopoDS_TSolid): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## returns SOLID.

proc emptyCopy*(this: TopoDS_TSolid): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns an empty TSolid.

proc get_type_name*(this: var TopoDS_TSolid): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TSolid): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TSolid): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TSolid.hxx"
