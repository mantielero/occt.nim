import ncollection_types
import ../standard/standard_types

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


proc newNCollectionIncAllocator*(theBlockSize: csize_t = DefaultBlockSize): NCollectionIncAllocator {.
    cdecl, constructor, importcpp: "NCollection_IncAllocator(@)", header: "NCollection_IncAllocator.hxx".}
proc setThreadSafe*(this: var NCollectionIncAllocator; theIsThreadSafe: bool = true) {.
    cdecl, importcpp: "SetThreadSafe", header: "NCollection_IncAllocator.hxx".}
proc allocate*(this: var NCollectionIncAllocator; size: csize_t): pointer {.cdecl,
    importcpp: "Allocate", header: "NCollection_IncAllocator.hxx".}
proc free*(this: var NCollectionIncAllocator; anAddress: pointer) {.cdecl,
    importcpp: "Free", header: "NCollection_IncAllocator.hxx".}
proc getMemSize*(this: NCollectionIncAllocator): csize_t {.noSideEffect, cdecl,
    importcpp: "GetMemSize", header: "NCollection_IncAllocator.hxx".}
proc destroyNCollectionIncAllocator*(this: var NCollectionIncAllocator) {.cdecl,
    importcpp: "#.~NCollection_IncAllocator()", header: "NCollection_IncAllocator.hxx".}
proc reallocate*(this: var NCollectionIncAllocator; anAddress: pointer;
                oldSize: csize_t; newSize: csize_t): pointer {.cdecl,
    importcpp: "Reallocate", header: "NCollection_IncAllocator.hxx".}
proc reset*(this: var NCollectionIncAllocator; doReleaseMem: bool = true) {.
    cdecl, importcpp: "Reset", header: "NCollection_IncAllocator.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx


