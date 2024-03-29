import ldom_types



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

##   Class LDOM_Document



proc newLDOM_Document*(): LDOM_Document {.cdecl, constructor,
                                       importcpp: "LDOM_Document(@)",
                                       header: "LDOM_Document.hxx".}
proc newLDOM_Document*(aMemManager: LDOM_MemManager): LDOM_Document {.cdecl,
    constructor, importcpp: "LDOM_Document(@)", header: "LDOM_Document.hxx".}
proc destroyLDOM_Document*(this: var LDOM_Document) {.cdecl,
    importcpp: "#.~LDOM_Document()", header: "LDOM_Document.hxx".}
proc createDocument*(theQualifiedName: LDOMString): LDOM_Document {.cdecl,
    importcpp: "LDOM_Document::createDocument(@)", header: "LDOM_Document.hxx".}
proc createElement*(this: var LDOM_Document; theTagName: LDOMString): LDOM_Element {.
    cdecl, importcpp: "createElement", header: "LDOM_Document.hxx".}
proc createCDATASection*(this: var LDOM_Document; theData: LDOMString): LDOM_CDATASection {.
    cdecl, importcpp: "createCDATASection", header: "LDOM_Document.hxx".}
proc createComment*(this: var LDOM_Document; theData: LDOMString): LDOM_Comment {.
    cdecl, importcpp: "createComment", header: "LDOM_Document.hxx".}
proc createTextNode*(this: var LDOM_Document; theData: LDOMString): LDOM_Text {.cdecl,
    importcpp: "createTextNode", header: "LDOM_Document.hxx".}
proc getDocumentElement*(this: LDOM_Document): LDOM_Element {.noSideEffect, cdecl,
    importcpp: "getDocumentElement", header: "LDOM_Document.hxx".}
proc getElementsByTagName*(this: LDOM_Document; theTagName: LDOMString): LDOM_NodeList {.
    noSideEffect, cdecl, importcpp: "getElementsByTagName",
    header: "LDOM_Document.hxx".}
proc `==`*(this: LDOM_Document; anOther: LDOM_Document): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "LDOM_Document.hxx".}
proc `==`*(this: LDOM_Document; a2: ptr LDOM_NullPtr): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "LDOM_Document.hxx".}
proc isNull*(this: LDOM_Document): bool {.noSideEffect, cdecl, importcpp: "isNull",
                                      header: "LDOM_Document.hxx".}

