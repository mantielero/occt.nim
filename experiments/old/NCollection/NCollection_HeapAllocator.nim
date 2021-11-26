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

type
  NCollectionHeapAllocator* {.importcpp: "NCollection_HeapAllocator",
                             header: "NCollection_HeapAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##  ---------- PUBLIC METHODS ----------
                                                                                                             ## ! Constructor - prohibited
                                                                                                             ## ! Copy constructor - prohibited
                                                                                                             ##  Declaration of CASCADE RTTI
type
  HandleNCollectionHeapAllocator* = Handle[NCollectionHeapAllocator]

proc allocate*(this: var NCollectionHeapAllocator; theSize: StandardSize): pointer {.
    importcpp: "Allocate", header: "NCollection_HeapAllocator.hxx".}
proc free*(this: var NCollectionHeapAllocator; anAddress: pointer) {.
    importcpp: "Free", header: "NCollection_HeapAllocator.hxx".}
proc globalHeapAllocator*(): Handle[NCollectionHeapAllocator] {.
    importcpp: "NCollection_HeapAllocator::GlobalHeapAllocator(@)",
    header: "NCollection_HeapAllocator.hxx".}
type
  NCollectionHeapAllocatorbaseType* = NCollectionBaseAllocator

#[ proc getTypeName*(): cstring {.importcpp: "NCollection_HeapAllocator::get_type_name(@)",
                            header: "NCollection_HeapAllocator.hxx".} ]#
#[ proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NCollection_HeapAllocator::get_type_descriptor(@)",
    header: "NCollection_HeapAllocator.hxx".} ]#
#[ proc dynamicType*(this: NCollectionHeapAllocator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "NCollection_HeapAllocator.hxx".} ]#
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_HeapAllocator"

