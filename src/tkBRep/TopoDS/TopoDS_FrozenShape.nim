{.push header: "TopoDS_FrozenShape.hxx".}


# Constructors and methods
proc constructor_TopoDS_FrozenShape*(): TopoDS_FrozenShape {.constructor,importcpp: "TopoDS_FrozenShape".}

proc constructor_TopoDS_FrozenShape*(theMessage: Standard_CString): TopoDS_FrozenShape {.constructor,importcpp: "TopoDS_FrozenShape(@)".}

proc throw*(this: TopoDS_FrozenShape)  {.importcpp: "Throw".}

proc raise*(this: var TopoDS_FrozenShape, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc raise*(this: var TopoDS_FrozenShape, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var TopoDS_FrozenShape, theMessage: Standard_CString): Handle[TopoDS_FrozenShape]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var TopoDS_FrozenShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_FrozenShape): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_FrozenShape): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_FrozenShape.hxx
