##  Created on: 2010-03-15
##  Created by: Sergey KUUL
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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
  Standard_MMgrRoot

## !
## ! Implementation of OCC memory manager which uses Intel TBB
## ! scalable allocator.
## !
## ! On configurations where TBB is not available standard RTL functions
## ! malloc() / free() are used.

type
  Standard_MMgrTBBalloc* {.importcpp: "Standard_MMgrTBBalloc",
                          header: "Standard_MMgrTBBalloc.hxx", bycopy.} = object of Standard_MMgrRoot ##
                                                                                               ## !
                                                                                               ## Constructor;
                                                                                               ## if
                                                                                               ## aClear
                                                                                               ## is
                                                                                               ## True,
                                                                                               ## the
                                                                                               ## memory
                                                                                               ## will
                                                                                               ## be
                                                                                               ## nullified
                                                                                               ##
                                                                                               ## !
                                                                                               ## upon
                                                                                               ## allocation.
    ## ! Option to nullify allocated memory


proc constructStandard_MMgrTBBalloc*(aClear: Standard_Boolean = Standard_False): Standard_MMgrTBBalloc {.
    constructor, importcpp: "Standard_MMgrTBBalloc(@)",
    header: "Standard_MMgrTBBalloc.hxx".}
proc Allocate*(this: var Standard_MMgrTBBalloc; aSize: Standard_Size): Standard_Address {.
    importcpp: "Allocate", header: "Standard_MMgrTBBalloc.hxx".}
proc Reallocate*(this: var Standard_MMgrTBBalloc; thePtr: Standard_Address;
                theSize: Standard_Size): Standard_Address {.
    importcpp: "Reallocate", header: "Standard_MMgrTBBalloc.hxx".}
proc Free*(this: var Standard_MMgrTBBalloc; thePtr: Standard_Address) {.
    importcpp: "Free", header: "Standard_MMgrTBBalloc.hxx".}