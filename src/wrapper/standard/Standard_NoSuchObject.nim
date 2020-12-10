{.push header: "Standard_NoSuchObject.hxx".}


# Constructors and methods
proc constructor_Standard_NoSuchObject*(): Standard_NoSuchObject {.constructor,importcpp: "Standard_NoSuchObject".}

proc constructor_Standard_NoSuchObject*(theMessage: Standard_CString): Standard_NoSuchObject {.constructor,importcpp: "Standard_NoSuchObject(@)".}

proc Throw*(this: Standard_NoSuchObject)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NoSuchObject, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NoSuchObject, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NoSuchObject, theMessage: Standard_CString): Handle[Standard_NoSuchObject]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NoSuchObject): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NoSuchObject): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NoSuchObject): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NoSuchObject.hxx
