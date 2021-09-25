##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  StepVisualHArray1OfInvisibleItem* {.importcpp: "StepVisual_HArray1OfInvisibleItem", header: "StepVisual_HArray1OfInvisibleItem.hxx",
                                     bycopy.} = object of StepVisualArray1OfInvisibleItem


proc constructStepVisualHArray1OfInvisibleItem*(theLower: int; theUpper: int): StepVisualHArray1OfInvisibleItem {.
    constructor, importcpp: "StepVisual_HArray1OfInvisibleItem(@)",
    header: "StepVisual_HArray1OfInvisibleItem.hxx".}
proc constructStepVisualHArray1OfInvisibleItem*(theLower: int; theUpper: int;
    theValue: ValueType): StepVisualHArray1OfInvisibleItem {.constructor,
    importcpp: "StepVisual_HArray1OfInvisibleItem(@)",
    header: "StepVisual_HArray1OfInvisibleItem.hxx".}
proc constructStepVisualHArray1OfInvisibleItem*(
    theOther: StepVisualArray1OfInvisibleItem): StepVisualHArray1OfInvisibleItem {.
    constructor, importcpp: "StepVisual_HArray1OfInvisibleItem(@)",
    header: "StepVisual_HArray1OfInvisibleItem.hxx".}
proc array1*(this: StepVisualHArray1OfInvisibleItem): StepVisualArray1OfInvisibleItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfInvisibleItem.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfInvisibleItem): var StepVisualArray1OfInvisibleItem {.
    importcpp: "ChangeArray1", header: "StepVisual_HArray1OfInvisibleItem.hxx".}
type
  StepVisualHArray1OfInvisibleItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfInvisibleItem::get_type_name(@)",
                            header: "StepVisual_HArray1OfInvisibleItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_HArray1OfInvisibleItem::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfInvisibleItem.hxx".}
proc dynamicType*(this: StepVisualHArray1OfInvisibleItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_HArray1OfInvisibleItem.hxx".}
