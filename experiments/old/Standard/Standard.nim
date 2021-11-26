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
  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object


proc `new`*(this: var Standard; theSize: csize_t): pointer {.
    importcpp: "Standard::operator new", header: "Standard.hxx".}
proc `delete`*(this: var Standard; theAddress: pointer) {.
    importcpp: "Standard::operator delete", header: "Standard.hxx".}
proc `new[]`*(this: var Standard; theSize: csize_t): pointer {.
    importcpp: "Standard::operator new[]", header: "Standard.hxx".}
proc `delete[]`*(this: var Standard; theAddress: pointer) {.
    importcpp: "Standard::operator delete[]", header: "Standard.hxx".}
proc `new`*(this: var Standard; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Standard::operator new", header: "Standard.hxx".}
proc `delete`*(this: var Standard; a2: pointer; a3: pointer) {.
    importcpp: "Standard::operator delete", header: "Standard.hxx".}
proc allocate*(aSize: StandardSize): StandardAddress {.
    importcpp: "Standard::Allocate(@)", header: "Standard.hxx".}
proc free*(thePtr: StandardAddress) {.importcpp: "Standard::Free(@)",
                                   header: "Standard.hxx".}
proc free*[T](thePtr: ptr T) {.importcpp: "Standard::Free(@)", header: "Standard.hxx".}
proc reallocate*(aStorage: StandardAddress; aNewSize: StandardSize): StandardAddress {.
    importcpp: "Standard::Reallocate(@)", header: "Standard.hxx".}
proc allocateAligned*(theSize: StandardSize; theAlign: StandardSize): StandardAddress {.
    importcpp: "Standard::AllocateAligned(@)", header: "Standard.hxx".}
proc freeAligned*(thePtrAligned: StandardAddress) {.
    importcpp: "Standard::FreeAligned(@)", header: "Standard.hxx".}
proc freeAligned*[T](thePtrAligned: ptr T) {.importcpp: "Standard::FreeAligned(@)",
    header: "Standard.hxx".}
proc purge*(): int {.importcpp: "Standard::Purge(@)", header: "Standard.hxx".}
##  include definition of handle to make it always visible
##  (put at the and of the file due to cyclic dependency between headers)
