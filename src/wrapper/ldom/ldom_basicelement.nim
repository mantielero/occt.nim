import ../standard/standard_types
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
## AGV 140202: Repl.(const char *) for (LDOMBasicString) => myTagName



proc newLDOM_BasicElement*(): LDOM_BasicElement {.cdecl, constructor,
    importcpp: "LDOM_BasicElement(@)", header: "LDOM_BasicElement.hxx".}
proc create*(aName: cstring; aLength: cint; aDoc: Handle[LDOM_MemManager]): var LDOM_BasicElement {.
    cdecl, importcpp: "LDOM_BasicElement::Create(@)",
    header: "LDOM_BasicElement.hxx".}
proc destroyLDOM_BasicElement*(this: var LDOM_BasicElement) {.cdecl,
    importcpp: "#.~LDOM_BasicElement()", header: "LDOM_BasicElement.hxx".}
proc getTagName*(this: LDOM_BasicElement): cstring {.noSideEffect, cdecl,
    importcpp: "GetTagName", header: "LDOM_BasicElement.hxx".}
proc getFirstChild*(this: LDOM_BasicElement): ptr LDOM_BasicNode {.noSideEffect,
    cdecl, importcpp: "GetFirstChild", header: "LDOM_BasicElement.hxx".}
proc getLastChild*(this: LDOM_BasicElement): ptr LDOM_BasicNode {.noSideEffect, cdecl,
    importcpp: "GetLastChild", header: "LDOM_BasicElement.hxx".}
proc getAttribute*(this: LDOM_BasicElement; aName: LDOMBasicString;
                  aLastCh: ptr LDOM_BasicNode): LDOM_BasicAttribute {.noSideEffect,
    cdecl, importcpp: "GetAttribute", header: "LDOM_BasicElement.hxx".}

