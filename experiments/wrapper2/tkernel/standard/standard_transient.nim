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


proc constructStandardTransient*(): StandardTransient {.cdecl, constructor,
    importcpp: "Standard_Transient(@)", dynlib: tkernel.}
proc constructStandardTransient*(a1: StandardTransient): StandardTransient {.cdecl,
    constructor, importcpp: "Standard_Transient(@)", dynlib: tkernel.}
proc destroyStandardTransient*(this: var StandardTransient) {.cdecl,
    importcpp: "#.~Standard_Transient()", dynlib: tkernel.}
proc delete*(this: StandardTransient) {.noSideEffect, cdecl, importcpp: "Delete",
                                     dynlib: tkernel.}
type
  StandardTransientbaseType* = void

proc getTypeName*(): cstring {.cdecl,
                            importcpp: "Standard_Transient::get_type_name(@)",
                            dynlib: tkernel.}
proc getTypeDescriptor*(): Handle[StandardType] {.cdecl,
    importcpp: "Standard_Transient::get_type_descriptor(@)", dynlib: tkernel.}
proc dynamicType*(this: StandardTransient): Handle[StandardType] {.noSideEffect,
    cdecl, importcpp: "DynamicType", dynlib: tkernel.}
proc isInstance*(this: StandardTransient; theType: Handle[StandardType]): StandardBoolean {.
    noSideEffect, cdecl, importcpp: "IsInstance", dynlib: tkernel.}
proc isInstance*(this: StandardTransient; theTypeName: StandardCString): StandardBoolean {.
    noSideEffect, cdecl, importcpp: "IsInstance", dynlib: tkernel.}
proc isKind*(this: StandardTransient; theType: Handle[StandardType]): StandardBoolean {.
    noSideEffect, cdecl, importcpp: "IsKind", dynlib: tkernel.}
proc isKind*(this: StandardTransient; theTypeName: StandardCString): StandardBoolean {.
    noSideEffect, cdecl, importcpp: "IsKind", dynlib: tkernel.}
proc this*(this: StandardTransient): ptr StandardTransient {.noSideEffect, cdecl,
    importcpp: "This", dynlib: tkernel.}
proc getRefCount*(this: StandardTransient): cint {.noSideEffect, cdecl,
    importcpp: "GetRefCount", dynlib: tkernel.}
proc incrementRefCounter*(this: StandardTransient) {.noSideEffect, cdecl,
    importcpp: "IncrementRefCounter", dynlib: tkernel.}
proc decrementRefCounter*(this: StandardTransient): cint {.noSideEffect, cdecl,
    importcpp: "DecrementRefCounter", dynlib: tkernel.}
## ! Computes a hash code for the given transient object, in the range [1, theUpperBound]
## ! @param theTransientObject the transient object which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theTransientObject: ptr StandardTransient; theUpperBound: cint): cint {.
    cdecl, importcpp: "HashCode(@)", dynlib: tkernel.}
## ! Definition of Handle_Standard_Transient as typedef for compatibility

type
  HandleStandardTransient* = Handle[StandardTransient]
