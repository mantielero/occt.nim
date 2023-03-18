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



proc newLDOM_Attr*(): LDOM_Attr {.cdecl, constructor, importcpp: "LDOM_Attr(@)",
                               header: "LDOM_Attr.hxx".}
proc newLDOM_Attr*(anOther: LDOM_Attr): LDOM_Attr {.cdecl, constructor,
    importcpp: "LDOM_Attr(@)", header: "LDOM_Attr.hxx".}
proc getName*(this: LDOM_Attr): LDOMString {.noSideEffect, cdecl,
    importcpp: "getName", header: "LDOM_Attr.hxx".}
proc getValue*(this: LDOM_Attr): LDOMString {.noSideEffect, cdecl,
    importcpp: "getValue", header: "LDOM_Attr.hxx".}
proc setValue*(this: var LDOM_Attr; aValue: LDOMString) {.cdecl, importcpp: "setValue",
    header: "LDOM_Attr.hxx".}

