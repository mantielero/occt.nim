{.push header: "Standard_Failure.hxx".}


# Constructors and methods
proc constructor_Standard_Failure*(): Standard_Failure {.constructor,importcpp: "Standard_Failure".}
  ## Creates a status object of type "Failure".

proc constructor_Standard_Failure*(f: Standard_Failure): Standard_Failure {.constructor,importcpp: "Standard_Failure(@)".}
  ## Copy constructor

proc constructor_Standard_Failure*(aString: Standard_CString): Standard_Failure {.constructor,importcpp: "Standard_Failure(@)".}
  ## Creates a status object of type "Failure".

proc `=`*(this: var Standard_Failure, f: Standard_Failure): Standard_Failure  {.importcpp: "`=`".}
  ## Assignment operator

proc Print*(this: Standard_Failure, s: var Standard_OStream)  {.importcpp: "Print".}
  ## Prints on the stream the exception name followed by the error message.
  ## Level: Advanced Warning: The operator "OStream& operator<<
  ## (Standard_OStream&, Handle(Standard_Failure)&)" is implemented. (This
  ## operator uses the method Print)

proc GetMessageString*(this: Standard_Failure): Standard_CString  {.importcpp: "GetMessageString".}
  ## Returns error message

proc SetMessageString*(this: var Standard_Failure, aMessage: Standard_CString)  {.importcpp: "SetMessageString".}
  ## Sets error message

proc Reraise*(this: var Standard_Failure)  {.importcpp: "Reraise".}

proc Reraise*(this: var Standard_Failure, aMessage: Standard_CString)  {.importcpp: "Reraise".}

proc Reraise*(this: var Standard_Failure, aReason: Standard_SStream)  {.importcpp: "Reraise".}
  ## Reraises a caught exception and changes its error message.

proc Raise*(this: var Standard_Failure, aMessage: Standard_CString)  {.importcpp: "Raise".}
  ## Raises an exception of type "Failure" and associates an error message
  ## to it. The message can be printed in an exception handler.

proc Raise*(this: var Standard_Failure, aReason: Standard_SStream)  {.importcpp: "Raise".}
  ## Raises an exception of type "Failure" and associates an error message
  ## to it. The message can be constructed at run-time.

proc NewInstance*(this: var Standard_Failure, aMessage: Standard_CString): Handle[Standard_Failure]  {.importcpp: "NewInstance".}
  ## Used to construct an instance of the exception object as a handle.
  ## Shall be used to protect against possible construction of exception
  ## object in C stack -- that is dangerous since some of methods require
  ## that object was allocated dynamically.

proc Jump*(this: var Standard_Failure)  {.importcpp: "Jump".}
  ## Used to throw CASCADE exception from C signal handler. On platforms
  ## that do not allow throwing C++ exceptions from this handler (e.g.
  ## Linux), uses longjump to get to the current active signal handler, and
  ## only then is converted to C++ exception.

proc Caught*(this: var Standard_Failure): Handle[Standard_Failure]  {.importcpp: "Caught".}
  ## Returns the last caught exception. Needed when exceptions are emulated
  ## by C longjumps, in other cases is also provided for compatibility.

proc get_type_name*(this: var Standard_Failure): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Standard_Failure): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc DynamicType*(this: Standard_Failure): Handle[Standard_Type]  {.importcpp: "DynamicType".}

proc Throw*(this: Standard_Failure)  {.importcpp: "Throw".}
  ## Used only if standard C++ exceptions are used. Throws exception of the
  ## same type as this by C++ throw, and stores current object as last
  ## thrown exception, to be accessible by method Caught()

{.pop.} # header: "Standard_Failure.hxx
