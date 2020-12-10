{.push header: "Standard_ImmutableObject.hxx".}


# Constructors and methods
proc constructor_Standard_ImmutableObject*(): Standard_ImmutableObject {.constructor,importcpp: "Standard_ImmutableObject".}

proc constructor_Standard_ImmutableObject*(theMessage: Standard_CString): Standard_ImmutableObject {.constructor,importcpp: "Standard_ImmutableObject(@)".}

proc Throw*(this: Standard_ImmutableObject)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_ImmutableObject, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_ImmutableObject, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_ImmutableObject, theMessage: Standard_CString): Handle[Standard_ImmutableObject]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_ImmutableObject): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_ImmutableObject): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_ImmutableObject): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_ImmutableObject.hxx
