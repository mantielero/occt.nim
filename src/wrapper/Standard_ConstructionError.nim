{.push header: "Standard_ConstructionError.hxx".}


# Constructors and methods
proc constructor_Standard_ConstructionError*(): Standard_ConstructionError {.constructor,importcpp: "Standard_ConstructionError".}
proc constructor_Standard_ConstructionError*(theMessage: Standard_CString): Standard_ConstructionError {.constructor,importcpp: "Standard_ConstructionError".}
proc Throw*(this: Standard_ConstructionError)  {.importcpp: "Throw".}
proc Raise*(this: Standard_ConstructionError, theMessage: Standard_CString)  {.importcpp: "Raise".}
#proc Raise*(this: Standard_ConstructionError, theMessage: Standard_SStream)  {.importcpp: "Raise".}
#proc NewInstance*(this: Standard_ConstructionError, theMessage: Standard_CString): opencascade::handle<Standard_ConstructionError>  {.importcpp: "NewInstance".}
#proc get_type_name*(this: Standard_ConstructionError): const char *  {.importcpp: "get_type_name".}
#proc get_type_descriptor*(this: Standard_ConstructionError): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
#proc DynamicType*(this: Standard_ConstructionError): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
{.pop.} # header: "Standard_ConstructionError.hxx
