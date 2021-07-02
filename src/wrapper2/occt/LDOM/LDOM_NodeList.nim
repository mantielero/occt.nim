##  Created on: 2001-06-28
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

discard "forward decl of LDOM_BasicNode"
discard "forward decl of LDOM_BasicNodeSequence"
type
  LDOM_NodeList* {.importcpp: "LDOM_NodeList", header: "LDOM_NodeList.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------


proc constructLDOM_NodeList*(): LDOM_NodeList {.constructor,
    importcpp: "LDOM_NodeList(@)", header: "LDOM_NodeList.hxx".}
proc constructLDOM_NodeList*(theOther: LDOM_NodeList): LDOM_NodeList {.constructor,
    importcpp: "LDOM_NodeList(@)", header: "LDOM_NodeList.hxx".}
proc destroyLDOM_NodeList*(this: var LDOM_NodeList) {.
    importcpp: "#.~LDOM_NodeList()", header: "LDOM_NodeList.hxx".}
proc `==`*(this: LDOM_NodeList; a2: ptr LDOM_NullPtr): StandardBoolean {.noSideEffect,
    importcpp: "(# == #)", header: "LDOM_NodeList.hxx".}
proc item*(this: LDOM_NodeList; a2: StandardInteger): LDOM_Node {.noSideEffect,
    importcpp: "item", header: "LDOM_NodeList.hxx".}
proc getLength*(this: LDOM_NodeList): StandardInteger {.noSideEffect,
    importcpp: "getLength", header: "LDOM_NodeList.hxx".}

