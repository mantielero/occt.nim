{.push header: "TopoDS_TCompound.hxx".}


# Constructors and methods
proc constructor_TopoDS_TCompound*(): TopoDS_TCompound {.constructor,importcpp: "TopoDS_TCompound".}
  ## Creates an empty TCompound.

proc shapeType*(this: TopoDS_TCompound): TopAbs_ShapeEnum  {.importcpp: "ShapeType".}
  ## Returns COMPOUND.

proc emptyCopy*(this: TopoDS_TCompound): Handle[TopoDS_TShape]  {.importcpp: "EmptyCopy".}
  ## Returns an empty TCompound.

proc get_type_name*(this: var TopoDS_TCompound): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_TCompound): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_TCompound): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_TCompound.hxx
