import topods_types


type
  TopoDS_UnCompatibleShapes* {.header: "TopoDS_UnCompatibleShapes.hxx", importcpp: "TopoDS_UnCompatibleShapes", byref.} = object #of class Standard_DomainError
    ## An incorrect insertion was attempted.

  Handle_TopoDS_UnCompatibleShapes* {.header: "TopoDS_UnCompatibleShapes.hxx", importcpp: "Handle_TopoDS_UnCompatibleShapes".} = handle[TopoDS_UnCompatibleShapes]
  Base_type* {.header: "TopoDS_UnCompatibleShapes.hxx", importcpp: "TopoDS_UnCompatibleShapes::base_type".} = Standard_DomainError


{.push header: "TopoDS_UnCompatibleShapes.hxx".}

proc constructTopoDS_UnCompatibleShapes*(): TopoDS_UnCompatibleShapes {.constructor,importcpp: "TopoDS_UnCompatibleShapes::TopoDS_UnCompatibleShapes".}

proc constructTopoDS_UnCompatibleShapes*(theMessage: Standard_CString): TopoDS_UnCompatibleShapes {.constructor,importcpp: "TopoDS_UnCompatibleShapes::TopoDS_UnCompatibleShapes(@)".}

proc throw*(this: TopoDS_UnCompatibleShapes)  {.importcpp: "Throw".}

proc `raise`*(this: var TopoDS_UnCompatibleShapes, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc `raise`*(this: var TopoDS_UnCompatibleShapes, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var TopoDS_UnCompatibleShapes, theMessage: Standard_CString): handle[TopoDS_UnCompatibleShapes]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var TopoDS_UnCompatibleShapes): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_UnCompatibleShapes): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_UnCompatibleShapes): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_UnCompatibleShapes.hxx"
