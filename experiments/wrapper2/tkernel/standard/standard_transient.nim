when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  Standard_Transient* {.importcpp: "Standard_Transient",
                       header: "Standard_Transient.hxx", bycopy.} = object ##  Standard OCCT memory allocation stuff
                                                                      ## ! Empty constructor
                                                                      ## !@name Support of run-time type information (RTTI)
                                                                      ## !@name Reference counting, for use by handle<>
                                                                      ## ! Get the reference counter of this object
                                                                      ## ! Reference counter.
                                                                      ## ! Note use of underscore, aimed to reduce probability
                                                                      ## ! of conflict with names of members of derived classes.


proc constructStandard_Transient*(): Standard_Transient {.cdecl, constructor,
    importcpp: "Standard_Transient(@)", dynlib: tkernel.}
proc constructStandard_Transient*(a1: Standard_Transient): Standard_Transient {.
    cdecl, constructor, importcpp: "Standard_Transient(@)", dynlib: tkernel.}
proc destroyStandard_Transient*(this: var Standard_Transient) {.cdecl,
    importcpp: "#.~Standard_Transient()", dynlib: tkernel.}
proc Delete*(this: Standard_Transient) {.noSideEffect, cdecl, importcpp: "Delete",
                                      dynlib: tkernel.}
type
  Standard_Transientbase_type* = void

proc get_type_name*(): cstring {.cdecl, importcpp: "Standard_Transient::get_type_name(@)",
                              dynlib: tkernel.}
proc get_type_descriptor*(): handle[Standard_Type] {.cdecl,
    importcpp: "Standard_Transient::get_type_descriptor(@)", dynlib: tkernel.}
proc DynamicType*(this: Standard_Transient): handle[Standard_Type] {.noSideEffect,
    cdecl, importcpp: "DynamicType", dynlib: tkernel.}
proc IsInstance*(this: Standard_Transient; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsInstance", dynlib: tkernel.}
proc IsInstance*(this: Standard_Transient; theTypeName: Standard_CString): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsInstance", dynlib: tkernel.}
proc IsKind*(this: Standard_Transient; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsKind", dynlib: tkernel.}
proc IsKind*(this: Standard_Transient; theTypeName: Standard_CString): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsKind", dynlib: tkernel.}
proc This*(this: Standard_Transient): ptr Standard_Transient {.noSideEffect, cdecl,
    importcpp: "This", dynlib: tkernel.}
proc GetRefCount*(this: Standard_Transient): cint {.noSideEffect, cdecl,
    importcpp: "GetRefCount", dynlib: tkernel.}
proc IncrementRefCounter*(this: Standard_Transient) {.noSideEffect, cdecl,
    importcpp: "IncrementRefCounter", dynlib: tkernel.}
proc DecrementRefCounter*(this: Standard_Transient): cint {.noSideEffect, cdecl,
    importcpp: "DecrementRefCounter", dynlib: tkernel.}
## ! Computes a hash code for the given transient object, in the range [1, theUpperBound]
## ! @param theTransientObject the transient object which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theTransientObject: ptr Standard_Transient; theUpperBound: cint): cint {.
    cdecl, importcpp: "HashCode(@)", dynlib: tkernel.}
## ! Definition of Handle_Standard_Transient as typedef for compatibility

type
  Handle_Standard_Transient* = handle[Standard_Transient]
