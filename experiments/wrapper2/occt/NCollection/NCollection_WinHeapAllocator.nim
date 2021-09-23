##  Created on: 2011-07-11
##  Created by: Kirill GAVRILOV
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
  NCollection_BaseAllocator

## ! This memory allocator creates dedicated heap for allocations.
## ! This technics available only on Windows platform
## ! (no alternative on Unix systems).
## ! It may be used to take control over memory fragmentation
## ! because on destruction ALL allocated memory will be released
## ! to the system.
## !
## ! This allocator can also be created per each working thread
## ! hovewer it real multi-threading performance is dubious.
## !
## ! Notice that this also means that existing pointers will be broken
## ! and you shoould control that allocator is alive along all objects
## ! allocated with him.

type
  NCollection_WinHeapAllocator* {.importcpp: "NCollection_WinHeapAllocator",
                                 header: "NCollection_WinHeapAllocator.hxx",
                                 bycopy.} = object of NCollection_BaseAllocator ## ! Main
                                                                           ## constructor
                                                                           ## ! Copy
                                                                           ## constructor -
                                                                           ## prohibited
    when (defined(_WIN32) or defined(__WIN32__)):
      discard


proc constructNCollection_WinHeapAllocator*(theInitSizeBytes: csize_t = 0x80000): NCollection_WinHeapAllocator {.
    constructor, importcpp: "NCollection_WinHeapAllocator(@)",
    header: "NCollection_WinHeapAllocator.hxx".}
proc destroyNCollection_WinHeapAllocator*(this: var NCollection_WinHeapAllocator) {.
    importcpp: "#.~NCollection_WinHeapAllocator()",
    header: "NCollection_WinHeapAllocator.hxx".}
proc Allocate*(this: var NCollection_WinHeapAllocator; theSize: Standard_Size): pointer {.
    importcpp: "Allocate", header: "NCollection_WinHeapAllocator.hxx".}
proc Free*(this: var NCollection_WinHeapAllocator; theAddress: pointer) {.
    importcpp: "Free", header: "NCollection_WinHeapAllocator.hxx".}
type
  NCollection_WinHeapAllocatorbase_type* = NCollection_BaseAllocator

proc get_type_name*(): cstring {.importcpp: "NCollection_WinHeapAllocator::get_type_name(@)",
                              header: "NCollection_WinHeapAllocator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_WinHeapAllocator::get_type_descriptor(@)",
    header: "NCollection_WinHeapAllocator.hxx".}
proc DynamicType*(this: NCollection_WinHeapAllocator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "NCollection_WinHeapAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_WinHeapAllocator"
type
  Handle_NCollection_WinHeapAllocator* = handle[NCollection_WinHeapAllocator]
