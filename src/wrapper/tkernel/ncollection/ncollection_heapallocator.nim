import ncollection_types

##  Created on: 2009-12-30
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
##  Allocator that uses the global dynamic heap (malloc / free).
##



proc allocate*(this: var NCollectionHeapAllocator; theSize: csize_t): pointer {.cdecl,
    importcpp: "Allocate", header: "NCollection_HeapAllocator.hxx".}
proc free*(this: var NCollectionHeapAllocator; anAddress: pointer) {.cdecl,
    importcpp: "Free", header: "NCollection_HeapAllocator.hxx".}
proc globalHeapAllocator*(): Handle[NCollectionHeapAllocator] {.cdecl,
    importcpp: "NCollection_HeapAllocator::GlobalHeapAllocator(@)",
    header: "NCollection_HeapAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx


