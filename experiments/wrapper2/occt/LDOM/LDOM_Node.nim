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

discard "forward decl of LDOM_BasicNode"
type
  LDOM_Node* {.importcpp: "LDOM_Node", header: "LDOM_Node.hxx", bycopy.} = object ##  ---------- PROTECTED FIELDS ----------
                                                                          ##  smart pointer to document owner of the node
    ##  pointer to (non-transient) node data in the document-managed memory
    ##  Transient data (only applicable to LDOM_Element type):
    ##  the last child; myLastChild->mySibling points to the first attribute

  LDOM_NodeNodeType* {.size: sizeof(cint), importcpp: "LDOM_Node::NodeType",
                      header: "LDOM_Node.hxx".} = enum
    UNKNOWN = 0, ELEMENT_NODE = 1, ATTRIBUTE_NODE = 2, TEXT_NODE = 3,
    CDATA_SECTION_NODE = 4, COMMENT_NODE = 8


proc constructLDOM_Node*(): LDOM_Node {.constructor, importcpp: "LDOM_Node(@)",
                                     header: "LDOM_Node.hxx".}
proc constructLDOM_Node*(anOther: LDOM_Node): LDOM_Node {.constructor,
    importcpp: "LDOM_Node(@)", header: "LDOM_Node.hxx".}
proc getOwnerDocument*(this: LDOM_Node): LDOM_MemManager {.noSideEffect,
    importcpp: "getOwnerDocument", header: "LDOM_Node.hxx".}
proc `==`*(this: LDOM_Node; a2: ptr LDOM_NullPtr): bool {.noSideEffect,
    importcpp: "(# == #)", header: "LDOM_Node.hxx".}
proc `==`*(this: LDOM_Node; anOther: LDOM_Node): bool {.noSideEffect,
    importcpp: "(# == #)", header: "LDOM_Node.hxx".}
proc isNull*(this: LDOM_Node): bool {.noSideEffect, importcpp: "isNull",
                                  header: "LDOM_Node.hxx".}
proc getNodeType*(this: LDOM_Node): LDOM_NodeNodeType {.noSideEffect,
    importcpp: "getNodeType", header: "LDOM_Node.hxx".}
proc getNodeName*(this: LDOM_Node): LDOMString {.noSideEffect,
    importcpp: "getNodeName", header: "LDOM_Node.hxx".}
proc getNodeValue*(this: LDOM_Node): LDOMString {.noSideEffect,
    importcpp: "getNodeValue", header: "LDOM_Node.hxx".}
proc getFirstChild*(this: LDOM_Node): LDOM_Node {.noSideEffect,
    importcpp: "getFirstChild", header: "LDOM_Node.hxx".}
proc getLastChild*(this: LDOM_Node): LDOM_Node {.noSideEffect,
    importcpp: "getLastChild", header: "LDOM_Node.hxx".}
proc getNextSibling*(this: LDOM_Node): LDOM_Node {.noSideEffect,
    importcpp: "getNextSibling", header: "LDOM_Node.hxx".}
proc removeChild*(this: var LDOM_Node; aChild: LDOM_Node) {.importcpp: "removeChild",
    header: "LDOM_Node.hxx".}
proc appendChild*(this: var LDOM_Node; aChild: LDOM_Node) {.importcpp: "appendChild",
    header: "LDOM_Node.hxx".}
proc hasChildNodes*(this: LDOM_Node): bool {.noSideEffect,
    importcpp: "hasChildNodes", header: "LDOM_Node.hxx".}
proc setValueClear*(this: LDOM_Node) {.noSideEffect, importcpp: "SetValueClear",
                                    header: "LDOM_Node.hxx".}
