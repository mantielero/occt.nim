{.push header: "Standard_TooManyUsers.hxx".}


# Constructors and methods
proc constructor_Standard_TooManyUsers*(): Standard_TooManyUsers {.constructor,importcpp: "Standard_TooManyUsers".}

proc constructor_Standard_TooManyUsers*(theMessage: Standard_CString): Standard_TooManyUsers {.constructor,importcpp: "Standard_TooManyUsers(@)".}

proc Throw*(this: Standard_TooManyUsers)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_TooManyUsers, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_TooManyUsers, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_TooManyUsers, theMessage: Standard_CString): Handle[Standard_TooManyUsers]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_TooManyUsers): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_TooManyUsers): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_TooManyUsers): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_TooManyUsers.hxx
