{.push header: "Standard_Type.hxx".}


# Constructors and methods
#proc constructor_Standard_Type*(theSystemName: char *, theName: char *, theSize: Standard_Size, theParent: opencascade::handle<Standard_Type>): Standard_Type {.constructor,importcpp: "Standard_Type".}
proc SystemName*(this: Standard_Type): Standard_CString  {.importcpp: "SystemName".}
proc Name*(this: Standard_Type): Standard_CString  {.importcpp: "Name".}
proc Size*(this: Standard_Type): Standard_Size  {.importcpp: "Size".}
#proc Parent*(this: Standard_Type): const opencascade::handle<Standard_Type> &  {.importcpp: "Parent".}
#proc SubType*(this: Standard_Type, theOther: opencascade::handle<Standard_Type>): Standard_Boolean  {.importcpp: "SubType".}
proc SubType*(this: Standard_Type, theOther: Standard_CString): Standard_Boolean  {.importcpp: "SubType".}
#proc Print*(this: Standard_Type, theStream: Standard_OStream)  {.importcpp: "Print".}
#proc Register*(this: Standard_Type, theSystemName: char *, theName: char *, theSize: Standard_Size, theParent: opencascade::handle<Standard_Type>): Standard_Type *  {.importcpp: "Register".}
#proc get_type_name*(this: Standard_Type): const char *  {.importcpp: "get_type_name".}
#proc get_type_descriptor*(this: Standard_Type): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
#proc DynamicType*(this: Standard_Type): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
#proc get*(this: type_instance): const opencascade::handle<Standard_Type> &  {.importcpp: "get".}
#proc get*(this: type_instance): opencascade::handle<Standard_Type>  {.importcpp: "get".}
#proc get*(this: type_instance): const opencascade::handle<Standard_Type> &  {.importcpp: "get".}
{.pop.} # header: "Standard_Type.hxx
