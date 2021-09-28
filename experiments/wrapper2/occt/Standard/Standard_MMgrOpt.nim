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
##  @brief Open CASCADE memory manager optimized for speed.
##
##  The behaviour is different for memory blocks of different sizes,
##  according to specified options provided to constructor:
##
##  - Small blocks with size less than or equal to aCellSize are allocated
##    in big pools of memory. The parameter aNbPages specifies size of
##    these pools in pages (operating system-dependent).
##    When freed, small block is not returned to the system but added
##    into free blocks list and reused when block of the same size is
##    requested.
##
##  - Medium size blocks with size less than aThreshold are allocated
##    using malloc() or calloc() function but not returned to the system
##    when method Free() is called; instead they are put into free list
##    and reused when block of the same size is requested.
##    Blocks of medium size stored in free lists can be released to the
##    system (by free()) by calling method Purge().
##
##  - Large blocks with size greater than or equal to aThreshold are allocated
##    and freed directly: either using malloc()/calloc() and free(), or using
##    memory mapped files (if option aMMap is True)
##
##  Thus the optimization of memory allocation/deallocation is reached
##  for small and medium size blocks using free lists method;
##  note that space allocated for small blocks cannot be (currently) released
##  to the system while space for medium size blocks can be released by method Purge().
##
##  Note that destructor of that class frees all free lists and memory pools
##  allocated for small blocks.
##
##  Note that size of memory blocks allocated by this memory manager is always
##  rounded up to 16 bytes. In addition, 8 bytes are added at the beginning
##  of the memory block to hold auxiliary information (size of the block when
##  in use, or pointer to the next free block when in free list).
##  This the expense of speed optimization. At the same time, allocating small
##  blocks is usually less costly than directly by malloc since allocation is made
##  once (when allocating a pool) and overheads induced by malloc are minimized.
##

type
  StandardMMgrOpt* {.importcpp: "Standard_MMgrOpt", header: "Standard_MMgrOpt.hxx",
                    bycopy.} = object of StandardMMgrRoot ## ! Constructor. If aClear is True, the allocated emmory will be
                                                     ## ! nullified. For description of other parameters, see description
                                                     ## ! of the class above.
                                                     ## ! Internal - initialization of buffers
    ## !< option to clear allocated memory
    ## !< last allocated index in the free blocks list
    ## !< free blocks list
    ## !< small blocks size
    ## !< size (pages) for small block memory pools
    ## !< system-dependent memory page size
    ## !< list of memory pools for small blocks
    ## !< next free address in the active memory pool
    ## !< end of the active memory pool
    ## !< non-null if using memory mapped files for allocation of large blocks
    ## !< large block size
    ## !< Mutex to protect free lists data
    ## !< Mutex to protect small block pools data


proc constructStandardMMgrOpt*(aClear: StandardBoolean = true;
                              aMMap: StandardBoolean = true;
                              aCellSize: StandardSize = 200; aNbPages: int = 10000;
                              aThreshold: StandardSize = 40000): StandardMMgrOpt {.
    constructor, importcpp: "Standard_MMgrOpt(@)", header: "Standard_MMgrOpt.hxx".}
proc destroyStandardMMgrOpt*(this: var StandardMMgrOpt) {.
    importcpp: "#.~Standard_MMgrOpt()", header: "Standard_MMgrOpt.hxx".}
proc allocate*(this: var StandardMMgrOpt; aSize: StandardSize): StandardAddress {.
    importcpp: "Allocate", header: "Standard_MMgrOpt.hxx".}
proc reallocate*(this: var StandardMMgrOpt; thePtr: StandardAddress;
                theSize: StandardSize): StandardAddress {.importcpp: "Reallocate",
    header: "Standard_MMgrOpt.hxx".}
proc free*(this: var StandardMMgrOpt; thePtr: StandardAddress) {.importcpp: "Free",
    header: "Standard_MMgrOpt.hxx".}
proc purge*(this: var StandardMMgrOpt; isDestroyed: StandardBoolean): int {.
    importcpp: "Purge", header: "Standard_MMgrOpt.hxx".}
type
  StandardMMgrOptTPCallBackFunc* = proc (theIsAlloc: StandardBoolean;
                                      theStorage: StandardAddress;
                                      theRoundSize: StandardSize;
                                      theSize: StandardSize)

proc setCallBackFunction*(pFunc: StandardMMgrOptTPCallBackFunc) {.
    importcpp: "Standard_MMgrOpt::SetCallBackFunction(@)",
    header: "Standard_MMgrOpt.hxx".}