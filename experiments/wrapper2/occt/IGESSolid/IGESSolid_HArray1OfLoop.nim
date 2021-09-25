##  Created on: 1993-01-11
##  Created by: SIVA
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

type
  IGESSolidHArray1OfLoop* {.importcpp: "IGESSolid_HArray1OfLoop",
                           header: "IGESSolid_HArray1OfLoop.hxx", bycopy.} = object of IGESSolidArray1OfLoop


proc constructIGESSolidHArray1OfLoop*(theLower: int; theUpper: int): IGESSolidHArray1OfLoop {.
    constructor, importcpp: "IGESSolid_HArray1OfLoop(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc constructIGESSolidHArray1OfLoop*(theLower: int; theUpper: int;
                                     theValue: ValueType): IGESSolidHArray1OfLoop {.
    constructor, importcpp: "IGESSolid_HArray1OfLoop(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc constructIGESSolidHArray1OfLoop*(theOther: IGESSolidArray1OfLoop): IGESSolidHArray1OfLoop {.
    constructor, importcpp: "IGESSolid_HArray1OfLoop(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc array1*(this: IGESSolidHArray1OfLoop): IGESSolidArray1OfLoop {.noSideEffect,
    importcpp: "Array1", header: "IGESSolid_HArray1OfLoop.hxx".}
proc changeArray1*(this: var IGESSolidHArray1OfLoop): var IGESSolidArray1OfLoop {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfLoop.hxx".}
type
  IGESSolidHArray1OfLoopbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESSolid_HArray1OfLoop::get_type_name(@)",
                            header: "IGESSolid_HArray1OfLoop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_HArray1OfLoop::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfLoop.hxx".}
proc dynamicType*(this: IGESSolidHArray1OfLoop): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_HArray1OfLoop.hxx".}
