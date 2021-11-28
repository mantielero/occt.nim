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

discard "forward decl of Standard_ErrorHandler"
discard "forward decl of Standard_Persistent"
discard "forward decl of Standard_Transient"
discard "forward decl of Standard_Failure"
type
  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object ## ! Allocates memory blocks
                                                                       ## ! aSize - bytes to  allocate


proc allocate*(aSize: csize_t): pointer {.cdecl, importcpp: "Standard::Allocate(@)",
                                      dynlib: tkernel.}
proc free*(thePtr: pointer) {.cdecl, importcpp: "Standard::Free(@)", dynlib: tkernel.}
proc free*[T](thePtr: ptr T) {.cdecl, importcpp: "Standard::Free(@)", dynlib: tkernel.}
proc reallocate*(aStorage: pointer; aNewSize: csize_t): pointer {.cdecl,
    importcpp: "Standard::Reallocate(@)", dynlib: tkernel.}
proc allocateAligned*(theSize: csize_t; theAlign: csize_t): pointer {.cdecl,
    importcpp: "Standard::AllocateAligned(@)", dynlib: tkernel.}
proc freeAligned*(thePtrAligned: pointer) {.cdecl,
    importcpp: "Standard::FreeAligned(@)", dynlib: tkernel.}
proc freeAligned*[T](thePtrAligned: ptr T) {.cdecl,
    importcpp: "Standard::FreeAligned(@)", dynlib: tkernel.}
proc purge*(): cint {.cdecl, importcpp: "Standard::Purge(@)", dynlib: tkernel.}
##  include definition of handle to make it always visible
##  (put at the and of the file due to cyclic dependency between headers)
