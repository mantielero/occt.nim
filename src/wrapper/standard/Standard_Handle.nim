{.push header: "Standard_Handle.hxx".}


# Constructors and methods
proc constructor_handle<T>*(): handle {.constructor,importcpp: "handle<T>".}
  ## Empty constructor

proc constructor_handle<T>*(thePtr: T *): handle {.constructor,importcpp: "handle<T>(@)".}
  ## Constructor from pointer to new object

proc constructor_handle<T>*(theHandle: handle<T>): handle {.constructor,importcpp: "handle<T>(@)".}
  ## Copy constructor

proc constructor_handle<T>*(theHandle: var handle<T> &): handle {.constructor,importcpp: "handle<T>(@)".}
  ## Move constructor

proc Nullify*(this: var handle)  {.importcpp: "Nullify".}
  ## Nullify the handle

proc IsNull*(this: handle): bool  {.importcpp: "IsNull".}
  ## Check for being null

proc reset*(this: var handle, thePtr: T *)  {.importcpp: "reset".}
  ## Reset by new pointer

proc `=`*(this: var handle, theHandle: handle<T>): handle<T>  {.importcpp: "`=`".}
  ## Assignment operator

proc `=`*(this: var handle, thePtr: T *): handle<T>  {.importcpp: "`=`".}
  ## Assignment to pointer

proc `=`*(this: var handle, theHandle: var handle<T> &): handle<T>  {.importcpp: "`=`".}
  ## Move operator

proc get*(this: handle): T *  {.importcpp: "get".}
  ## STL-like cast to pointer to referred object (note non-const).

proc `->`*(this: handle): T *  {.importcpp: "`->`".}
  ## Member access operator (note non-const)

proc `*`*(this: handle): T  {.importcpp: "`*`".}
  ## Dereferencing operator (note non-const)

proc Assign*(this: var handle, thePtr: Standard_Transient *)  {.importcpp: "Assign".}
  ## Assignment

proc BeginScope*(this: var handle)  {.importcpp: "BeginScope".}
  ## Increment reference counter of referred object

proc EndScope*(this: var handle)  {.importcpp: "EndScope".}
  ## Decrement reference counter and if 0, destroy referred object

{.pop.} # header: "Standard_Handle.hxx
