when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2014-04-01
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

## ! Low-level buffer object.

type
  NCollection_Buffer* {.importcpp: "NCollection_Buffer",
                       header: "NCollection_Buffer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Default
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## When
                                                                                          ## theData
                                                                                          ## is
                                                                                          ## NULL
                                                                                          ## but
                                                                                          ## theSize
                                                                                          ## is
                                                                                          ## not
                                                                                          ## 0
                                                                                          ## than
                                                                                          ## buffer
                                                                                          ## of
                                                                                          ## specified
                                                                                          ## size
                                                                                          ## will
                                                                                          ## be
                                                                                          ## allocated.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theAlloc
                                                                                          ## memory
                                                                                          ## allocator
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theSize
                                                                                          ## buffer
                                                                                          ## size
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theData
                                                                                          ## buffer
                                                                                          ## data
                                                                                          ## allocated
                                                                                          ## by
                                                                                          ## theAlloc
    ## !< data pointer
    ## !< buffer length in bytes
    ## !< buffer allocator


proc constructNCollection_Buffer*(theAlloc: handle[NCollection_BaseAllocator];
                                 theSize: csize_t = 0;
                                 theData: ptr Standard_Byte = nil): NCollection_Buffer {.
    cdecl, constructor, importcpp: "NCollection_Buffer(@)", dynlib: tkernel.}
proc destroyNCollection_Buffer*(this: var NCollection_Buffer) {.cdecl,
    importcpp: "#.~NCollection_Buffer()", dynlib: tkernel.}
proc Data*(this: NCollection_Buffer): ptr Standard_Byte {.noSideEffect, cdecl,
    importcpp: "Data", dynlib: tkernel.}
proc ChangeData*(this: var NCollection_Buffer): ptr Standard_Byte {.cdecl,
    importcpp: "ChangeData", dynlib: tkernel.}
proc IsEmpty*(this: NCollection_Buffer): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc Size*(this: NCollection_Buffer): csize_t {.noSideEffect, cdecl,
    importcpp: "Size", dynlib: tkernel.}
proc Allocator*(this: NCollection_Buffer): handle[NCollection_BaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}
proc SetAllocator*(this: var NCollection_Buffer;
                  theAlloc: handle[NCollection_BaseAllocator]) {.cdecl,
    importcpp: "SetAllocator", dynlib: tkernel.}
proc Allocate*(this: var NCollection_Buffer; theSize: csize_t): bool {.cdecl,
    importcpp: "Allocate", dynlib: tkernel.}
proc Free*(this: var NCollection_Buffer) {.cdecl, importcpp: "Free", dynlib: tkernel.}
proc DumpJson*(this: NCollection_Buffer; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}
type
  NCollection_Bufferbase_type* = Standard_Transient
  Handle_NCollection_Buffer* = handle[NCollection_Buffer]
