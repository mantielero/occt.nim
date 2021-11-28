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
  NCollectionBuffer* {.importcpp: "NCollection_Buffer",
                      header: "NCollection_Buffer.hxx", bycopy.} = object of StandardTransient ##
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


proc newNCollectionBuffer*(theAlloc: Handle[NCollectionBaseAllocator];
                          theSize: csize_t = 0; theData: ptr StandardByte = nil): NCollectionBuffer {.
    cdecl, constructor, importcpp: "NCollection_Buffer(@)", dynlib: tkernel.}
proc destroyNCollectionBuffer*(this: var NCollectionBuffer) {.cdecl,
    importcpp: "#.~NCollection_Buffer()", dynlib: tkernel.}
proc data*(this: NCollectionBuffer): ptr StandardByte {.noSideEffect, cdecl,
    importcpp: "Data", dynlib: tkernel.}
proc changeData*(this: var NCollectionBuffer): ptr StandardByte {.cdecl,
    importcpp: "ChangeData", dynlib: tkernel.}
proc isEmpty*(this: NCollectionBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc size*(this: NCollectionBuffer): csize_t {.noSideEffect, cdecl, importcpp: "Size",
    dynlib: tkernel.}
proc allocator*(this: NCollectionBuffer): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}
proc setAllocator*(this: var NCollectionBuffer;
                  theAlloc: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "SetAllocator", dynlib: tkernel.}
proc allocate*(this: var NCollectionBuffer; theSize: csize_t): bool {.cdecl,
    importcpp: "Allocate", dynlib: tkernel.}
proc free*(this: var NCollectionBuffer) {.cdecl, importcpp: "Free", dynlib: tkernel.}
proc dumpJson*(this: NCollectionBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}
type
  NCollectionBufferbaseType* = StandardTransient
  HandleNCollectionBuffer* = Handle[NCollectionBuffer]
