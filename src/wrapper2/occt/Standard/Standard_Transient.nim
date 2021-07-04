##  Copyright (c) 1998-1999 Matra Datavision
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
  Standard, Standard_DefineAlloc, Standard_PrimitiveTypes

discard "forward decl of Standard_Type"
discard "forward decl of handle"
## ! Abstract class which forms the root of the entire
## ! Transient class hierarchy.

type
  Standard_Transient* {.importcpp: "Standard_Transient",
                       header: "Standard_Transient.hxx", bycopy.} = object ##  Standard OCCT memory allocation stuff
                                                                      ## ! Empty constructor
                                                                      ## !@name Support of run-time type information (RTTI)
                                                                      ## !@name Reference counting, for use by handle<>
                                                                      ## ! Get the reference counter of this object
                                                                      ## ! Reference counter.
                                                                      ## ! Note use of underscore, aimed to reduce probability
                                                                      ## ! of conflict with names of members of derived classes.


proc constructStandard_Transient*(): Standard_Transient {.constructor,
    importcpp: "Standard_Transient(@)", header: "Standard_Transient.hxx".}
proc constructStandard_Transient*(a1: Standard_Transient): Standard_Transient {.
    constructor, importcpp: "Standard_Transient(@)",
    header: "Standard_Transient.hxx".}
proc destroyStandard_Transient*(this: var Standard_Transient) {.
    importcpp: "#.~Standard_Transient()", header: "Standard_Transient.hxx".}
proc Delete*(this: Standard_Transient) {.noSideEffect, importcpp: "Delete",
                                      header: "Standard_Transient.hxx".}
type
  Standard_Transientbase_type* = void

proc get_type_name*(): cstring {.importcpp: "Standard_Transient::get_type_name(@)",
                              header: "Standard_Transient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_Transient::get_type_descriptor(@)",
    header: "Standard_Transient.hxx".}
proc DynamicType*(this: Standard_Transient): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Transient.hxx".}
proc IsInstance*(this: Standard_Transient; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc IsInstance*(this: Standard_Transient; theTypeName: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc IsKind*(this: Standard_Transient; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc IsKind*(this: Standard_Transient; theTypeName: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc This*(this: Standard_Transient): ptr Standard_Transient {.noSideEffect,
    importcpp: "This", header: "Standard_Transient.hxx".}
proc GetRefCount*(this: Standard_Transient): Standard_Integer {.noSideEffect,
    importcpp: "GetRefCount", header: "Standard_Transient.hxx".}
proc IncrementRefCounter*(this: Standard_Transient) {.noSideEffect,
    importcpp: "IncrementRefCounter", header: "Standard_Transient.hxx".}
proc DecrementRefCounter*(this: Standard_Transient): Standard_Integer {.
    noSideEffect, importcpp: "DecrementRefCounter",
    header: "Standard_Transient.hxx".}
## ! Computes a hash code for the given transient object, in the range [1, theUpperBound]
## ! @param theTransientObject the transient object which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theTransientObject: ptr Standard_Transient;
              theUpperBound: Standard_Integer): Standard_Integer =
  discard

## ! Definition of Handle_Standard_Transient as typedef for compatibility

type
  Handle_Standard_Transient* = handle[Standard_Transient]
