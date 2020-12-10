{.push header: "Standard_DimensionError.hxx".}


# Constructors and methods
proc constructor_Standard_DimensionError*(): Standard_DimensionError {.constructor,importcpp: "Standard_DimensionError".}

proc constructor_Standard_DimensionError*(theMessage: Standard_CString): Standard_DimensionError {.constructor,importcpp: "Standard_DimensionError(@)".}

proc Throw*(this: Standard_DimensionError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_DimensionError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_DimensionError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_DimensionError, theMessage: Standard_CString): Handle[Standard_DimensionError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_DimensionError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_DimensionError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_DimensionError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_DimensionError.hxx
