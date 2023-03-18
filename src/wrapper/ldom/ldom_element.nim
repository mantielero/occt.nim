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



proc newLDOM_Element*(): LDOM_Element {.cdecl, constructor,
                                     importcpp: "LDOM_Element(@)",
                                     header: "LDOM_Element.hxx".}
proc newLDOM_Element*(anOther: LDOM_Element): LDOM_Element {.cdecl, constructor,
    importcpp: "LDOM_Element(@)", header: "LDOM_Element.hxx".}
proc getTagName*(this: LDOM_Element): LDOMString {.noSideEffect, cdecl,
    importcpp: "getTagName", header: "LDOM_Element.hxx".}
proc getAttribute*(this: LDOM_Element; aName: LDOMString): LDOMString {.noSideEffect,
    cdecl, importcpp: "getAttribute", header: "LDOM_Element.hxx".}
proc getAttributeNode*(this: LDOM_Element; aName: LDOMString): LDOM_Attr {.
    noSideEffect, cdecl, importcpp: "getAttributeNode", header: "LDOM_Element.hxx".}
proc getElementsByTagName*(this: LDOM_Element; aName: LDOMString): LDOM_NodeList {.
    noSideEffect, cdecl, importcpp: "getElementsByTagName",
    header: "LDOM_Element.hxx".}
proc setAttribute*(this: var LDOM_Element; aName: LDOMString; aValue: LDOMString) {.
    cdecl, importcpp: "setAttribute", header: "LDOM_Element.hxx".}
proc setAttributeNode*(this: var LDOM_Element; aNewAttr: LDOM_Attr) {.cdecl,
    importcpp: "setAttributeNode", header: "LDOM_Element.hxx".}
proc removeAttribute*(this: var LDOM_Element; aName: LDOMString) {.cdecl,
    importcpp: "removeAttribute", header: "LDOM_Element.hxx".}
proc getChildByTagName*(this: LDOM_Element; aTagName: LDOMString): LDOM_Element {.
    noSideEffect, cdecl, importcpp: "GetChildByTagName", header: "LDOM_Element.hxx".}
proc getSiblingByTagName*(this: LDOM_Element): LDOM_Element {.noSideEffect, cdecl,
    importcpp: "GetSiblingByTagName", header: "LDOM_Element.hxx".}
proc replaceElement*(this: var LDOM_Element; anOther: LDOM_Element) {.cdecl,
    importcpp: "ReplaceElement", header: "LDOM_Element.hxx".}
proc getAttributesList*(this: LDOM_Element): LDOM_NodeList {.noSideEffect, cdecl,
    importcpp: "GetAttributesList", header: "LDOM_Element.hxx".}

