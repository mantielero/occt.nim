when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
    cdecl, constructor, importcpp: "NCollection_AlignedAllocator(@)",
    dynlib: tkernel.}
proc Allocate*(this: var NCollection_AlignedAllocator; theSize: csize_t): pointer {.
    cdecl, importcpp: "Allocate", dynlib: tkernel.}
proc Free*(this: var NCollection_AlignedAllocator; thePtr: pointer) {.cdecl,
    importcpp: "Free", dynlib: tkernel.}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

type
  Handle_NCollection_AlignedAllocator* = handle[NCollection_AlignedAllocator]
