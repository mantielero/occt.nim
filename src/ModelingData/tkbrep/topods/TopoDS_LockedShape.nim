import topods_types


type
  TopoDS_LockedShape* {.header: "TopoDS_LockedShape.hxx", importcpp: "TopoDS_LockedShape", byref.} = object #of class Standard_DomainError
    ## An attempt was made to modify a geometry of Shape already shared or
    ## protected.

  Handle_TopoDS_LockedShape* {.header: "TopoDS_LockedShape.hxx", importcpp: "Handle_TopoDS_LockedShape".} = handle[TopoDS_LockedShape]
  Base_type* {.header: "TopoDS_LockedShape.hxx", importcpp: "TopoDS_LockedShape::base_type".} = Standard_DomainError


{.push header: "TopoDS_LockedShape.hxx".}

proc constructTopoDS_LockedShape*(): TopoDS_LockedShape {.constructor,importcpp: "TopoDS_LockedShape::TopoDS_LockedShape".}

proc constructTopoDS_LockedShape*(theMessage: Standard_CString): TopoDS_LockedShape {.constructor,importcpp: "TopoDS_LockedShape::TopoDS_LockedShape(@)".}

proc throw*(this: TopoDS_LockedShape)  {.importcpp: "Throw".}

proc `raise`*(this: var TopoDS_LockedShape, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc `raise`*(this: var TopoDS_LockedShape, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var TopoDS_LockedShape, theMessage: Standard_CString): handle[TopoDS_LockedShape]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var TopoDS_LockedShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_LockedShape): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_LockedShape): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_LockedShape.hxx"
