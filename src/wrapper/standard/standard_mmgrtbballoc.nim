import standard_types

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

## !
## ! Implementation of OCC memory manager which uses Intel TBB
## ! scalable allocator.
## !
## ! On configurations where TBB is not available standard RTL functions
## ! malloc() / free() are used.



proc constructStandardMMgrTBBalloc*(aClear: bool = false): StandardMMgrTBBalloc {.
    cdecl, constructor, importcpp: "Standard_MMgrTBBalloc(@)", header: "Standard_MMgrTBBalloc.hxx".}
proc allocate*(this: var StandardMMgrTBBalloc; aSize: csize_t): pointer {.cdecl,
    importcpp: "Allocate", header: "Standard_MMgrTBBalloc.hxx".}
proc reallocate*(this: var StandardMMgrTBBalloc; thePtr: pointer; theSize: csize_t): pointer {.
    cdecl, importcpp: "Reallocate", header: "Standard_MMgrTBBalloc.hxx".}
proc free*(this: var StandardMMgrTBBalloc; thePtr: pointer) {.cdecl, importcpp: "Free",
    header: "Standard_MMgrTBBalloc.hxx".}
