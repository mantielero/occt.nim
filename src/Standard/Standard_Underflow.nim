{.push header: "Standard_Underflow.hxx".}


# Constructors and methods
proc constructor_Standard_Underflow*(): Standard_Underflow {.constructor,importcpp: "Standard_Underflow".}

proc constructor_Standard_Underflow*(theMessage: Standard_CString): Standard_Underflow {.constructor,importcpp: "Standard_Underflow(@)".}

proc Throw*(this: Standard_Underflow)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_Underflow, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_Underflow, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_Underflow, theMessage: Standard_CString): Handle[Standard_Underflow]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_Underflow): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_Underflow): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_Underflow): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_Underflow.hxx
