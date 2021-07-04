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
  Standard_DefineAlloc, Standard_Address, Standard_Size, Standard_Integer

discard "forward decl of Standard_ErrorHandler"
discard "forward decl of Standard_Persistent"
discard "forward decl of Standard_Transient"
discard "forward decl of Standard_Failure"
type
  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object ## ! Allocates memory blocks
                                                                       ## ! aSize - bytes to  allocate


proc Allocate*(aSize: Standard_Size): Standard_Address {.
    importcpp: "Standard::Allocate(@)", header: "Standard.hxx".}
proc Free*(thePtr: Standard_Address) {.importcpp: "Standard::Free(@)",
                                    header: "Standard.hxx".}
proc Free*[T](thePtr: ptr T) {.importcpp: "Standard::Free(@)", header: "Standard.hxx".}
proc Reallocate*(aStorage: Standard_Address; aNewSize: Standard_Size): Standard_Address {.
    importcpp: "Standard::Reallocate(@)", header: "Standard.hxx".}
proc AllocateAligned*(theSize: Standard_Size; theAlign: Standard_Size): Standard_Address {.
    importcpp: "Standard::AllocateAligned(@)", header: "Standard.hxx".}
proc FreeAligned*(thePtrAligned: Standard_Address) {.
    importcpp: "Standard::FreeAligned(@)", header: "Standard.hxx".}
proc FreeAligned*[T](thePtrAligned: ptr T) {.importcpp: "Standard::FreeAligned(@)",
    header: "Standard.hxx".}
proc Purge*(): Standard_Integer {.importcpp: "Standard::Purge(@)",
                               header: "Standard.hxx".}
##  include definition of handle to make it always visible
##  (put at the and of the file due to cyclic dependency between headers)

import
  Standard_Transient
