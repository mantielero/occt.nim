import ncollection_types

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



proc newNCollectionBuffer*(theAlloc: Handle[NCollectionBaseAllocator];
                          theSize: csize_t = 0; theData: ptr StandardByte = nil): NCollectionBuffer {.
    cdecl, constructor, importcpp: "NCollection_Buffer(@)", header: "NCollection_Buffer.hxx".}
proc destroyNCollectionBuffer*(this: var NCollectionBuffer) {.cdecl,
    importcpp: "#.~NCollection_Buffer()", header: "NCollection_Buffer.hxx".}
proc data*(this: NCollectionBuffer): ptr StandardByte {.noSideEffect, cdecl,
    importcpp: "Data", header: "NCollection_Buffer.hxx".}
proc changeData*(this: var NCollectionBuffer): ptr StandardByte {.cdecl,
    importcpp: "ChangeData", header: "NCollection_Buffer.hxx".}
proc isEmpty*(this: NCollectionBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "NCollection_Buffer.hxx".}
proc size*(this: NCollectionBuffer): csize_t {.noSideEffect, cdecl, importcpp: "Size",
    header: "NCollection_Buffer.hxx".}
proc allocator*(this: NCollectionBuffer): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "NCollection_Buffer.hxx".}
proc setAllocator*(this: var NCollectionBuffer;
                  theAlloc: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "SetAllocator", header: "NCollection_Buffer.hxx".}
proc allocate*(this: var NCollectionBuffer; theSize: csize_t): bool {.cdecl,
    importcpp: "Allocate", header: "NCollection_Buffer.hxx".}
proc free*(this: var NCollectionBuffer) {.cdecl, importcpp: "Free", header: "NCollection_Buffer.hxx".}
proc dumpJson*(this: NCollectionBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "NCollection_Buffer.hxx".}

