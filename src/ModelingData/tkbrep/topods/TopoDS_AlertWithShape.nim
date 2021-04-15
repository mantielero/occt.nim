import topods_types


type
  TopoDS_AlertWithShape* {.header: "TopoDS_AlertWithShape.hxx", importcpp: "TopoDS_AlertWithShape", byref.} = object #of class Message_Alert
    ## Alert object storing TopoDS shape in its field

  Base_type* {.header: "TopoDS_AlertWithShape.hxx", importcpp: "TopoDS_AlertWithShape::base_type".} = Message_Alert


{.push header: "TopoDS_AlertWithShape.hxx".}

proc constructTopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.constructor,importcpp: "TopoDS_AlertWithShape::TopoDS_AlertWithShape(@)".}
    ## Constructor with shape argument

proc getShape*(this: TopoDS_AlertWithShape): TopoDS_Shape  {.importcpp: "GetShape".}
    ## Returns contained shape

proc setShape*(this: var TopoDS_AlertWithShape, theShape: TopoDS_Shape)  {.importcpp: "SetShape".}
    ## Sets the shape

proc supportsMerge*(this: TopoDS_AlertWithShape): Standard_Boolean  {.importcpp: "SupportsMerge".}
    ## Returns false.

proc merge*(this: var TopoDS_AlertWithShape, theTarget: handle[Message_Alert]): Standard_Boolean  {.importcpp: "Merge".}
    ## Returns false.

proc get_type_name*(this: var TopoDS_AlertWithShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_AlertWithShape): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_AlertWithShape): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_AlertWithShape.hxx"
