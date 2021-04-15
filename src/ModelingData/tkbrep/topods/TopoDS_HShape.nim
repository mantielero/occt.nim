import topods_types


type
  TopoDS_HShape* {.header: "TopoDS_HShape.hxx", importcpp: "TopoDS_HShape", byref.} = object #of class Standard_Transient
    ## Class to manipulate a Shape with handle.

  Handle_TopoDS_HShape* {.header: "TopoDS_HShape.hxx", importcpp: "Handle_TopoDS_HShape".} = handle[TopoDS_HShape]
  Base_type* {.header: "TopoDS_HShape.hxx", importcpp: "TopoDS_HShape::base_type".} = Standard_Transient


{.push header: "TopoDS_HShape.hxx".}

proc constructTopoDS_HShape*(): TopoDS_HShape {.constructor,importcpp: "TopoDS_HShape::TopoDS_HShape".}
    ## Constructs an empty shape object

proc constructTopoDS_HShape*(aShape: TopoDS_Shape): TopoDS_HShape {.constructor,importcpp: "TopoDS_HShape::TopoDS_HShape(@)".}
    ## Constructs a shape object defined by the shape aShape.

proc shape*(this: var TopoDS_HShape, aShape: TopoDS_Shape)  {.importcpp: "Shape".}
    ## Loads this shape with the shape aShape

proc shape*(this: TopoDS_HShape): TopoDS_Shape  {.importcpp: "Shape".}
    ## Returns a reference to a constant TopoDS_Shape based on this shape.

proc changeShape*(this: var TopoDS_HShape): TopoDS_Shape  {.importcpp: "ChangeShape".}
    ## Exchanges the TopoDS_Shape object defining this shape for another one
    ## referencing the same underlying shape Accesses the list of shapes
    ## within the underlying shape referenced by the TopoDS_Shape object.
    ## Returns a reference to a TopoDS_Shape based on this shape. The
    ## TopoDS_Shape can be modified.

proc get_type_name*(this: var TopoDS_HShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_HShape): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_HShape): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_HShape.hxx"
