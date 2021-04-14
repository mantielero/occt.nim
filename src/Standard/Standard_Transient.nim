{.push header: "Standard_Transient.hxx".}


# Constructors and methods
proc constructor_Standard_Transient*(): Standard_Transient {.constructor,importcpp: "Standard_Transient".}
  ## Empty constructor

proc constructor_Standard_Transient*(Standard_Transient): Standard_Transient {.constructor,importcpp: "Standard_Transient(@)".}
  ## Copy constructor -- does nothing

proc ` new`*(this: var Standard_Transient, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_Transient, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var Standard_Transient, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var Standard_Transient, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var Standard_Transient, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_Transient, pointer, pointer)  {.importcpp: "` delete`".}

proc `=`*(this: var Standard_Transient, Standard_Transient): Standard_Transient  {.importcpp: "`=`".}
  ## Assignment operator, needed to avoid copying reference counter

proc Delete*(this: Standard_Transient)  {.importcpp: "Delete".}
  ## Memory deallocator for transient classes

proc get_type_name*(this: var Standard_Transient): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_Transient): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}
  ## Returns type descriptor of Standard_Transient class

proc DynamicType*(this: Standard_Transient): Handle[Standard_Type]  {.importcpp: "DynamicType".}
  ## Returns a type descriptor about this object.

proc IsInstance*(this: Standard_Transient, theType: Handle[Standard_Type]): Standard_Boolean  {.importcpp: "IsInstance".}
  ## Returns a true value if this is an instance of Type.

proc IsInstance*(this: Standard_Transient, theTypeName: Standard_CString): Standard_Boolean  {.importcpp: "IsInstance".}
  ## Returns a true value if this is an instance of TypeName.

proc IsKind*(this: Standard_Transient, theType: Handle[Standard_Type]): Standard_Boolean  {.importcpp: "IsKind".}
  ## Returns true if this is an instance of Type or an instance of any
  ## class that inherits from Type. Note that multiple inheritance is not
  ## supported by OCCT RTTI mechanism.

proc IsKind*(this: Standard_Transient, theTypeName: Standard_CString): Standard_Boolean  {.importcpp: "IsKind".}
  ## Returns true if this is an instance of TypeName or an instance of any
  ## class that inherits from TypeName. Note that multiple inheritance is
  ## not supported by OCCT RTTI mechanism.

proc This*(this: Standard_Transient): Standard_Transient *  {.importcpp: "This".}
  ## Returns non-const pointer to this object (like const_cast). For
  ## protection against creating handle to objects allocated in stack or
  ## call from constructor, it will raise exception Standard_ProgramError
  ## if reference counter is zero.

proc GetRefCount*(this: Standard_Transient): Standard_Integer  {.importcpp: "GetRefCount".}
  ## Get the reference counter of this object

proc IncrementRefCounter*(this: Standard_Transient)  {.importcpp: "IncrementRefCounter".}
  ## Increments the reference counter of this object

proc DecrementRefCounter*(this: Standard_Transient): Standard_Integer  {.importcpp: "DecrementRefCounter".}
  ## Decrements the reference counter of this object; returns the
  ## decremented value

{.pop.} # header: "Standard_Transient.hxx
