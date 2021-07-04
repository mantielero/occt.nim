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

import
  Quantity_Color, Quantity_Array1OfColor, ../NCollection/NCollection_DefineHArray1

type
  Quantity_HArray1OfColor* {.importcpp: "Quantity_HArray1OfColor",
                            header: "Quantity_HArray1OfColor.hxx", bycopy.} = object of Quantity_Array1OfColor


proc constructQuantity_HArray1OfColor*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): Quantity_HArray1OfColor {.
    constructor, importcpp: "Quantity_HArray1OfColor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc constructQuantity_HArray1OfColor*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): Quantity_HArray1OfColor {.
    constructor, importcpp: "Quantity_HArray1OfColor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc constructQuantity_HArray1OfColor*(theOther: Quantity_Array1OfColor): Quantity_HArray1OfColor {.
    constructor, importcpp: "Quantity_HArray1OfColor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc Array1*(this: Quantity_HArray1OfColor): Quantity_Array1OfColor {.noSideEffect,
    importcpp: "Array1", header: "Quantity_HArray1OfColor.hxx".}
proc ChangeArray1*(this: var Quantity_HArray1OfColor): var Quantity_Array1OfColor {.
    importcpp: "ChangeArray1", header: "Quantity_HArray1OfColor.hxx".}
type
  Quantity_HArray1OfColorbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Quantity_HArray1OfColor::get_type_name(@)",
                              header: "Quantity_HArray1OfColor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Quantity_HArray1OfColor::get_type_descriptor(@)",
    header: "Quantity_HArray1OfColor.hxx".}
proc DynamicType*(this: Quantity_HArray1OfColor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Quantity_HArray1OfColor.hxx".}