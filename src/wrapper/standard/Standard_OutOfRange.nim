{.push header: "Standard_OutOfRange.hxx".}


# Constructors and methods
proc constructor_Standard_OutOfRange*(): Standard_OutOfRange {.constructor,importcpp: "Standard_OutOfRange".}

proc constructor_Standard_OutOfRange*(theMessage: Standard_CString): Standard_OutOfRange {.constructor,importcpp: "Standard_OutOfRange(@)".}

proc Throw*(this: Standard_OutOfRange)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_OutOfRange, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_OutOfRange, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_OutOfRange, theMessage: Standard_CString): Handle[Standard_OutOfRange]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_OutOfRange): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_OutOfRange): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_OutOfRange): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_OutOfRange.hxx
