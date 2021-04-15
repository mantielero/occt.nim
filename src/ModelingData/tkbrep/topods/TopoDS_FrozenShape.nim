import topods_types


type
  TopoDS_FrozenShape* {.header: "TopoDS_FrozenShape.hxx", importcpp: "TopoDS_FrozenShape", byref.} = object #of class Standard_DomainError
    ## An attempt was made to modify a Shape already shared or protected.

  Handle_TopoDS_FrozenShape* {.header: "TopoDS_FrozenShape.hxx", importcpp: "Handle_TopoDS_FrozenShape".} = handle[TopoDS_FrozenShape]
  Base_type* {.header: "TopoDS_FrozenShape.hxx", importcpp: "TopoDS_FrozenShape::base_type".} = Standard_DomainError


{.push header: "TopoDS_FrozenShape.hxx".}

proc constructTopoDS_FrozenShape*(): TopoDS_FrozenShape {.constructor,importcpp: "TopoDS_FrozenShape::TopoDS_FrozenShape".}

proc constructTopoDS_FrozenShape*(theMessage: Standard_CString): TopoDS_FrozenShape {.constructor,importcpp: "TopoDS_FrozenShape::TopoDS_FrozenShape(@)".}

proc throw*(this: TopoDS_FrozenShape)  {.importcpp: "Throw".}

proc `raise`*(this: var TopoDS_FrozenShape, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc `raise`*(this: var TopoDS_FrozenShape, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var TopoDS_FrozenShape, theMessage: Standard_CString): handle[TopoDS_FrozenShape]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var TopoDS_FrozenShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_FrozenShape): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_FrozenShape): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_FrozenShape.hxx"
