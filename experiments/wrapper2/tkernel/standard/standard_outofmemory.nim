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

discard "forward decl of Standard_OutOfMemory"
type
  Handle_Standard_OutOfMemory* = handle[Standard_OutOfMemory]

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
    cdecl, constructor, importcpp: "Standard_OutOfMemory(@)", dynlib: tkernel.}
proc GetMessageString*(this: Standard_OutOfMemory): Standard_CString {.noSideEffect,
    cdecl, importcpp: "GetMessageString", dynlib: tkernel.}
proc SetMessageString*(this: var Standard_OutOfMemory; aMessage: Standard_CString) {.
    cdecl, importcpp: "SetMessageString", dynlib: tkernel.}
proc Raise*(theMessage: Standard_CString = "") {.cdecl,
    importcpp: "Standard_OutOfMemory::Raise(@)", dynlib: tkernel.}
proc Raise*(theMessage: var Standard_SStream) {.cdecl,
    importcpp: "Standard_OutOfMemory::Raise(@)", dynlib: tkernel.}
proc NewInstance*(theMessage: Standard_CString = ""): handle[Standard_OutOfMemory] {.
    cdecl, importcpp: "Standard_OutOfMemory::NewInstance(@)", dynlib: tkernel.}