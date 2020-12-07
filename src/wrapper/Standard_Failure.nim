{.push header: "Standard_Failure.hxx".}


# Constructors and methods
proc constructor_Standard_Failure*(): Standard_Failure {.constructor,importcpp: "Standard_Failure".}
proc constructor_Standard_Failure*(f: Standard_Failure): Standard_Failure {.constructor,importcpp: "Standard_Failure".}
proc constructor_Standard_Failure*(aString: Standard_CString): Standard_Failure {.constructor,importcpp: "Standard_Failure".}
#proc operator=*(this: Standard_Failure, f: Standard_Failure): Standard_Failure &  {.importcpp: "operator=".}
#proc Print*(this: Standard_Failure, s: Standard_OStream)  {.importcpp: "Print".}
proc GetMessageString*(this: Standard_Failure): Standard_CString  {.importcpp: "GetMessageString".}
proc SetMessageString*(this: Standard_Failure, aMessage: Standard_CString)  {.importcpp: "SetMessageString".}
proc Reraise*(this: Standard_Failure)  {.importcpp: "Reraise".}
proc Reraise*(this: Standard_Failure, aMessage: Standard_CString)  {.importcpp: "Reraise".}
#proc Reraise*(this: Standard_Failure, aReason: Standard_SStream)  {.importcpp: "Reraise".}
proc Raise*(this: Standard_Failure, aMessage: Standard_CString)  {.importcpp: "Raise".}
#proc Raise*(this: Standard_Failure, aReason: Standard_SStream)  {.importcpp: "Raise".}
#proc NewInstance*(this: Standard_Failure, aMessage: Standard_CString): opencascade::handle<Standard_Failure>  {.importcpp: "NewInstance".}
proc Jump*(this: Standard_Failure)  {.importcpp: "Jump".}
#proc Caught*(this: Standard_Failure): opencascade::handle<Standard_Failure>  {.importcpp: "Caught".}
#proc get_type_name*(this: Standard_Failure): const char *  {.importcpp: "get_type_name".}
#proc get_type_descriptor*(this: Standard_Failure): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
#proc DynamicType*(this: Standard_Failure): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
proc Throw*(this: Standard_Failure)  {.importcpp: "Throw".}
{.pop.} # header: "Standard_Failure.hxx
