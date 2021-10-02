when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
    cdecl, constructor, importcpp: "NCollection_IncAllocator(@)", dynlib: tkernel.}
proc SetThreadSafe*(this: var NCollection_IncAllocator; theIsThreadSafe: bool = true) {.
    cdecl, importcpp: "SetThreadSafe", dynlib: tkernel.}
proc Allocate*(this: var NCollection_IncAllocator; size: csize_t): pointer {.cdecl,
    importcpp: "Allocate", dynlib: tkernel.}
proc Free*(this: var NCollection_IncAllocator; anAddress: pointer) {.cdecl,
    importcpp: "Free", dynlib: tkernel.}
proc GetMemSize*(this: NCollection_IncAllocator): csize_t {.noSideEffect, cdecl,
    importcpp: "GetMemSize", dynlib: tkernel.}
proc destroyNCollection_IncAllocator*(this: var NCollection_IncAllocator) {.cdecl,
    importcpp: "#.~NCollection_IncAllocator()", dynlib: tkernel.}
proc Reallocate*(this: var NCollection_IncAllocator; anAddress: pointer;
                oldSize: csize_t; newSize: csize_t): pointer {.cdecl,
    importcpp: "Reallocate", dynlib: tkernel.}
proc Reset*(this: var NCollection_IncAllocator; doReleaseMem: bool = Standard_True) {.
    cdecl, importcpp: "Reset", dynlib: tkernel.}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

type
  Handle_NCollection_IncAllocator* = handle[NCollection_IncAllocator]
