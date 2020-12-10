{.push header: "gp_VectorWithNullMagnitude.hxx".}


# Constructors and methods
proc constructor_gp_VectorWithNullMagnitude*(): gp_VectorWithNullMagnitude {.constructor,importcpp: "gp_VectorWithNullMagnitude".}

proc constructor_gp_VectorWithNullMagnitude*(theMessage: Standard_CString): gp_VectorWithNullMagnitude {.constructor,importcpp: "gp_VectorWithNullMagnitude(@)".}

proc Throw*(this: gp_VectorWithNullMagnitude)  {.importcpp: "Throw".}

proc Raise*(this: var gp_VectorWithNullMagnitude, theMessage: Standard_CString)  {.importcpp: "Raise".}

proc Raise*(this: var gp_VectorWithNullMagnitude, theMessage: var Standard_SStream)  {.importcpp: "Raise".}

proc NewInstance*(this: var gp_VectorWithNullMagnitude, theMessage: Standard_CString): Handle[gp_VectorWithNullMagnitude]  {.importcpp: "NewInstance".}

proc get_type_name*(this: var gp_VectorWithNullMagnitude): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var gp_VectorWithNullMagnitude): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: gp_VectorWithNullMagnitude): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "gp_VectorWithNullMagnitude.hxx
