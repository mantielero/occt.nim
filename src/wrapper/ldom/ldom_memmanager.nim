import ldom_types



##  Created on: 2001-06-26
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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





proc newLDOM_MemManager*(aBlockSize: cint): LDOM_MemManager {.cdecl, constructor,
    importcpp: "LDOM_MemManager(@)", header: "LDOM_MemManager.hxx".}
proc destroyLDOM_MemManager*(this: var LDOM_MemManager) {.cdecl,
    importcpp: "#.~LDOM_MemManager()", header: "LDOM_MemManager.hxx".}
proc allocate*(this: var LDOM_MemManager; aSize: cint): pointer {.cdecl,
    importcpp: "Allocate", header: "LDOM_MemManager.hxx".}
proc hashedAllocate*(this: var LDOM_MemManager; aString: cstring; theLen: cint;
                    theHash: var cint): cstring {.cdecl, importcpp: "HashedAllocate",
    header: "LDOM_MemManager.hxx".}
proc hashedAllocate*(this: var LDOM_MemManager; aString: cstring; theLen: cint;
                    theResult: var LDOMBasicString) {.cdecl,
    importcpp: "HashedAllocate", header: "LDOM_MemManager.hxx".}
proc hash*(theString: cstring; theLen: cint): cint {.cdecl,
    importcpp: "LDOM_MemManager::Hash(@)", header: "LDOM_MemManager.hxx".}
proc compareStrings*(theString: cstring; theHashValue: cint; theHashedStr: cstring): bool {.
    cdecl, importcpp: "LDOM_MemManager::CompareStrings(@)",
    header: "LDOM_MemManager.hxx".}
proc self*(this: LDOM_MemManager): LDOM_MemManager {.noSideEffect, cdecl,
    importcpp: "Self", header: "LDOM_MemManager.hxx".}
proc rootElement*(this: LDOM_MemManager): ptr LDOM_BasicElement {.noSideEffect, cdecl,
    importcpp: "RootElement", header: "LDOM_MemManager.hxx".}

