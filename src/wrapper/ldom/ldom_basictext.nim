import ../standard/standard_types
import ldom_types



##  Created on: 2001-07-26
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



proc newLDOM_BasicText*(): LDOM_BasicText {.cdecl, constructor,
    importcpp: "LDOM_BasicText(@)", header: "LDOM_BasicText.hxx".}
proc getData*(this: LDOM_BasicText): LDOMBasicString {.noSideEffect, cdecl,
    importcpp: "GetData", header: "LDOM_BasicText.hxx".}
proc setData*(this: var LDOM_BasicText; aValue: LDOMBasicString;
             aDoc: Handle[LDOM_MemManager]) {.cdecl, importcpp: "SetData",
    header: "LDOM_BasicText.hxx".}

