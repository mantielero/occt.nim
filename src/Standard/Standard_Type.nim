{.push header: "Standard_Type.hxx".}


# Constructors and methods
proc constructor_Standard_Type*(theSystemName: cstring, theName: cstring, theSize: Standard_Size, theParent: Handle[Standard_Type]): Standard_Type {.constructor,importcpp: "Standard_Type(@)".}
  ## Constructor is private

proc SystemName*(this: Standard_Type): Standard_CString  {.importcpp: "SystemName".}
  ## Returns the system type name of the class (typeinfo.name)

proc Name*(this: Standard_Type): Standard_CString  {.importcpp: "Name".}
  ## Returns the given name of the class type (get_type_name)

proc Size*(this: Standard_Type): Standard_Size  {.importcpp: "Size".}
  ## Returns the size of the class instance in bytes

proc Parent*(this: Standard_Type): Handle[Standard_Type]  {.importcpp: "Parent".}
  ## Returns descriptor of the base class in the hierarchy

proc SubType*(this: Standard_Type, theOther: Handle[Standard_Type]): Standard_Boolean  {.importcpp: "SubType".}
  ## Returns True if this type is the same as theOther, or inherits from
  ## theOther. Note that multiple inheritance is not supported.

proc SubType*(this: Standard_Type, theOther: Standard_CString): Standard_Boolean  {.importcpp: "SubType".}
  ## Returns True if this type is the same as theOther, or inherits from
  ## theOther. Note that multiple inheritance is not supported.

proc Print*(this: Standard_Type, theStream: var Standard_OStream)  {.importcpp: "Print".}
  ## Prints type (address of descriptor + name) to a stream

proc Register*(this: var Standard_Type, theSystemName: cstring, theName: cstring, theSize: Standard_Size, theParent: Handle[Standard_Type]): Standard_Type *  {.importcpp: "Register".}
  ## Register a type; returns either new or existing descriptor.

proc get_type_name*(this: var Standard_Type): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_Type): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_Type): Handle[Standard_Type]  {.importcpp: "DynamicType".}

proc get*(this: var type_instance): Handle[Standard_Type]  {.importcpp: "get".}

proc get*(this: var type_instance): Handle[Standard_Type]  {.importcpp: "get".}

proc get*(this: var type_instance): Handle[Standard_Type]  {.importcpp: "get".}

{.pop.} # header: "Standard_Type.hxx
