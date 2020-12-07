{.push header: "Standard_Handle.hxx".}


# Constructors and methods
proc constructor_handle<T>*(): handle {.constructor,importcpp: "handle<T>".}
proc constructor_handle<T>*(thePtr: T *): handle {.constructor,importcpp: "handle<T>".}
proc constructor_handle<T>*(theHandle: handle<T>): handle {.constructor,importcpp: "handle<T>".}
proc constructor_handle<T>*(theHandle: handle<T> &&): handle {.constructor,importcpp: "handle<T>".}
proc Nullify*(this: handle)  {.importcpp: "Nullify".}
proc IsNull*(this: handle): bool  {.importcpp: "IsNull".}
proc reset*(this: handle, thePtr: T *)  {.importcpp: "reset".}
proc operator=*(this: handle, theHandle: handle<T>): handle<T> &  {.importcpp: "operator=".}
proc operator=*(this: handle, thePtr: T *): handle<T> &  {.importcpp: "operator=".}
proc operator=*(this: handle, theHandle: handle<T> &&): handle<T> &  {.importcpp: "operator=".}
proc get*(this: handle): T *  {.importcpp: "get".}
proc operator->*(this: handle): T *  {.importcpp: "operator->".}
proc operator**(this: handle): T &  {.importcpp: "operator*".}
proc Assign*(this: handle, thePtr: Standard_Transient *)  {.importcpp: "Assign".}
proc BeginScope*(this: handle)  {.importcpp: "BeginScope".}
proc EndScope*(this: handle)  {.importcpp: "EndScope".}
{.pop.} # header: "Standard_Handle.hxx
