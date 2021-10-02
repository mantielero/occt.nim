##  Copyright (c) 2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_Transient"
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

type
  handle*[T] {.importcpp: "opencascade::handle<\'0>",
              header: "Standard_Handle.hxx", bycopy.} = object ## ! STL-compliant typedef of contained type
                                                          ## ! Empty constructor

  handleelement_type*[T] = T

proc constructhandle*[T](): handle[T] {.cdecl, constructor,
                                     importcpp: "opencascade::handle<\'*0>(@)",
                                     dynlib: tkernel.}
proc constructhandle*[T](thePtr: ptr T): handle[T] {.cdecl, constructor,
    importcpp: "opencascade::handle<\'*0>(@)", dynlib: tkernel.}
proc constructhandle*[T](theHandle: handle): handle[T] {.cdecl, constructor,
    importcpp: "opencascade::handle<\'*0>(@)", dynlib: tkernel.}
proc destroyhandle*[T](this: var handle[T]) {.cdecl, importcpp: "#.~handle()",
    dynlib: tkernel.}
proc Nullify*[T](this: var handle[T]) {.cdecl, importcpp: "Nullify", dynlib: tkernel.}
proc IsNull*[T](this: handle[T]): bool {.noSideEffect, cdecl, importcpp: "IsNull",
                                     dynlib: tkernel.}
proc reset*[T](this: var handle[T]; thePtr: ptr T) {.cdecl, importcpp: "reset",
    dynlib: tkernel.}
proc get*[T](this: handle[T]): ptr T {.noSideEffect, cdecl, importcpp: "get",
                                  dynlib: tkernel.}
proc `->`*[T](this: handle[T]): ptr T {.noSideEffect, cdecl, importcpp: "(# -> #)",
                                   dynlib: tkernel.}
proc `*`*[T](this: handle[T]): var T {.noSideEffect, cdecl, importcpp: "(* #)",
                                  dynlib: tkernel.}
proc `==`*[T; T2](this: handle[T]; theHandle: handle[T2]): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[T; T2](this: handle[T]; thePtr: ptr T2): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc `<`*[T; T2](this: handle[T]; theHandle: handle[T2]): bool {.noSideEffect, cdecl,
    importcpp: "(# < #)", dynlib: tkernel.}
##  namespace opencascade
## ! Computes a hash code for the standard handle, in the range [1, theUpperBound]
## ! @param theHandle the handle which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]
