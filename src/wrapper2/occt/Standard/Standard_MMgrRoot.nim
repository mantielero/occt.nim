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

import
  Standard_TypeDef

## *
##  Root class for Open CASCADE mmemory managers.
##  Defines only abstract interface functions.
##

type
  Standard_MMgrRoot* {.importcpp: "Standard_MMgrRoot",
                      header: "Standard_MMgrRoot.hxx", bycopy.} = object ## ! Virtual destructor; required for correct inheritance


proc destroyStandard_MMgrRoot*(this: var Standard_MMgrRoot) {.
    importcpp: "#.~Standard_MMgrRoot()", header: "Standard_MMgrRoot.hxx".}
proc Allocate*(this: var Standard_MMgrRoot; theSize: Standard_Size): Standard_Address {.
    importcpp: "Allocate", header: "Standard_MMgrRoot.hxx".}
proc Reallocate*(this: var Standard_MMgrRoot; thePtr: Standard_Address;
                theSize: Standard_Size): Standard_Address {.
    importcpp: "Reallocate", header: "Standard_MMgrRoot.hxx".}
proc Free*(this: var Standard_MMgrRoot; thePtr: Standard_Address) {.importcpp: "Free",
    header: "Standard_MMgrRoot.hxx".}
proc Purge*(this: var Standard_MMgrRoot;
           isDestroyed: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "Purge", header: "Standard_MMgrRoot.hxx".}