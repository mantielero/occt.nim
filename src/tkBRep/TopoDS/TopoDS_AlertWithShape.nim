{.push header: "TopoDS_AlertWithShape.hxx".}


# Constructors and methods
proc constructor_TopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.constructor,importcpp: "TopoDS_AlertWithShape(@)".}
  ## Constructor with shape argument

proc getShape*(this: TopoDS_AlertWithShape): TopoDS_Shape  {.importcpp: "GetShape".}
  ## Returns contained shape

proc setShape*(this: var TopoDS_AlertWithShape, theShape: TopoDS_Shape)  {.importcpp: "SetShape".}
  ## Sets the shape

proc supportsMerge*(this: TopoDS_AlertWithShape): bool  {.importcpp: "SupportsMerge".}
  ## Returns false.

#[
proc merge*(this: var TopoDS_AlertWithShape, theTarget: Handle[Message_Alert]): bool  {.importcpp: "Merge".}
  ## Returns false.
]#

proc get_type_name*(this: var TopoDS_AlertWithShape): cstring  {.importcpp: "get_type_name".}

#proc get_type_descriptor*(this: var TopoDS_AlertWithShape): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

#proc dynamicType*(this: TopoDS_AlertWithShape): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "TopoDS_AlertWithShape.hxx
