import standard_types

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

#proc downcast*[T; T2](this: Handle[T] ): Handle[T2] {.cdecl,constructor,
#    importcpp: "handle (dynamic_cast<'1*>(const_cast<'2*>(@.get())))", header: "Standard_Handle.hxx".} # "Handle('0)::DownCast(@)"

#proc downcast*[T; T2](this: Handle[T] ): Handle[T2] {.cdecl,constructor
#    importcpp: "opencascade::handle<\'*0>::Downcast(@)", header: "Standard_Handle.hxx".}

#proc downcast*[T; T2](this: Handle[T] ): Handle[T2] {.cdecl,
#    importcpp: "opencascade::handle<\'*2>::DownCast(@)", header: "Standard_Handle.hxx".}


#proc downcast*[A; B](this: Handle[A] ): Handle[B] {.cdecl,
#    importcpp: "opencascade::handle<\'*0>::DownCast(@)", header: "Standard_Handle.hxx".}

proc downcast*[A; B](this: Handle[A] ): Handle[B] {.cdecl, importcpp: "\'0::DownCast(@)".}

#proc dcast*[A; B](this: Handle[A]): Handle[B] =
#    downcast[typeof(*this),typeof(*result)]( this )


#proc downcast*[A;B](this:A,next:B)

#proc downcast*[B](this: Handle[A] ): Handle[B]

#proc downcast*[A; B](this: Handle[A] ): Handle[B] {.cdecl, constructor,
#    importcpp: "handle (dynamic_cast<\'*1*>(const_cast<\'*0*>(#.get())))", header: "Standard_Handle.hxx".}

#proc upcast*[A; B](this: Handle[A] ): Handle[B] {.cdecl, constructor,
#    importcpp: "#", header: "Standard_Handle.hxx".}


#[
    //! Down casting operator from handle to base type
    template <class T2>
    static typename opencascade::std::enable_if<is_base_but_not_same<T2, T>::value, handle>::type
      DownCast (const handle<T2>& theObject)
    {
      return handle (dynamic_cast<T*>(const_cast<T2*>(theObject.get())));
    }

    //! Down casting operator from pointer to base type
    template <class T2>
    static typename opencascade::std::enable_if<is_base_but_not_same<T2, T>::value, handle>::type 
      DownCast (const T2* thePtr)
    {
      return handle (dynamic_cast<T*>(const_cast<T2*>(thePtr)));
    }

]#
##  namespace opencascade
## ! Computes a hash code for the standard handle, in the range [1, theUpperBound]
## ! @param theHandle the handle which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]
converter `toHandle`*[T](this: T): Handle[T] {.
    importcpp: "(@)",
    header: "Standard_Handle.hxx".}
    
converter `toHandle`*[T](this: ptr T): Handle[T] {.
    importcpp: "(@)",
    header: "Standard_Handle.hxx".}
    

