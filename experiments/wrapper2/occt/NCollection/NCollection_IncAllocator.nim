##  Created on: 2002-04-12
##  Created by: Alexander GRIGORIEV
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

discard "forward decl of Standard_Mutex"
type
  NCollection_IncAllocator* {.importcpp: "NCollection_IncAllocator::NCollection_IncAllocator",
                             header: "NCollection_IncAllocator.hxx", bycopy.} = object of NCollection_BaseAllocator ##  The type defining the alignement of allocated objects
                                                                                                             ##  Prohibited methods
                                                                                                             ##  ----- PROTECTED CLASS IBlock -------
                                                                                                             ##  --------- PROTECTED FIELDS ---------
                                                                                                             ##  Declaration of CASCADE RTTI

  NCollection_IncAllocatoraligned_t* = pointer

proc constructNCollection_IncAllocator*(theBlockSize: csize_t = DefaultBlockSize): NCollection_IncAllocator {.
    constructor, importcpp: "NCollection_IncAllocator(@)",
    header: "NCollection_IncAllocator.hxx".}
proc SetThreadSafe*(this: var NCollection_IncAllocator; theIsThreadSafe: bool = true) {.
    importcpp: "SetThreadSafe", header: "NCollection_IncAllocator.hxx".}
proc Allocate*(this: var NCollection_IncAllocator; size: csize_t): pointer {.
    importcpp: "Allocate", header: "NCollection_IncAllocator.hxx".}
proc Free*(this: var NCollection_IncAllocator; anAddress: pointer) {.
    importcpp: "Free", header: "NCollection_IncAllocator.hxx".}
proc GetMemSize*(this: NCollection_IncAllocator): csize_t {.noSideEffect,
    importcpp: "GetMemSize", header: "NCollection_IncAllocator.hxx".}
proc destroyNCollection_IncAllocator*(this: var NCollection_IncAllocator) {.
    importcpp: "#.~NCollection_IncAllocator()",
    header: "NCollection_IncAllocator.hxx".}
proc Reallocate*(this: var NCollection_IncAllocator; anAddress: pointer;
                oldSize: csize_t; newSize: csize_t): pointer {.
    importcpp: "Reallocate", header: "NCollection_IncAllocator.hxx".}
proc Reset*(this: var NCollection_IncAllocator;
           doReleaseMem: Standard_Boolean = Standard_True) {.importcpp: "Reset",
    header: "NCollection_IncAllocator.hxx".}
type
  NCollection_IncAllocatorbase_type* = NCollection_BaseAllocator

proc get_type_name*(): cstring {.importcpp: "NCollection_IncAllocator::get_type_name(@)",
                              header: "NCollection_IncAllocator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_IncAllocator::get_type_descriptor(@)",
    header: "NCollection_IncAllocator.hxx".}
proc DynamicType*(this: NCollection_IncAllocator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NCollection_IncAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of NCollection_IncAllocator"
type
  Handle_NCollection_IncAllocator* = handle[NCollection_IncAllocator]
