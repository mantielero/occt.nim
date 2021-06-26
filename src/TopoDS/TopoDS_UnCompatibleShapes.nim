{.push header: "TopoDS_UnCompatibleShapes.hxx".}


# Constructors and methods
proc constructor_TopoDS_UnCompatibleShapes*(): TopoDS_UnCompatibleShapes {.constructor,importcpp: "TopoDS_UnCompatibleShapes".}

proc constructor_TopoDS_UnCompatibleShapes*(theMessage: Standard_CString): TopoDS_UnCompatibleShapes {.constructor,importcpp: "TopoDS_UnCompatibleShapes(@)".}

proc throw*(this: TopoDS_UnCompatibleShapes)  {.importcpp: "Throw".}

proc raise*(this: var TopoDS_UnCompatibleShapes, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc raise*(this: var TopoDS_UnCompatibleShapes, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var TopoDS_UnCompatibleShapes, theMessage: Standard_CString): Handle[TopoDS_UnCompatibleShapes]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var TopoDS_UnCompatibleShapes): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_UnCompatibleShapes): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_UnCompatibleShapes): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_UnCompatibleShapes.hxx
