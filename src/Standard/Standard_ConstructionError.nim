{.push header: "Standard_ConstructionError.hxx".}


# Constructors and methods
proc constructor_Standard_ConstructionError*(): Standard_ConstructionError {.constructor,importcpp: "Standard_ConstructionError".}

proc constructor_Standard_ConstructionError*(theMessage: Standard_CString): Standard_ConstructionError {.constructor,importcpp: "Standard_ConstructionError(@)".}

proc Throw*(this: Standard_ConstructionError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_ConstructionError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_ConstructionError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_ConstructionError, theMessage: Standard_CString): Handle[Standard_ConstructionError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_ConstructionError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_ConstructionError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_ConstructionError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_ConstructionError.hxx
