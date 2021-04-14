{.push header: "Standard_ErrorHandler.hxx".}


# Constructors and methods
proc constructor_Standard_ErrorHandler*(): Standard_ErrorHandler {.constructor,importcpp: "Standard_ErrorHandler".}
  ## Create a ErrorHandler (to be used with try{}catch(){}). It uses the
  ## "setjmp" and "longjmp" routines.

proc constructor_Callback*(): Callback {.constructor,importcpp: "Callback".}
  ## Empty constructor

proc constructor_Callback*(): Callback {.constructor,importcpp: "Callback".}
  ## Empty constructor

proc ` new`*(this: var Standard_ErrorHandler, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_ErrorHandler, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var Standard_ErrorHandler, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var Standard_ErrorHandler, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var Standard_ErrorHandler, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_ErrorHandler, pointer, pointer)  {.importcpp: "` delete`".}

proc Destroy*(this: var Standard_ErrorHandler)  {.importcpp: "Destroy".}
  ## Unlinks and checks if there is a raised exception.

proc Unlink*(this: var Standard_ErrorHandler)  {.importcpp: "Unlink".}
  ## Removes handler from the handlers list

proc Catches*(this: var Standard_ErrorHandler, aType: Handle[Standard_Type]): Standard_Boolean  {.importcpp: "Catches".}
  ## Returns "True" if the caught exception has the same type or inherits
  ## from "aType"

proc Label*(this: var Standard_ErrorHandler): Standard_JmpBuf  {.importcpp: "Label".}
  ## Returns label for jump

proc Error*(this: Standard_ErrorHandler): Handle[Standard_Failure]  {.importcpp: "Error".}
  ## Returns the current Error.

proc LastCaughtError*(this: var Standard_ErrorHandler): Handle[Standard_Failure]  {.importcpp: "LastCaughtError".}
  ## Returns the caught exception.

proc IsInTryBlock*(this: var Standard_ErrorHandler): Standard_Boolean  {.importcpp: "IsInTryBlock".}
  ## Test if the code is currently running in a try block

proc Abort*(this: var Standard_ErrorHandler, theError: Handle[Standard_Failure])  {.importcpp: "Abort".}
  ## A exception is raised but it is not yet caught. So Abort the current
  ## function and transmit the exception to "calling routines". Warning: If
  ## no catch is prepared for this exception, it displays the exception
  ## name and calls "exit(1)".

proc Error*(this: var Standard_ErrorHandler, aError: Handle[Standard_Failure])  {.importcpp: "Error".}
  ## Set the Error which will be transmitted to "calling routines".

proc FindHandler*(this: var Standard_ErrorHandler, theStatus: Standard_HandlerStatus, theUnlink: Standard_Boolean): Standard_PErrorHandler  {.importcpp: "FindHandler".}
  ## Returns the current handler (closest in the stack in the current
  ## execution thread)

proc ` new`*(this: var Callback, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var Callback, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var Callback, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var Callback, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var Callback, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var Callback, pointer, pointer)  {.importcpp: "` delete`".}

proc RegisterCallback*(this: var Callback)  {.importcpp: "RegisterCallback".}
  ## Registers this callback object in the current error handler (if
  ## found).

proc UnregisterCallback*(this: var Callback)  {.importcpp: "UnregisterCallback".}
  ## Unregisters this callback object from the error handler.

proc DestroyCallback*(this: var Callback)  {.importcpp: "DestroyCallback".}
  ## The callback function to perform necessary callback action. Called by
  ## the exception handler when it is being destroyed but still has this
  ## callback registered.

proc RegisterCallback*(this: var Callback)  {.importcpp: "RegisterCallback".}
  ## Registers this callback object in the current error handler (if
  ## found).

proc UnregisterCallback*(this: var Callback)  {.importcpp: "UnregisterCallback".}
  ## Unregisters this callback object from the error handler.

{.pop.} # header: "Standard_ErrorHandler.hxx
