{.push header: "Standard_NullValue.hxx".}


# Constructors and methods
proc constructor_Standard_NullValue*(): Standard_NullValue {.constructor,importcpp: "Standard_NullValue".}

proc constructor_Standard_NullValue*(theMessage: Standard_CString): Standard_NullValue {.constructor,importcpp: "Standard_NullValue(@)".}

proc Throw*(this: Standard_NullValue)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NullValue, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NullValue, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NullValue, theMessage: Standard_CString): Handle[Standard_NullValue]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NullValue): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NullValue): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NullValue): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NullValue.hxx
