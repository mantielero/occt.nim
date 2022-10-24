import standard_types

##  Created on: 2005-03-15
##  Created by: Peter KURNEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

## *
##  Root class for Open CASCADE mmemory managers.
##  Defines only abstract interface functions.
##



proc destroyStandardMMgrRoot*(this: var StandardMMgrRoot) {.cdecl,
    importcpp: "#.~Standard_MMgrRoot()", header: "Standard_MMgrRoot.hxx".}
proc allocate*(this: var StandardMMgrRoot; theSize: csize_t): pointer {.cdecl,
    importcpp: "Allocate", header: "Standard_MMgrRoot.hxx".}
proc reallocate*(this: var StandardMMgrRoot; thePtr: pointer; theSize: csize_t): pointer {.
    cdecl, importcpp: "Reallocate", header: "Standard_MMgrRoot.hxx".}
proc free*(this: var StandardMMgrRoot; thePtr: pointer) {.cdecl, importcpp: "Free",
    header: "Standard_MMgrRoot.hxx".}
proc purge*(this: var StandardMMgrRoot; isDestroyed: bool = false): cint {.cdecl,
    importcpp: "Purge", header: "Standard_MMgrRoot.hxx".}
