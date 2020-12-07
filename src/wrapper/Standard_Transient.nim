{.push header: "Standard_Transient.hxx".}


# Constructors and methods
proc constructor_Standard_Transient*(): Standard_Transient {.constructor,importcpp: "Standard_Transient".}
proc constructor_Standard_Transient*(tmp:Standard_Transient): Standard_Transient {.constructor,importcpp: "Standard_Transient".}
#proc operator new*(this: Standard_Transient, theSize: int)  {.importcpp: "operator new".}
#proc operator delete*(this: Standard_Transient, theAddress: void *)  {.importcpp: "operator delete".}
#proc operator new[]*(this: Standard_Transient, theSize: int)  {.importcpp: "operator new[]".}
#proc operator delete[]*(this: Standard_Transient, theAddress: void *)  {.importcpp: "operator delete[]".}
#proc operator new*(this: Standard_Transient, int, theAddress: void *)  {.importcpp: "operator new".}
#proc operator delete*(this: Standard_Transient, void *, void *)  {.importcpp: "operator delete".}
#proc operator=*(this: Standard_Transient, Standard_Transient): Standard_Transient &  {.importcpp: "operator=".}
proc Delete*(this: Standard_Transient)  {.importcpp: "Delete".}
#proc get_type_name*(this: Standard_Transient): const char *  {.importcpp: "get_type_name".}
#proc get_type_descriptor*(this: Standard_Transient): const opencascade::handle<Standard_Type> &  {.importcpp: "get_type_descriptor".}
#proc DynamicType*(this: Standard_Transient): const opencascade::handle<Standard_Type> &  {.importcpp: "DynamicType".}
#proc IsInstance*(this: Standard_Transient, theType: opencascade::handle<Standard_Type>): Standard_Boolean  {.importcpp: "IsInstance".}
proc IsInstance*(this: Standard_Transient, theTypeName: Standard_CString): Standard_Boolean  {.importcpp: "IsInstance".}
#proc IsKind*(this: Standard_Transient, theType: opencascade::handle<Standard_Type>): Standard_Boolean  {.importcpp: "IsKind".}
proc IsKind*(this: Standard_Transient, theTypeName: Standard_CString): Standard_Boolean  {.importcpp: "IsKind".}
#proc This*(this: Standard_Transient): Standard_Transient *  {.importcpp: "This".}
proc GetRefCount*(this: Standard_Transient): Standard_Integer  {.importcpp: "GetRefCount".}
proc IncrementRefCounter*(this: Standard_Transient)  {.importcpp: "IncrementRefCounter".}
proc DecrementRefCounter*(this: Standard_Transient): Standard_Integer  {.importcpp: "DecrementRefCounter".}
{.pop.} # header: "Standard_Transient.hxx
