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



proc newLDOMString*(): LDOMString {.cdecl, constructor, importcpp: "LDOMString(@)",
                                 header: "LDOMString.hxx".}
proc newLDOMString*(anOther: LDOMString): LDOMString {.cdecl, constructor,
    importcpp: "LDOMString(@)", header: "LDOMString.hxx".}
proc newLDOMString*(aValue: cint): LDOMString {.cdecl, constructor,
    importcpp: "LDOMString(@)", header: "LDOMString.hxx".}
proc newLDOMString*(aValue: cstring): LDOMString {.cdecl, constructor,
    importcpp: "LDOMString(@)", header: "LDOMString.hxx".}
proc getOwnerDocument*(this: LDOMString): LDOM_MemManager {.noSideEffect, cdecl,
    importcpp: "getOwnerDocument", header: "LDOMString.hxx".}

