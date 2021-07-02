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


proc constructNCollectionBuffer*(theAlloc: Handle[NCollectionBaseAllocator];
                                theSize: StandardSize = 0;
                                theData: ptr StandardByte = nil): NCollectionBuffer {.
    constructor, importcpp: "NCollection_Buffer(@)",
    header: "NCollection_Buffer.hxx".}
proc destroyNCollectionBuffer*(this: var NCollectionBuffer) {.
    importcpp: "#.~NCollection_Buffer()", header: "NCollection_Buffer.hxx".}
proc data*(this: NCollectionBuffer): ptr StandardByte {.noSideEffect,
    importcpp: "Data", header: "NCollection_Buffer.hxx".}
proc changeData*(this: var NCollectionBuffer): ptr StandardByte {.
    importcpp: "ChangeData", header: "NCollection_Buffer.hxx".}
proc isEmpty*(this: NCollectionBuffer): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "NCollection_Buffer.hxx".}
proc size*(this: NCollectionBuffer): StandardSize {.noSideEffect, importcpp: "Size",
    header: "NCollection_Buffer.hxx".}
proc allocator*(this: NCollectionBuffer): Handle[NCollectionBaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "NCollection_Buffer.hxx".}
proc setAllocator*(this: var NCollectionBuffer;
                  theAlloc: Handle[NCollectionBaseAllocator]) {.
    importcpp: "SetAllocator", header: "NCollection_Buffer.hxx".}
proc allocate*(this: var NCollectionBuffer; theSize: StandardSize): bool {.
    importcpp: "Allocate", header: "NCollection_Buffer.hxx".}
proc free*(this: var NCollectionBuffer) {.importcpp: "Free",
                                      header: "NCollection_Buffer.hxx".}
proc dumpJson*(this: NCollectionBuffer; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "NCollection_Buffer.hxx".}
type
  NCollectionBufferbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "NCollection_Buffer::get_type_name(@)",
                            header: "NCollection_Buffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NCollection_Buffer::get_type_descriptor(@)",
    header: "NCollection_Buffer.hxx".}
proc dynamicType*(this: NCollectionBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "NCollection_Buffer.hxx".}
discard "forward decl of NCollection_Buffer"
type
  HandleNCollectionBuffer* = Handle[NCollectionBuffer]


