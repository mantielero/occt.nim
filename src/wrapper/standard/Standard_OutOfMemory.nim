{.push header: "Standard_OutOfMemory.hxx".}


# Constructors and methods
proc constructor_Standard_OutOfMemory*(theMessage: Standard_CString): Standard_OutOfMemory {.constructor,importcpp: "Standard_OutOfMemory(@)".}
  ## Constructor is kept public for backward compatibility

proc Throw*(this: Standard_OutOfMemory)  {.importcpp: "Throw".}

proc GetMessageString*(this: Standard_OutOfMemory): Standard_CString  {.importcpp: "GetMessageString".}
  ## Returns error message

proc SetMessageString*(this: var Standard_OutOfMemory, aMessage: Standard_CString)  {.importcpp: "SetMessageString".}
  ## Sets error message

proc Raise*(this: var Standard_OutOfMemory, theMessage: Standard_CString)  {.importcpp: "Raise".}
  ## Raises exception with specified message string

proc Raise*(this: var Standard_OutOfMemory, theMessage: var Standard_SStream)  {.importcpp: "Raise".}
  ## Raises exception with specified message string

proc NewInstance*(this: var Standard_OutOfMemory, theMessage: Standard_CString): Handle[Standard_OutOfMemory]  {.importcpp: "NewInstance".}
  ## Returns global instance of exception

proc get_type_name*(this: var Standard_OutOfMemory): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_OutOfMemory): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_OutOfMemory): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "Standard_OutOfMemory.hxx
