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

## ! NCollection allocator with managed memory alignment capabilities.

type
  NCollectionAlignedAllocator* {.importcpp: "NCollection_AlignedAllocator",
                                header: "NCollection_AlignedAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##
                                                                                                                   ## !
                                                                                                                   ## Constructor.
                                                                                                                   ## The
                                                                                                                   ## alignment
                                                                                                                   ## should
                                                                                                                   ## be
                                                                                                                   ## specified
                                                                                                                   ## explicitly:
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## 16
                                                                                                                   ## bytes
                                                                                                                   ## for
                                                                                                                   ## SSE
                                                                                                                   ## instructions
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## 32
                                                                                                                   ## bytes
                                                                                                                   ## for
                                                                                                                   ## AVX
                                                                                                                   ## instructions
    ## !< alignment in bytes


proc constructNCollectionAlignedAllocator*(theAlignment: csize_t): NCollectionAlignedAllocator {.
    constructor, importcpp: "NCollection_AlignedAllocator(@)",
    header: "NCollection_AlignedAllocator.hxx".}
proc allocate*(this: var NCollectionAlignedAllocator; theSize: csize_t): pointer {.
    importcpp: "Allocate", header: "NCollection_AlignedAllocator.hxx".}
proc free*(this: var NCollectionAlignedAllocator; thePtr: pointer) {.
    importcpp: "Free", header: "NCollection_AlignedAllocator.hxx".}
type
  NCollectionAlignedAllocatorbaseType* = NCollectionBaseAllocator

proc getTypeName*(): cstring {.importcpp: "NCollection_AlignedAllocator::get_type_name(@)",
                            header: "NCollection_AlignedAllocator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NCollection_AlignedAllocator::get_type_descriptor(@)",
    header: "NCollection_AlignedAllocator.hxx".}
proc dynamicType*(this: NCollectionAlignedAllocator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "NCollection_AlignedAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_AlignedAllocator"
type
  HandleNCollectionAlignedAllocator* = Handle[NCollectionAlignedAllocator]

