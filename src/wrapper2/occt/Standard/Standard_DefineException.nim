##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

import
  Standard_Type

## ! Defines an exception class \a C1 that inherits an exception class \a C2.
## ! \a C2 must be Standard_Failure or its ancestor.
##     The macro defines empty constructor, copy constructor and static methods Raise() and NewInstance().
##     Since Standard_Failure implements class manipulated by handle, DEFINE_STANDARD_RTTI macro is also
##     added to enable RTTI.
##
##     When using DEFINE_STANDARD_EXCEPTION in your code make sure you also insert a macro
##     DEFINE_STANDARD_HANDLE(C1,C2) before it.
##

template DEFINE_STANDARD_EXCEPTION*(C1, C2: untyped): void =
  type
    C1* {.importcpp: "C1", header: "Standard_DefineException.hxx", bycopy.} = object of C2

  proc constructC1*(): C1 {.constructor, importcpp: "C1(@)",
                         header: "Standard_DefineException.hxx".}
  proc constructC1*(theMessage: Standard_CString): C1 {.constructor,
      importcpp: "C1(@)", header: "Standard_DefineException.hxx".}
  proc Raise*(theMessage: Standard_CString = "") {.importcpp: "C1::Raise(@)",
      header: "Standard_DefineException.hxx".}
  proc Raise*(theMessage: var Standard_SStream) {.importcpp: "C1::Raise(@)",
      header: "Standard_DefineException.hxx".}
  proc NewInstance*(theMessage: Standard_CString = ""): handle[C1] {.
      importcpp: "C1::NewInstance(@)", header: "Standard_DefineException.hxx".}
  type
    C1base_type* = C2
  proc get_type_name*(): cstring {.importcpp: "C1::get_type_name(@)",
                                header: "Standard_DefineException.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "C1::get_type_descriptor(@)",
      header: "Standard_DefineException.hxx".}
  proc DynamicType*(this: C1): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "Standard_DefineException.hxx".}

## ! Obsolete macro, kept for compatibility with old code
