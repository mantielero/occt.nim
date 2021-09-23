##  Created on: 2014-03-31
##  Created by: Kirill Gavrilov
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  NCollection_BaseAllocator, ../Standard/Standard

## ! NCollection allocator with managed memory alignment capabilities.

type
  NCollection_AlignedAllocator* {.importcpp: "NCollection_AlignedAllocator",
                                 header: "NCollection_AlignedAllocator.hxx",
                                 bycopy.} = object of NCollection_BaseAllocator ## !
                                                                           ## Constructor. The
                                                                           ## alignment
                                                                           ## should be
                                                                           ## specified
                                                                           ## explicitly:
                                                                           ## ! 16 bytes for SSE
                                                                           ## instructions
                                                                           ## ! 32 bytes for AVX
                                                                           ## instructions
    ## !< alignment in bytes


proc constructNCollection_AlignedAllocator*(theAlignment: csize_t): NCollection_AlignedAllocator {.
    constructor, importcpp: "NCollection_AlignedAllocator(@)",
    header: "NCollection_AlignedAllocator.hxx".}
proc Allocate*(this: var NCollection_AlignedAllocator; theSize: csize_t): pointer {.
    importcpp: "Allocate", header: "NCollection_AlignedAllocator.hxx".}
proc Free*(this: var NCollection_AlignedAllocator; thePtr: pointer) {.
    importcpp: "Free", header: "NCollection_AlignedAllocator.hxx".}
type
  NCollection_AlignedAllocatorbase_type* = NCollection_BaseAllocator

proc get_type_name*(): cstring {.importcpp: "NCollection_AlignedAllocator::get_type_name(@)",
                              header: "NCollection_AlignedAllocator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_AlignedAllocator::get_type_descriptor(@)",
    header: "NCollection_AlignedAllocator.hxx".}
proc DynamicType*(this: NCollection_AlignedAllocator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "NCollection_AlignedAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_AlignedAllocator"
type
  Handle_NCollection_AlignedAllocator* = handle[NCollection_AlignedAllocator]
