{.push header: "Standard_RangeError.hxx".}


# Constructors and methods
proc constructor_Standard_RangeError*(): Standard_RangeError {.constructor,importcpp: "Standard_RangeError".}

proc constructor_Standard_RangeError*(theMessage: Standard_CString): Standard_RangeError {.constructor,importcpp: "Standard_RangeError(@)".}

proc Throw*(this: Standard_RangeError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_RangeError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_RangeError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_RangeError, theMessage: Standard_CString): Handle[Standard_RangeError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_RangeError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_RangeError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_RangeError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_RangeError.hxx
