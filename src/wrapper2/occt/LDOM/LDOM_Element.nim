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
  LDOM_Attr, LDOM_NodeList

discard "forward decl of LDOMParser"
discard "forward decl of LDOM_BasicElement"
type
  LDOM_Element* {.importcpp: "LDOM_Element", header: "LDOM_Element.hxx", bycopy.} = object of LDOM_Node ##  ---------- PUBLIC METHODS ----------
                                                                                              ##  ---------- PRIVATE FIELDS ----------


proc constructLDOM_Element*(): LDOM_Element {.constructor,
    importcpp: "LDOM_Element(@)", header: "LDOM_Element.hxx".}
proc constructLDOM_Element*(anOther: LDOM_Element): LDOM_Element {.constructor,
    importcpp: "LDOM_Element(@)", header: "LDOM_Element.hxx".}
proc getTagName*(this: LDOM_Element): LDOMString {.noSideEffect,
    importcpp: "getTagName", header: "LDOM_Element.hxx".}
proc getAttribute*(this: LDOM_Element; aName: LDOMString): LDOMString {.noSideEffect,
    importcpp: "getAttribute", header: "LDOM_Element.hxx".}
proc getAttributeNode*(this: LDOM_Element; aName: LDOMString): LDOM_Attr {.
    noSideEffect, importcpp: "getAttributeNode", header: "LDOM_Element.hxx".}
proc getElementsByTagName*(this: LDOM_Element; aName: LDOMString): LDOM_NodeList {.
    noSideEffect, importcpp: "getElementsByTagName", header: "LDOM_Element.hxx".}
proc setAttribute*(this: var LDOM_Element; aName: LDOMString; aValue: LDOMString) {.
    importcpp: "setAttribute", header: "LDOM_Element.hxx".}
proc setAttributeNode*(this: var LDOM_Element; aNewAttr: LDOM_Attr) {.
    importcpp: "setAttributeNode", header: "LDOM_Element.hxx".}
proc removeAttribute*(this: var LDOM_Element; aName: LDOMString) {.
    importcpp: "removeAttribute", header: "LDOM_Element.hxx".}
proc GetChildByTagName*(this: LDOM_Element; aTagName: LDOMString): LDOM_Element {.
    noSideEffect, importcpp: "GetChildByTagName", header: "LDOM_Element.hxx".}
proc GetSiblingByTagName*(this: LDOM_Element): LDOM_Element {.noSideEffect,
    importcpp: "GetSiblingByTagName", header: "LDOM_Element.hxx".}
proc ReplaceElement*(this: var LDOM_Element; anOther: LDOM_Element) {.
    importcpp: "ReplaceElement", header: "LDOM_Element.hxx".}
proc GetAttributesList*(this: LDOM_Element): LDOM_NodeList {.noSideEffect,
    importcpp: "GetAttributesList", header: "LDOM_Element.hxx".}