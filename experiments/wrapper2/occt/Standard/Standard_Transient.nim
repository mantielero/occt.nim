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

discard "forward decl of Standard_Type"
discard "forward decl of handle"
## ! Abstract class which forms the root of the entire
## ! Transient class hierarchy.

type
  StandardTransient* {.importcpp: "Standard_Transient",
                      header: "Standard_Transient.hxx", bycopy.} = object of RootObj ##  Standard OCCT memory allocation stuff
                                                                     ## ! Empty constructor
                                                                     ## !@name Support of run-time type information (RTTI)
                                                                     ## !@name Reference counting, for use by handle<>
                                                                     ## ! Get the reference counter of this object
                                                                     ## ! Reference counter.
                                                                     ## ! Note use of underscore, aimed to reduce probability
                                                                     ## ! of conflict with names of members of derived classes.


proc constructStandardTransient*(): StandardTransient {.constructor,
    importcpp: "Standard_Transient(@)", header: "Standard_Transient.hxx".}
proc constructStandardTransient*(a1: StandardTransient): StandardTransient {.
    constructor, importcpp: "Standard_Transient(@)",
    header: "Standard_Transient.hxx".}
proc destroyStandardTransient*(this: var StandardTransient) {.
    importcpp: "#.~Standard_Transient()", header: "Standard_Transient.hxx".}
proc delete*(this: StandardTransient) {.noSideEffect, importcpp: "Delete",
                                     header: "Standard_Transient.hxx".}
type
  StandardTransientbaseType* = void

proc getTypeName*(): cstring {.importcpp: "Standard_Transient::get_type_name(@)",
                            header: "Standard_Transient.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Transient::get_type_descriptor(@)",
    header: "Standard_Transient.hxx".}
proc dynamicType*(this: StandardTransient): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Transient.hxx".}
proc isInstance*(this: StandardTransient; theType: Handle[StandardType]): bool {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc isInstance*(this: StandardTransient; theTypeName: StandardCString): bool {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc isKind*(this: StandardTransient; theType: Handle[StandardType]): bool {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc isKind*(this: StandardTransient; theTypeName: StandardCString): bool {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc this*(this: StandardTransient): ptr StandardTransient {.noSideEffect,
    importcpp: "This", header: "Standard_Transient.hxx".}
proc getRefCount*(this: StandardTransient): int {.noSideEffect,
    importcpp: "GetRefCount", header: "Standard_Transient.hxx".}
proc incrementRefCounter*(this: StandardTransient) {.noSideEffect,
    importcpp: "IncrementRefCounter", header: "Standard_Transient.hxx".}
proc decrementRefCounter*(this: StandardTransient): int {.noSideEffect,
    importcpp: "DecrementRefCounter", header: "Standard_Transient.hxx".}
## ! Computes a hash code for the given transient object, in the range [1, theUpperBound]
## ! @param theTransientObject the transient object which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theTransientObject: ptr StandardTransient; theUpperBound: int): int =
  discard

## ! Definition of Handle_Standard_Transient as typedef for compatibility

type
  HandleStandardTransient* = Handle[StandardTransient]

