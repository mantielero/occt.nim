##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
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
  Standard_Type, Standard_DefineException, Standard_SStream, Standard_ProgramError

discard "forward decl of Standard_OutOfMemory"
discard "forward decl of Standard_OutOfMemory"
type
  Handle_Standard_OutOfMemory* = handle[Standard_OutOfMemory]

when not defined(No_Exception) and not defined(No_Standard_OutOfMemory):
  template Standard_OutOfMemory_Raise_if*(CONDITION, MESSAGE: untyped): void =
    if CONDITION:
      proc Standard_OutOfMemory*(a1: MESSAGE): throw {.
          importcpp: "Standard_OutOfMemory(@)", header: "Standard_OutOfMemory.hxx".}

else:
  discard
## ! Standard_OutOfMemory exception is defined explicitly and not by
## ! macro DEFINE_STANDARD_EXCEPTION, to avoid necessity of dynamic
## ! memory allocations during throwing and stack unwinding:
## !
## ! - method NewInstance() returns static instance (singleton)
## ! - method Raise() raises copy of that singleton, resetting
## !   its message string
## ! - message string is stored as field, not allocated dynamically
## !   (storable message length is limited by buffer size)
## !
## ! The reason is that in out-of-memory condition any memory allocation can
## ! fail, thus use of operator new for allocation of new exception instance
## ! is dangerous (can cause recursion until stack overflow, see #24836).

type
  Standard_OutOfMemory* {.importcpp: "Standard_OutOfMemory",
                         header: "Standard_OutOfMemory.hxx", bycopy.} = object of Standard_ProgramError ##
                                                                                                 ## !
                                                                                                 ## Constructor
                                                                                                 ## is
                                                                                                 ## kept
                                                                                                 ## public
                                                                                                 ## for
                                                                                                 ## backward
                                                                                                 ## compatibility


proc constructStandard_OutOfMemory*(theMessage: Standard_CString = 0): Standard_OutOfMemory {.
    constructor, importcpp: "Standard_OutOfMemory(@)",
    header: "Standard_OutOfMemory.hxx".}
proc GetMessageString*(this: Standard_OutOfMemory): Standard_CString {.noSideEffect,
    importcpp: "GetMessageString", header: "Standard_OutOfMemory.hxx".}
proc SetMessageString*(this: var Standard_OutOfMemory; aMessage: Standard_CString) {.
    importcpp: "SetMessageString", header: "Standard_OutOfMemory.hxx".}
proc Raise*(theMessage: Standard_CString = "") {.
    importcpp: "Standard_OutOfMemory::Raise(@)",
    header: "Standard_OutOfMemory.hxx".}
proc Raise*(theMessage: var Standard_SStream) {.
    importcpp: "Standard_OutOfMemory::Raise(@)",
    header: "Standard_OutOfMemory.hxx".}
proc NewInstance*(theMessage: Standard_CString = ""): handle[Standard_OutOfMemory] {.
    importcpp: "Standard_OutOfMemory::NewInstance(@)",
    header: "Standard_OutOfMemory.hxx".}
type
  Standard_OutOfMemorybase_type* = Standard_ProgramError

proc get_type_name*(): cstring {.importcpp: "Standard_OutOfMemory::get_type_name(@)",
                              header: "Standard_OutOfMemory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_OutOfMemory::get_type_descriptor(@)",
    header: "Standard_OutOfMemory.hxx".}
proc DynamicType*(this: Standard_OutOfMemory): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_OutOfMemory.hxx".}