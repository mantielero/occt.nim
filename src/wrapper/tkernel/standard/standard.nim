import standard_types

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


proc allocate*(aSize: csize_t): pointer {.cdecl, importcpp: "Standard::Allocate(@)",
                                      header: "Standard.hxx".}
proc free*(thePtr: pointer) {.cdecl, importcpp: "Standard::Free(@)", header: "Standard.hxx".}
proc free*[T](thePtr: ptr T) {.cdecl, importcpp: "Standard::Free(@)", header: "Standard.hxx".}
proc reallocate*(aStorage: pointer; aNewSize: csize_t): pointer {.cdecl,
    importcpp: "Standard::Reallocate(@)", header: "Standard.hxx".}
proc allocateAligned*(theSize: csize_t; theAlign: csize_t): pointer {.cdecl,
    importcpp: "Standard::AllocateAligned(@)", header: "Standard.hxx".}
proc freeAligned*(thePtrAligned: pointer) {.cdecl,
    importcpp: "Standard::FreeAligned(@)", header: "Standard.hxx".}
proc freeAligned*[T](thePtrAligned: ptr T) {.cdecl,
    importcpp: "Standard::FreeAligned(@)", header: "Standard.hxx".}
proc purge*(): cint {.cdecl, importcpp: "Standard::Purge(@)", header: "Standard.hxx".}
##  include definition of handle to make it always visible
##  (put at the and of the file due to cyclic dependency between headers)

