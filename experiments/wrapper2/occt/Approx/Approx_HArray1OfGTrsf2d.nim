##  Created on: 1993-01-26
##  Created by: Laurent PAINNOT
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
  ApproxHArray1OfGTrsf2d* {.importcpp: "Approx_HArray1OfGTrsf2d",
                           header: "Approx_HArray1OfGTrsf2d.hxx", bycopy.} = object of ApproxArray1OfGTrsf2d


proc constructApproxHArray1OfGTrsf2d*(theLower: int; theUpper: int): ApproxHArray1OfGTrsf2d {.
    constructor, importcpp: "Approx_HArray1OfGTrsf2d(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc constructApproxHArray1OfGTrsf2d*(theLower: int; theUpper: int;
                                     theValue: ValueType): ApproxHArray1OfGTrsf2d {.
    constructor, importcpp: "Approx_HArray1OfGTrsf2d(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc constructApproxHArray1OfGTrsf2d*(theOther: ApproxArray1OfGTrsf2d): ApproxHArray1OfGTrsf2d {.
    constructor, importcpp: "Approx_HArray1OfGTrsf2d(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc array1*(this: ApproxHArray1OfGTrsf2d): ApproxArray1OfGTrsf2d {.noSideEffect,
    importcpp: "Array1", header: "Approx_HArray1OfGTrsf2d.hxx".}
proc changeArray1*(this: var ApproxHArray1OfGTrsf2d): var ApproxArray1OfGTrsf2d {.
    importcpp: "ChangeArray1", header: "Approx_HArray1OfGTrsf2d.hxx".}
type
  ApproxHArray1OfGTrsf2dbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Approx_HArray1OfGTrsf2d::get_type_name(@)",
                            header: "Approx_HArray1OfGTrsf2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Approx_HArray1OfGTrsf2d::get_type_descriptor(@)",
    header: "Approx_HArray1OfGTrsf2d.hxx".}
proc dynamicType*(this: ApproxHArray1OfGTrsf2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Approx_HArray1OfGTrsf2d.hxx".}
