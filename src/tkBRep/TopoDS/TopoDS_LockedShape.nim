{.push header: "TopoDS_LockedShape.hxx".}


# Constructors and methods
proc constructor_TopoDS_LockedShape*(): TopoDS_LockedShape {.constructor,importcpp: "TopoDS_LockedShape".}

proc constructor_TopoDS_LockedShape*(theMessage: Standard_CString): TopoDS_LockedShape {.constructor,importcpp: "TopoDS_LockedShape(@)".}

proc throw*(this: TopoDS_LockedShape)  {.importcpp: "Throw".}

proc raise*(this: var TopoDS_LockedShape, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc raise*(this: var TopoDS_LockedShape, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc newInstance*(this: var TopoDS_LockedShape, theMessage: Standard_CString): Handle[TopoDS_LockedShape]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var TopoDS_LockedShape): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_LockedShape): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_LockedShape): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_LockedShape.hxx
