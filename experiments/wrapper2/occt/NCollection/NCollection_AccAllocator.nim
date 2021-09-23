##  Created on: 2013-11-12
##  Created by: Maxim YAKUNIN (myn)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  NCollection_BaseAllocator, NCollection_DataMap

## !
## ! Class  NCollection_AccAllocator  -  accumulating  memory  allocator.  This
## ! class  allocates  memory on request returning the pointer to the allocated
## ! space.  The  allocation  units  are  grouped  in blocks requested from the
## ! system  as  required.  This  memory  is  returned  to  the system when all
## ! allocations in a block are freed.
## !
## ! By comparison with  the standard new() and malloc()  calls, this method is
## ! faster and consumes very small additional memory to maintain the heap.
## !
## ! By comparison with NCollection_IncAllocator,  this class requires some more
## ! additional memory  and a little more time for allocation and deallocation.
## ! Memory overhead for NCollection_IncAllocator is 12 bytes per block;
## ! average memory overhead for NCollection_AccAllocator is 28 bytes per block.
## !
## ! All pointers  returned by Allocate() are aligned to 4 byte boundaries.
## ! To  define  the size  of  memory  blocks  requested  from the OS,  use the
## ! parameter of the constructor (measured in bytes).

type
  NCollection_AccAllocator* {.importcpp: "NCollection_AccAllocator",
                             header: "NCollection_AccAllocator.hxx", bycopy.} = object of NCollection_BaseAllocator ##  --------- PUBLIC CONSTANTS ---------
                                                                                                             ## ! Alignment of all allocated objects: 4 bytes
                                                                                                             ## ! Constructor
                                                                                                             ## ! Size value aligned to a 4 byte boundary
                                                                                                             ## ! Calculate a key for the data map basing on the given address
    ##  Declaration of CASCADE RTTI


proc constructNCollection_AccAllocator*(theBlockSize: csize_t = DefaultBlockSize): NCollection_AccAllocator {.
    constructor, importcpp: "NCollection_AccAllocator(@)",
    header: "NCollection_AccAllocator.hxx".}
proc destroyNCollection_AccAllocator*(this: var NCollection_AccAllocator) {.
    importcpp: "#.~NCollection_AccAllocator()",
    header: "NCollection_AccAllocator.hxx".}
proc Allocate*(this: var NCollection_AccAllocator; theSize: csize_t): pointer {.
    importcpp: "Allocate", header: "NCollection_AccAllocator.hxx".}
proc Free*(this: var NCollection_AccAllocator; theAddress: pointer) {.
    importcpp: "Free", header: "NCollection_AccAllocator.hxx".}
type
  NCollection_AccAllocatorbase_type* = NCollection_BaseAllocator

proc get_type_name*(): cstring {.importcpp: "NCollection_AccAllocator::get_type_name(@)",
                              header: "NCollection_AccAllocator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_AccAllocator::get_type_descriptor(@)",
    header: "NCollection_AccAllocator.hxx".}
proc DynamicType*(this: NCollection_AccAllocator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NCollection_AccAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_AccAllocator"
type
  Handle_NCollection_AccAllocator* = handle[NCollection_AccAllocator]
