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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Type

discard "forward decl of LDOM_Document"
discard "forward decl of LDOM_BasicElement"
discard "forward decl of LDOM_MemManager"
discard "forward decl of LDOMBasicString"
discard "forward decl of LDOM_MemManager"
type
  Handle_LDOM_MemManager* = handle[LDOM_MemManager]

##   Class LDOM_MemManager (underlying structure of LDOM_Document)
##

type
  LDOM_MemManager* {.importcpp: "LDOM_MemManager::LDOM_MemManager",
                    header: "LDOM_MemManager.hxx", bycopy.} = object of Standard_Transient ##  ---------- PUBLIC METHODS ----------
                                                                                    ##  CASCADE RTTI


proc constructLDOM_MemManager*(aBlockSize: Standard_Integer): LDOM_MemManager {.
    constructor, importcpp: "LDOM_MemManager(@)", header: "LDOM_MemManager.hxx".}
proc destroyLDOM_MemManager*(this: var LDOM_MemManager) {.
    importcpp: "#.~LDOM_MemManager()", header: "LDOM_MemManager.hxx".}
proc Allocate*(this: var LDOM_MemManager; aSize: Standard_Integer): pointer {.
    importcpp: "Allocate", header: "LDOM_MemManager.hxx".}
proc HashedAllocate*(this: var LDOM_MemManager; aString: cstring;
                    theLen: Standard_Integer; theHash: var Standard_Integer): cstring {.
    importcpp: "HashedAllocate", header: "LDOM_MemManager.hxx".}
proc HashedAllocate*(this: var LDOM_MemManager; aString: cstring;
                    theLen: Standard_Integer; theResult: var LDOMBasicString) {.
    importcpp: "HashedAllocate", header: "LDOM_MemManager.hxx".}
proc Hash*(theString: cstring; theLen: Standard_Integer): Standard_Integer {.
    importcpp: "LDOM_MemManager::Hash(@)", header: "LDOM_MemManager.hxx".}
proc CompareStrings*(theString: cstring; theHashValue: Standard_Integer;
                    theHashedStr: cstring): Standard_Boolean {.
    importcpp: "LDOM_MemManager::CompareStrings(@)", header: "LDOM_MemManager.hxx".}
proc Self*(this: LDOM_MemManager): LDOM_MemManager {.noSideEffect, importcpp: "Self",
    header: "LDOM_MemManager.hxx".}
proc RootElement*(this: LDOM_MemManager): ptr LDOM_BasicElement {.noSideEffect,
    importcpp: "RootElement", header: "LDOM_MemManager.hxx".}
type
  LDOM_MemManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "LDOM_MemManager::get_type_name(@)",
                              header: "LDOM_MemManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "LDOM_MemManager::get_type_descriptor(@)",
    header: "LDOM_MemManager.hxx".}
proc DynamicType*(this: LDOM_MemManager): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "LDOM_MemManager.hxx".}