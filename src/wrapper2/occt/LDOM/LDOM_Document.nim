##  Created on: 2001-06-25
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
  LDOM_Element, LDOM_Text, LDOM_CDATASection, LDOM_Comment

discard "forward decl of LDOM_MemManager"
type
  LDOM_Document* {.importcpp: "LDOM_Document", header: "LDOM_Document.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------


proc constructLDOM_Document*(): LDOM_Document {.constructor,
    importcpp: "LDOM_Document(@)", header: "LDOM_Document.hxx".}
proc constructLDOM_Document*(aMemManager: LDOM_MemManager): LDOM_Document {.
    constructor, importcpp: "LDOM_Document(@)", header: "LDOM_Document.hxx".}
proc destroyLDOM_Document*(this: var LDOM_Document) {.
    importcpp: "#.~LDOM_Document()", header: "LDOM_Document.hxx".}
proc createDocument*(theQualifiedName: LDOMString): LDOM_Document {.
    importcpp: "LDOM_Document::createDocument(@)", header: "LDOM_Document.hxx".}
proc createElement*(this: var LDOM_Document; theTagName: LDOMString): LDOM_Element {.
    importcpp: "createElement", header: "LDOM_Document.hxx".}
proc createCDATASection*(this: var LDOM_Document; theData: LDOMString): LDOM_CDATASection {.
    importcpp: "createCDATASection", header: "LDOM_Document.hxx".}
proc createComment*(this: var LDOM_Document; theData: LDOMString): LDOM_Comment {.
    importcpp: "createComment", header: "LDOM_Document.hxx".}
proc createTextNode*(this: var LDOM_Document; theData: LDOMString): LDOM_Text {.
    importcpp: "createTextNode", header: "LDOM_Document.hxx".}
proc getDocumentElement*(this: LDOM_Document): LDOM_Element {.noSideEffect,
    importcpp: "getDocumentElement", header: "LDOM_Document.hxx".}
proc getElementsByTagName*(this: LDOM_Document; theTagName: LDOMString): LDOM_NodeList {.
    noSideEffect, importcpp: "getElementsByTagName", header: "LDOM_Document.hxx".}
proc `==`*(this: LDOM_Document; anOther: LDOM_Document): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "LDOM_Document.hxx".}
proc `==`*(this: LDOM_Document; a2: ptr LDOM_NullPtr): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "LDOM_Document.hxx".}
proc isNull*(this: LDOM_Document): Standard_Boolean {.noSideEffect,
    importcpp: "isNull", header: "LDOM_Document.hxx".}