{.push header: "TopoDS_TShell.hxx".}


# Constructors and methods
proc constructor_TopoDS_TShell*(): TopoDS_TShell {.constructor,importcpp: "TopoDS_TShell".}
  ## Creates an empty TShell.

proc shapeType*(this: TopoDS_TShell): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns SHELL.

proc emptyCopy*(this: TopoDS_TShell): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns an empty TShell.

proc get_type_name*(this: var TopoDS_TShell): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TShell): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TShell): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TShell.hxx
