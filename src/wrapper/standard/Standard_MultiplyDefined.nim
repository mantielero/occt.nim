{.push header: "Standard_MultiplyDefined.hxx".}


# Constructors and methods
proc constructor_Standard_MultiplyDefined*(): Standard_MultiplyDefined {.constructor,importcpp: "Standard_MultiplyDefined".}

proc constructor_Standard_MultiplyDefined*(theMessage: Standard_CString): Standard_MultiplyDefined {.constructor,importcpp: "Standard_MultiplyDefined(@)".}

proc Throw*(this: Standard_MultiplyDefined)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_MultiplyDefined, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_MultiplyDefined, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_MultiplyDefined, theMessage: Standard_CString): Handle[Standard_MultiplyDefined]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_MultiplyDefined): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_MultiplyDefined): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_MultiplyDefined): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_MultiplyDefined.hxx
