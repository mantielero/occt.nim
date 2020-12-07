{.push header: "Standard_DomainError.hxx".}


# Constructors and methods
proc constructor_Standard_DomainError*(): Standard_DomainError {.constructor,importcpp: "Standard_DomainError".}
proc constructor_Standard_DomainError*(theMessage: Standard_CString): Standard_DomainError {.constructor,importcpp: "Standard_DomainError".}
proc Throw*(this: Standard_DomainError)  {.importcpp: "Throw".}
proc Raise*(this: Standard_DomainError, theMessage: Standard_CString)  {.importcpp: "Raise".}
#proc Raise*(this: Standard_DomainError, theMessage: Standard_SStream)  {.importcpp: "Raise".}
#proc NewInstance*(this: Standard_DomainError, theMessage: Standard_CString): opencascade::handle<Standard_DomainError>  {.importcpp: "NewInstance".}
#proc get_type_name*(this: Standard_DomainError): const char *  {.importcpp: "get_type_name".}
#proc get_type_descriptor*(this: Standard_DomainError): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
#proc DynamicType*(this: Standard_DomainError): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
{.pop.} # header: "Standard_DomainError.hxx
