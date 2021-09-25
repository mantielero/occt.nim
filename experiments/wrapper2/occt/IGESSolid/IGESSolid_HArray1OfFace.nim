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
  IGESSolidHArray1OfFace* {.importcpp: "IGESSolid_HArray1OfFace",
                           header: "IGESSolid_HArray1OfFace.hxx", bycopy.} = object of IGESSolidArray1OfFace


proc constructIGESSolidHArray1OfFace*(theLower: int; theUpper: int): IGESSolidHArray1OfFace {.
    constructor, importcpp: "IGESSolid_HArray1OfFace(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc constructIGESSolidHArray1OfFace*(theLower: int; theUpper: int;
                                     theValue: ValueType): IGESSolidHArray1OfFace {.
    constructor, importcpp: "IGESSolid_HArray1OfFace(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc constructIGESSolidHArray1OfFace*(theOther: IGESSolidArray1OfFace): IGESSolidHArray1OfFace {.
    constructor, importcpp: "IGESSolid_HArray1OfFace(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc array1*(this: IGESSolidHArray1OfFace): IGESSolidArray1OfFace {.noSideEffect,
    importcpp: "Array1", header: "IGESSolid_HArray1OfFace.hxx".}
proc changeArray1*(this: var IGESSolidHArray1OfFace): var IGESSolidArray1OfFace {.
    importcpp: "ChangeArray1", header: "IGESSolid_HArray1OfFace.hxx".}
type
  IGESSolidHArray1OfFacebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESSolid_HArray1OfFace::get_type_name(@)",
                            header: "IGESSolid_HArray1OfFace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_HArray1OfFace::get_type_descriptor(@)",
    header: "IGESSolid_HArray1OfFace.hxx".}
proc dynamicType*(this: IGESSolidHArray1OfFace): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_HArray1OfFace.hxx".}
