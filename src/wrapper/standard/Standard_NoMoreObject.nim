{.push header: "Standard_NoMoreObject.hxx".}


# Constructors and methods
proc constructor_Standard_NoMoreObject*(): Standard_NoMoreObject {.constructor,importcpp: "Standard_NoMoreObject".}

proc constructor_Standard_NoMoreObject*(theMessage: Standard_CString): Standard_NoMoreObject {.constructor,importcpp: "Standard_NoMoreObject(@)".}

proc Throw*(this: Standard_NoMoreObject)  {.importcpp: "Throw".}

proc Raise*(this: var Standard_NoMoreObject, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var Standard_NoMoreObject, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var Standard_NoMoreObject, theMessage: Standard_CString): Handle[Standard_NoMoreObject]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var Standard_NoMoreObject): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_NoMoreObject): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_NoMoreObject): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_NoMoreObject.hxx
