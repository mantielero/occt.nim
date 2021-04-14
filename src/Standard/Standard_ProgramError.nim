{.push header: "Standard_ProgramError.hxx".}


# Constructors and methods
proc constructor_Standard_ProgramError*(): Standard_ProgramError {.constructor,importcpp: "Standard_ProgramError".}

proc constructor_Standard_ProgramError*(theMessage: Standard_CString): Standard_ProgramError {.constructor,importcpp: "Standard_ProgramError(@)".}

proc Throw*(this: Standard_ProgramError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_ProgramError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_ProgramError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_ProgramError, theMessage: Standard_CString): Handle[Standard_ProgramError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_ProgramError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_ProgramError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_ProgramError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_ProgramError.hxx
