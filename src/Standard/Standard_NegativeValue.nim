{.push header: "Standard_NegativeValue.hxx".}


# Constructors and methods
proc constructor_Standard_NegativeValue*(): Standard_NegativeValue {.constructor,importcpp: "Standard_NegativeValue".}

proc constructor_Standard_NegativeValue*(theMessage: Standard_CString): Standard_NegativeValue {.constructor,importcpp: "Standard_NegativeValue(@)".}

proc Throw*(this: Standard_NegativeValue)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NegativeValue, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NegativeValue, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NegativeValue, theMessage: Standard_CString): Handle[Standard_NegativeValue]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NegativeValue): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NegativeValue): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NegativeValue): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NegativeValue.hxx
