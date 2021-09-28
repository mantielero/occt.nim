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

discard "forward decl of LDOM_XmlReader"
discard "forward decl of LDOM_Element"
discard "forward decl of LDOM_Attr"
discard "forward decl of LDOM_Node"
type
  LDOM_BasicAttribute* {.importcpp: "LDOM_BasicAttribute",
                        header: "LDOM_BasicAttribute.hxx", bycopy.} = object of LDOM_BasicNode ##  ---------- PUBLIC METHODS ----------
                                                                                        ##  ---------- PRIVATE FIELDS ----------
                                                                                        ##   LDOMBasicString       myName;


proc constructLDOM_BasicAttribute*(): LDOM_BasicAttribute {.constructor,
    importcpp: "LDOM_BasicAttribute(@)", header: "LDOM_BasicAttribute.hxx".}
proc getName*(this: LDOM_BasicAttribute): cstring {.noSideEffect,
    importcpp: "GetName", header: "LDOM_BasicAttribute.hxx".}
proc getValue*(this: LDOM_BasicAttribute): LDOMBasicString {.noSideEffect,
    importcpp: "GetValue", header: "LDOM_BasicAttribute.hxx".}
proc setValue*(this: var LDOM_BasicAttribute; aValue: LDOMBasicString;
              aDoc: Handle[LDOM_MemManager]) {.importcpp: "SetValue",
    header: "LDOM_BasicAttribute.hxx".}

























