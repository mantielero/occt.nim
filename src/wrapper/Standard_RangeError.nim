{.push header: "Standard_RangeError.hxx".}


# Constructors and methods
proc constructor_Standard_RangeError*(): Standard_RangeError {.constructor,importcpp: "Standard_RangeError".}
proc constructor_Standard_RangeError*(theMessage: Standard_CString): Standard_RangeError {.constructor,importcpp: "Standard_RangeError".}
proc Throw*(this: Standard_RangeError)  {.importcpp: "Throw".}
proc Raise*(this: Standard_RangeError, theMessage: Standard_CString)  {.importcpp: "Raise".}
#proc Raise*(this: Standard_RangeError, theMessage: Standard_SStream)  {.importcpp: "Raise".}
#proc NewInstance*(this: Standard_RangeError, theMessage: Standard_CString): opencascade::handle<Standard_RangeError>  {.importcpp: "NewInstance".}
#proc get_type_name*(this: Standard_RangeError): const char *  {.importcpp: "get_type_name".}
#proc get_type_descriptor*(this: Standard_RangeError): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
#proc DynamicType*(this: Standard_RangeError): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
{.pop.} # header: "Standard_RangeError.hxx
