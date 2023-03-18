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
## AGV 120202: Replace myDocument for myPtrDocument for better
##                           consistency of data




proc newLDOM_Node*(): LDOM_Node {.cdecl, constructor, importcpp: "LDOM_Node(@)",
                               header: "LDOM_Node.hxx".}
proc newLDOM_Node*(anOther: LDOM_Node): LDOM_Node {.cdecl, constructor,
    importcpp: "LDOM_Node(@)", header: "LDOM_Node.hxx".}
proc getOwnerDocument*(this: LDOM_Node): LDOM_MemManager {.noSideEffect, cdecl,
    importcpp: "getOwnerDocument", header: "LDOM_Node.hxx".}
proc `==`*(this: LDOM_Node; a2: ptr LDOM_NullPtr): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "LDOM_Node.hxx".}
proc `==`*(this: LDOM_Node; anOther: LDOM_Node): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "LDOM_Node.hxx".}
proc isNull*(this: LDOM_Node): bool {.noSideEffect, cdecl, importcpp: "isNull",
                                  header: "LDOM_Node.hxx".}
proc getNodeType*(this: LDOM_Node): LDOM_NodeNodeType {.noSideEffect, cdecl,
    importcpp: "getNodeType", header: "LDOM_Node.hxx".}
proc getNodeName*(this: LDOM_Node): LDOMString {.noSideEffect, cdecl,
    importcpp: "getNodeName", header: "LDOM_Node.hxx".}
proc getNodeValue*(this: LDOM_Node): LDOMString {.noSideEffect, cdecl,
    importcpp: "getNodeValue", header: "LDOM_Node.hxx".}
proc getFirstChild*(this: LDOM_Node): LDOM_Node {.noSideEffect, cdecl,
    importcpp: "getFirstChild", header: "LDOM_Node.hxx".}
proc getLastChild*(this: LDOM_Node): LDOM_Node {.noSideEffect, cdecl,
    importcpp: "getLastChild", header: "LDOM_Node.hxx".}
proc getNextSibling*(this: LDOM_Node): LDOM_Node {.noSideEffect, cdecl,
    importcpp: "getNextSibling", header: "LDOM_Node.hxx".}
proc removeChild*(this: var LDOM_Node; aChild: LDOM_Node) {.cdecl,
    importcpp: "removeChild", header: "LDOM_Node.hxx".}
proc appendChild*(this: var LDOM_Node; aChild: LDOM_Node) {.cdecl,
    importcpp: "appendChild", header: "LDOM_Node.hxx".}
proc hasChildNodes*(this: LDOM_Node): bool {.noSideEffect, cdecl,
    importcpp: "hasChildNodes", header: "LDOM_Node.hxx".}
proc setValueClear*(this: LDOM_Node) {.noSideEffect, cdecl,
                                    importcpp: "SetValueClear",
                                    header: "LDOM_Node.hxx".}

