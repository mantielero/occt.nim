{.push header: "Standard_LicenseNotFound.hxx".}


# Constructors and methods
proc constructor_Standard_LicenseNotFound*(): Standard_LicenseNotFound {.constructor,importcpp: "Standard_LicenseNotFound".}

proc constructor_Standard_LicenseNotFound*(theMessage: Standard_CString): Standard_LicenseNotFound {.constructor,importcpp: "Standard_LicenseNotFound(@)".}

proc Throw*(this: Standard_LicenseNotFound)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_LicenseNotFound, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_LicenseNotFound, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_LicenseNotFound, theMessage: Standard_CString): Handle[Standard_LicenseNotFound]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_LicenseNotFound): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_LicenseNotFound): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_LicenseNotFound): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_LicenseNotFound.hxx
