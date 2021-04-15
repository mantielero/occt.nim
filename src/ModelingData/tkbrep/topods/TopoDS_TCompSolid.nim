import topods_types


type
  TopoDS_TCompSolid* {.header: "TopoDS_TCompSolid.hxx", importcpp: "TopoDS_TCompSolid", byref.} = object #of class TopoDS_TShape
    ## A set of solids connected by their faces.

  Handle_TopoDS_TCompSolid* {.header: "TopoDS_TCompSolid.hxx", importcpp: "Handle_TopoDS_TCompSolid".} = handle[TopoDS_TCompSolid]
  Base_type* {.header: "TopoDS_TCompSolid.hxx", importcpp: "TopoDS_TCompSolid::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TCompSolid.hxx".}

proc constructTopoDS_TCompSolid*(): TopoDS_TCompSolid {.constructor,importcpp: "TopoDS_TCompSolid::TopoDS_TCompSolid".}
    ## Creates an empty TCompSolid.

proc shapeType*(this: TopoDS_TCompSolid): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## returns COMPSOLID

proc emptyCopy*(this: TopoDS_TCompSolid): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns an empty TCompSolid.

proc get_type_name*(this: var TopoDS_TCompSolid): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TCompSolid): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TCompSolid): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TCompSolid.hxx"
