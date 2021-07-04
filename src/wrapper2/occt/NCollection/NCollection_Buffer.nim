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

import
  NCollection_BaseAllocator, ../Standard/Standard_Dump,
  ../Standard/Standard_Transient

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
                                 theSize: Standard_Size = 0;
                                 theData: ptr Standard_Byte = nil): NCollection_Buffer {.
    constructor, importcpp: "NCollection_Buffer(@)",
    header: "NCollection_Buffer.hxx".}
proc destroyNCollection_Buffer*(this: var NCollection_Buffer) {.
    importcpp: "#.~NCollection_Buffer()", header: "NCollection_Buffer.hxx".}
proc Data*(this: NCollection_Buffer): ptr Standard_Byte {.noSideEffect,
    importcpp: "Data", header: "NCollection_Buffer.hxx".}
proc ChangeData*(this: var NCollection_Buffer): ptr Standard_Byte {.
    importcpp: "ChangeData", header: "NCollection_Buffer.hxx".}
proc IsEmpty*(this: NCollection_Buffer): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "NCollection_Buffer.hxx".}
proc Size*(this: NCollection_Buffer): Standard_Size {.noSideEffect,
    importcpp: "Size", header: "NCollection_Buffer.hxx".}
proc Allocator*(this: NCollection_Buffer): handle[NCollection_BaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "NCollection_Buffer.hxx".}
proc SetAllocator*(this: var NCollection_Buffer;
                  theAlloc: handle[NCollection_BaseAllocator]) {.
    importcpp: "SetAllocator", header: "NCollection_Buffer.hxx".}
proc Allocate*(this: var NCollection_Buffer; theSize: Standard_Size): bool {.
    importcpp: "Allocate", header: "NCollection_Buffer.hxx".}
proc Free*(this: var NCollection_Buffer) {.importcpp: "Free",
                                       header: "NCollection_Buffer.hxx".}
proc DumpJson*(this: NCollection_Buffer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "NCollection_Buffer.hxx".}
type
  NCollection_Bufferbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "NCollection_Buffer::get_type_name(@)",
                              header: "NCollection_Buffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_Buffer::get_type_descriptor(@)",
    header: "NCollection_Buffer.hxx".}
proc DynamicType*(this: NCollection_Buffer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "NCollection_Buffer.hxx".}
discard "forward decl of NCollection_Buffer"
type
  Handle_NCollection_Buffer* = handle[NCollection_Buffer]
