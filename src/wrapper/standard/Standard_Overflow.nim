{.push header: "Standard_Overflow.hxx".}


# Constructors and methods
proc constructor_Standard_Overflow*(): Standard_Overflow {.constructor,importcpp: "Standard_Overflow".}

proc constructor_Standard_Overflow*(theMessage: Standard_CString): Standard_Overflow {.constructor,importcpp: "Standard_Overflow(@)".}

proc Throw*(this: Standard_Overflow)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_Overflow, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_Overflow, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_Overflow, theMessage: Standard_CString): Handle[Standard_Overflow]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_Overflow): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_Overflow): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_Overflow): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_Overflow.hxx
