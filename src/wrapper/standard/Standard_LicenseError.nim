{.push header: "Standard_LicenseError.hxx".}


# Constructors and methods
proc constructor_Standard_LicenseError*(): Standard_LicenseError {.constructor,importcpp: "Standard_LicenseError".}

proc constructor_Standard_LicenseError*(theMessage: Standard_CString): Standard_LicenseError {.constructor,importcpp: "Standard_LicenseError(@)".}

proc Throw*(this: Standard_LicenseError)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_LicenseError, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_LicenseError, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_LicenseError, theMessage: Standard_CString): Handle[Standard_LicenseError]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_LicenseError): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_LicenseError): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_LicenseError): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_LicenseError.hxx
