{.push header: "Standard_NotImplemented.hxx".}


# Constructors and methods
proc constructor_Standard_NotImplemented*(): Standard_NotImplemented {.constructor,importcpp: "Standard_NotImplemented".}

proc constructor_Standard_NotImplemented*(theMessage: Standard_CString): Standard_NotImplemented {.constructor,importcpp: "Standard_NotImplemented(@)".}

proc Throw*(this: Standard_NotImplemented)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NotImplemented, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NotImplemented, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NotImplemented, theMessage: Standard_CString): Handle[Standard_NotImplemented]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NotImplemented): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NotImplemented): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NotImplemented): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NotImplemented.hxx
