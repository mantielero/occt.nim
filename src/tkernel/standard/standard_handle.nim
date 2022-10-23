{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}
## ! Intrusive smart pointer for use with Standard_Transient class and its descendants.
## !
## ! This class is similar to boost::intrusive_ptr<>. The reference counter
## ! is part of the base class (Standard_Transient), thus creation of a handle
## ! does not require allocation of additional memory for the counter.
## ! All handles to the same object share the common counter; object is deleted
## ! when the last handle pointing on it is destroyed. It is safe to create a new
## ! handle from plain C pointer to the object already pointed by another handle.
## ! The same object can be referenced by handles of different types (as soon as
## ! they are compatible with the object type).
## !
## ! Handle has type cast operator to const reference to handle to the base
## ! types, which allows it to be passed by reference in functions accepting
## ! reference to handle to base class, without copying.
## !
## ! By default, the type cast operator is provided also for non-const reference.
## ! These casts (potentially unsafe) can be disabled by defining macro
## ! OCCT_HANDLE_NOCAST; if it is defined, generalized copy constructor
## ! and assignment operators are defined allowing to initialize handle
## ! of base type from handle to derived type.
## !
## ! Weak pointers are not supported.
import standard_types


proc newHandle*[T](): Handle[T] {.cdecl, constructor,
                                     importcpp: "opencascade::handle<\'*0>(@)",
                                     header: "Standard_Handle.hxx".}
proc newHandle*[T](thePtr: ptr T): Handle[T] {.cdecl, constructor,
    importcpp: "opencascade::handle<\'*0>(@)", header: "Standard_Handle.hxx".}
proc newHandle*[T](theHandle: Handle): Handle[T] {.cdecl, constructor,
    importcpp: "opencascade::handle<\'*0>(@)", header: "Standard_Handle.hxx".}

proc destroyHandle*[T](this: var Handle[T]) {.cdecl, importcpp: "#.~handle()",
    header: "Standard_Handle.hxx".}
proc nullify*[T](this: var Handle[T]) {.cdecl, importcpp: "Nullify", header: "Standard_Handle.hxx".}
proc isNull*[T](this: Handle[T]): bool {.noSideEffect, cdecl, importcpp: "IsNull",
                                     header: "Standard_Handle.hxx".}
proc reset*[T](this: var Handle[T]; thePtr: ptr T) {.cdecl, importcpp: "reset",
    header: "Standard_Handle.hxx".}
proc get*[T](this: Handle[T]): ptr T {.noSideEffect, cdecl, importcpp: "get",
                                  header: "Standard_Handle.hxx".}
proc `->`*[T](this: Handle[T]): ptr T {.noSideEffect, cdecl, importcpp: "(# -> #)",
                                   header: "Standard_Handle.hxx".}
proc `*`*[T](this: Handle[T]): var T {.noSideEffect, cdecl, importcpp: "(* #)",
                                  header: "Standard_Handle.hxx".}
proc `==`*[T; T2](this: Handle[T]; theHandle: Handle[T2]): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "Standard_Handle.hxx".}
proc `==`*[T; T2](this: Handle[T]; thePtr: ptr T2): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "Standard_Handle.hxx".}
proc `<`*[T; T2](this: Handle[T]; theHandle: Handle[T2]): bool {.noSideEffect, cdecl,
    importcpp: "(# < #)", header: "Standard_Handle.hxx".}

##  namespace opencascade
## ! Computes a hash code for the standard handle, in the range [1, theUpperBound]
## ! @param theHandle the handle which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]
converter toHandle*[T](this: T): Handle[T] {.
    importcpp: "(@)",
    header: "Standard_Handle.hxx".}
    
converter toHandle*[T](this: ptr T): Handle[T] {.
    importcpp: "(@)",
    header: "Standard_Handle.hxx".}
    
