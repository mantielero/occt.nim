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
##  Implementation of raw OCC memory manager which uses standard C
##  functions: malloc (or calloc), free and realloc
##  without any optimization
##



proc constructStandardMMgrRaw*(aClear: bool = false): StandardMMgrRaw {.cdecl,
    constructor, importcpp: "Standard_MMgrRaw(@)", header: "Standard_MMgrRaw.hxx".}
proc allocate*(this: var StandardMMgrRaw; aSize: csize_t): pointer {.cdecl,
    importcpp: "Allocate", header: "Standard_MMgrRaw.hxx".}
proc reallocate*(this: var StandardMMgrRaw; thePtr: pointer; theSize: csize_t): pointer {.
    cdecl, importcpp: "Reallocate", header: "Standard_MMgrRaw.hxx".}
proc free*(this: var StandardMMgrRaw; thePtr: pointer) {.cdecl, importcpp: "Free",
    header: "Standard_MMgrRaw.hxx".}
