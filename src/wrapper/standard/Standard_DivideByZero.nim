{.push header: "Standard_DivideByZero.hxx".}


# Constructors and methods
proc constructor_Standard_DivideByZero*(): Standard_DivideByZero {.constructor,importcpp: "Standard_DivideByZero".}

proc constructor_Standard_DivideByZero*(theMessage: Standard_CString): Standard_DivideByZero {.constructor,importcpp: "Standard_DivideByZero(@)".}

proc Throw*(this: Standard_DivideByZero)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_DivideByZero, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_DivideByZero, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_DivideByZero, theMessage: Standard_CString): Handle[Standard_DivideByZero]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_DivideByZero): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_DivideByZero): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_DivideByZero): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_DivideByZero.hxx
