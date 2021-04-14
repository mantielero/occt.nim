{.push header: "Standard_NullObject.hxx".}


# Constructors and methods
proc constructor_Standard_NullObject*(): Standard_NullObject {.constructor,importcpp: "Standard_NullObject".}

proc constructor_Standard_NullObject*(theMessage: Standard_CString): Standard_NullObject {.constructor,importcpp: "Standard_NullObject(@)".}

proc Throw*(this: Standard_NullObject)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NullObject, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NullObject, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NullObject, theMessage: Standard_CString): Handle[Standard_NullObject]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NullObject): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NullObject): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NullObject): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NullObject.hxx
