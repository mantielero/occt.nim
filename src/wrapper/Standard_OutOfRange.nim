{.push header: "Standard_OutOfRange.hxx".}


# Constructors and methods
proc constructor_Standard_OutOfRange*(): Standard_OutOfRange {.constructor,importcpp: "Standard_OutOfRange".}
proc constructor_Standard_OutOfRange*(theMessage: Standard_CString): Standard_OutOfRange {.constructor,importcpp: "Standard_OutOfRange".}
proc Throw*(this: Standard_OutOfRange)  {.importcpp: "Throw".}
proc Raise*(this: Standard_OutOfRange, theMessage: Standard_CString)  {.importcpp: "Raise".}
#proc Raise*(this: Standard_OutOfRange, theMessage: Standard_SStream)  {.importcpp: "Raise".}
# proc NewInstance*(this: Standard_OutOfRange, theMessage: Standard_CString): opencascade::handle<Standard_OutOfRange>  {.importcpp: "NewInstance".}
# proc get_type_name*(this: Standard_OutOfRange): const char *  {.importcpp: "get_type_name".}
# proc get_type_descriptor*(this: Standard_OutOfRange): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
# proc DynamicType*(this: Standard_OutOfRange): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
{.pop.} # header: "Standard_OutOfRange.hxx
