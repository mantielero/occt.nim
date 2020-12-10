{.push header: "Standard_DimensionMismatch.hxx".}


# Constructors and methods
proc constructor_Standard_DimensionMismatch*(): Standard_DimensionMismatch {.constructor,importcpp: "Standard_DimensionMismatch".}

proc constructor_Standard_DimensionMismatch*(theMessage: Standard_CString): Standard_DimensionMismatch {.constructor,importcpp: "Standard_DimensionMismatch(@)".}

proc Throw*(this: Standard_DimensionMismatch)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_DimensionMismatch, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_DimensionMismatch, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_DimensionMismatch, theMessage: Standard_CString): Handle[Standard_DimensionMismatch]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_DimensionMismatch): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_DimensionMismatch): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_DimensionMismatch): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_DimensionMismatch.hxx
