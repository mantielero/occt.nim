{.push header: "Standard_DomainError.hxx".}


# Constructors and methods
proc constructor_Standard_DomainError*(): Standard_DomainError {.constructor,importcpp: "Standard_DomainError".}

proc constructor_Standard_DomainError*(theMessage: Standard_CString): Standard_DomainError {.constructor,importcpp: "Standard_DomainError(@)".}

proc Throw*(this: Standard_DomainError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_DomainError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_DomainError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_DomainError, theMessage: Standard_CString): Handle[Standard_DomainError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_DomainError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_DomainError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_DomainError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_DomainError.hxx
