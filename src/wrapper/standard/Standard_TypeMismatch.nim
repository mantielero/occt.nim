{.push header: "Standard_TypeMismatch.hxx".}


# Constructors and methods
proc constructor_Standard_TypeMismatch*(): Standard_TypeMismatch {.constructor,importcpp: "Standard_TypeMismatch".}

proc constructor_Standard_TypeMismatch*(theMessage: Standard_CString): Standard_TypeMismatch {.constructor,importcpp: "Standard_TypeMismatch(@)".}

proc Throw*(this: Standard_TypeMismatch)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_TypeMismatch, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_TypeMismatch, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_TypeMismatch, theMessage: Standard_CString): Handle[Standard_TypeMismatch]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_TypeMismatch): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_TypeMismatch): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_TypeMismatch): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_TypeMismatch.hxx
