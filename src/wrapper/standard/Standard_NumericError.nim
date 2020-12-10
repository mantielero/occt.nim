{.push header: "Standard_NumericError.hxx".}


# Constructors and methods
proc constructor_Standard_NumericError*(): Standard_NumericError {.constructor,importcpp: "Standard_NumericError".}

proc constructor_Standard_NumericError*(theMessage: Standard_CString): Standard_NumericError {.constructor,importcpp: "Standard_NumericError(@)".}

proc Throw*(this: Standard_NumericError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NumericError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NumericError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NumericError, theMessage: Standard_CString): Handle[Standard_NumericError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NumericError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NumericError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NumericError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NumericError.hxx
