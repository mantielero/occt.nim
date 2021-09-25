##  Created on: 1994-02-08
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1994-1999 Matra Datavision
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
  QuantityHArray1OfColor* {.importcpp: "Quantity_HArray1OfColor",
                           header: "Quantity_HArray1OfColor.hxx", bycopy.} = object of QuantityArray1OfColor


proc constructQuantityHArray1OfColor*(theLower: int; theUpper: int): QuantityHArray1OfColor {.
    constructor, importcpp: "Quantity_HArray1OfColor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc constructQuantityHArray1OfColor*(theLower: int; theUpper: int;
                                     theValue: ValueType): QuantityHArray1OfColor {.
    constructor, importcpp: "Quantity_HArray1OfColor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc constructQuantityHArray1OfColor*(theOther: QuantityArray1OfColor): QuantityHArray1OfColor {.
    constructor, importcpp: "Quantity_HArray1OfColor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc array1*(this: QuantityHArray1OfColor): QuantityArray1OfColor {.noSideEffect,
    importcpp: "Array1", header: "Quantity_HArray1OfColor.hxx".}
proc changeArray1*(this: var QuantityHArray1OfColor): var QuantityArray1OfColor {.
    importcpp: "ChangeArray1", header: "Quantity_HArray1OfColor.hxx".}
type
  QuantityHArray1OfColorbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Quantity_HArray1OfColor::get_type_name(@)",
                            header: "Quantity_HArray1OfColor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Quantity_HArray1OfColor::get_type_descriptor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc dynamicType*(this: QuantityHArray1OfColor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Quantity_HArray1OfColor.hxx".}
