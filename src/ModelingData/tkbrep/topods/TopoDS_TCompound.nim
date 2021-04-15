import topods_types


type
  TopoDS_TCompound* {.header: "TopoDS_TCompound.hxx", importcpp: "TopoDS_TCompound", byref.} = object #of class TopoDS_TShape
    ## A TCompound is an all-purpose set of Shapes.

  Handle_TopoDS_TCompound* {.header: "TopoDS_TCompound.hxx", importcpp: "Handle_TopoDS_TCompound".} = handle[TopoDS_TCompound]
  Base_type* {.header: "TopoDS_TCompound.hxx", importcpp: "TopoDS_TCompound::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TCompound.hxx".}

proc constructTopoDS_TCompound*(): TopoDS_TCompound {.constructor,importcpp: "TopoDS_TCompound::TopoDS_TCompound".}
    ## Creates an empty TCompound.

proc shapeType*(this: TopoDS_TCompound): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## Returns COMPOUND.

proc emptyCopy*(this: TopoDS_TCompound): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns an empty TCompound.

proc get_type_name*(this: var TopoDS_TCompound): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TCompound): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TCompound): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TCompound.hxx"
