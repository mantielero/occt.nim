import topods_types


type
  TopoDS_TShell* {.header: "TopoDS_TShell.hxx", importcpp: "TopoDS_TShell", byref.} = object #of class TopoDS_TShape
    ## A set of faces connected by their edges.

  Handle_TopoDS_TShell* {.header: "TopoDS_TShell.hxx", importcpp: "Handle_TopoDS_TShell".} = handle[TopoDS_TShell]
  Base_type* {.header: "TopoDS_TShell.hxx", importcpp: "TopoDS_TShell::base_type".} = TopoDS_TShape


{.push header: "TopoDS_TShell.hxx".}

proc constructTopoDS_TShell*(): TopoDS_TShell {.constructor,importcpp: "TopoDS_TShell::TopoDS_TShell".}
    ## Creates an empty TShell.

proc shapeType*(this: TopoDS_TShell): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
    ## Returns SHELL.

proc emptyCopy*(this: TopoDS_TShell): handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
    ## Returns an empty TShell.

proc get_type_name*(this: var TopoDS_TShell): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TShell): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TShell): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "TopoDS_TShell.hxx"
