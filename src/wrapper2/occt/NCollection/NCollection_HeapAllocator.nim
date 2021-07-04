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

import
  NCollection_BaseAllocator

## *
##  Allocator that uses the global dynamic heap (malloc / free).
##

type
  NCollection_HeapAllocator* {.importcpp: "NCollection_HeapAllocator",
                              header: "NCollection_HeapAllocator.hxx", bycopy.} = object of NCollection_BaseAllocator ##  ---------- PUBLIC METHODS ----------
                                                                                                               ## ! Constructor - prohibited
                                                                                                               ## ! Copy constructor - prohibited
                                                                                                               ##  Declaration of CASCADE RTTI


proc Allocate*(this: var NCollection_HeapAllocator; theSize: Standard_Size): pointer {.
    importcpp: "Allocate", header: "NCollection_HeapAllocator.hxx".}
proc Free*(this: var NCollection_HeapAllocator; anAddress: pointer) {.
    importcpp: "Free", header: "NCollection_HeapAllocator.hxx".}
proc GlobalHeapAllocator*(): handle[NCollection_HeapAllocator] {.
    importcpp: "NCollection_HeapAllocator::GlobalHeapAllocator(@)",
    header: "NCollection_HeapAllocator.hxx".}
type
  NCollection_HeapAllocatorbase_type* = NCollection_BaseAllocator

proc get_type_name*(): cstring {.importcpp: "NCollection_HeapAllocator::get_type_name(@)",
                              header: "NCollection_HeapAllocator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_HeapAllocator::get_type_descriptor(@)",
    header: "NCollection_HeapAllocator.hxx".}
proc DynamicType*(this: NCollection_HeapAllocator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NCollection_HeapAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_HeapAllocator"
type
  Handle_NCollection_HeapAllocator* = handle[NCollection_HeapAllocator]
