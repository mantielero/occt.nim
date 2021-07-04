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
  LDOM_Node

discard "forward decl of LDOM_BasicAttribute"
discard "forward decl of LDOM_Element"
type
  LDOM_Attr* {.importcpp: "LDOM_Attr", header: "LDOM_Attr.hxx", bycopy.} = object of LDOM_Node ##  ---------- PUBLIC METHODS ----------
                                                                                     ##  ---------- PRIVATE FIELDS ----------


proc constructLDOM_Attr*(): LDOM_Attr {.constructor, importcpp: "LDOM_Attr(@)",
                                     header: "LDOM_Attr.hxx".}
proc constructLDOM_Attr*(anOther: LDOM_Attr): LDOM_Attr {.constructor,
    importcpp: "LDOM_Attr(@)", header: "LDOM_Attr.hxx".}
proc getName*(this: LDOM_Attr): LDOMString {.noSideEffect, importcpp: "getName",
    header: "LDOM_Attr.hxx".}
proc getValue*(this: LDOM_Attr): LDOMString {.noSideEffect, importcpp: "getValue",
    header: "LDOM_Attr.hxx".}
proc setValue*(this: var LDOM_Attr; aValue: LDOMString) {.importcpp: "setValue",
    header: "LDOM_Attr.hxx".}