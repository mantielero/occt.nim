{.push header: "Standard_Persistent.hxx".}


# Constructors and methods
proc constructor_Standard_Persistent*(): Standard_Persistent {.constructor,importcpp: "Standard_Persistent".}

proc ` new`*(this: var Standard_Persistent, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_Persistent, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var Standard_Persistent, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var Standard_Persistent, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var Standard_Persistent, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_Persistent, pointer, pointer)  {.importcpp: "` delete`".}

proc get_type_name*(this: var Standard_Persistent): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_Persistent): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_Persistent): Handle[Standard_Type]  {.importcpp: "DynamicType".}

proc TypeNum*(this: var Standard_Persistent): Standard_Integer  {.importcpp: "TypeNum".}

{.pop.} # header: "Standard_Persistent.hxx
