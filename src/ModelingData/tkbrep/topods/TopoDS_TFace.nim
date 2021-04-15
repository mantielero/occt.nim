import topods_types


type
  TopoDS_TFace* {.header: "TopoDS_TFace.hxx", importcpp: "TopoDS_TFace", byref.} = object #of class TopoDS_TShape
    ## A topological part of a surface or of the 2D space. The boundary is a
    ## set of wires and vertices.

  Handle_TopoDS_TFace* {.header: "TopoDS_TFace.hxx", importcpp: "Handle_TopoDS_TFace".} = handle[TopoDS_TFace]
  Base_type* {.header: "TopoDS_TFace.hxx", importcpp: "TopoDS_TFace::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TFace.hxx".}

proc constructTopoDS_TFace*(): TopoDS_TFace {.constructor,importcpp: "TopoDS_TFace::TopoDS_TFace".}
    ## Creates an empty TFace.

proc shapeType*(this: TopoDS_TFace): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## returns FACE.

proc emptyCopy*(this: TopoDS_TFace): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns an empty TFace.

proc get_type_name*(this: var TopoDS_TFace): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TFace): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TFace): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TFace.hxx"
