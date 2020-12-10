{.push header: "Standard_AbortiveTransaction.hxx".}


# Constructors and methods
proc constructor_Standard_AbortiveTransaction*(): Standard_AbortiveTransaction {.constructor,importcpp: "Standard_AbortiveTransaction".}

proc constructor_Standard_AbortiveTransaction*(theMessage: Standard_CString): Standard_AbortiveTransaction {.constructor,importcpp: "Standard_AbortiveTransaction(@)".}

proc Throw*(this: Standard_AbortiveTransaction)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_AbortiveTransaction, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_AbortiveTransaction, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_AbortiveTransaction, theMessage: Standard_CString): Handle[Standard_AbortiveTransaction]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_AbortiveTransaction): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_AbortiveTransaction): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_AbortiveTransaction): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_AbortiveTransaction.hxx
