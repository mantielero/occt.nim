##  Created on: 1999-11-09
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  StepAP203HArray1OfDateTimeItem* {.importcpp: "StepAP203_HArray1OfDateTimeItem", header: "StepAP203_HArray1OfDateTimeItem.hxx",
                                   bycopy.} = object of StepAP203Array1OfDateTimeItem


proc constructStepAP203HArray1OfDateTimeItem*(theLower: int; theUpper: int): StepAP203HArray1OfDateTimeItem {.
    constructor, importcpp: "StepAP203_HArray1OfDateTimeItem(@)",
    header: "StepAP203_HArray1OfDateTimeItem.hxx".}
proc constructStepAP203HArray1OfDateTimeItem*(theLower: int; theUpper: int;
    theValue: ValueType): StepAP203HArray1OfDateTimeItem {.constructor,
    importcpp: "StepAP203_HArray1OfDateTimeItem(@)",
    header: "StepAP203_HArray1OfDateTimeItem.hxx".}
proc constructStepAP203HArray1OfDateTimeItem*(
    theOther: StepAP203Array1OfDateTimeItem): StepAP203HArray1OfDateTimeItem {.
    constructor, importcpp: "StepAP203_HArray1OfDateTimeItem(@)",
    header: "StepAP203_HArray1OfDateTimeItem.hxx".}
proc array1*(this: StepAP203HArray1OfDateTimeItem): StepAP203Array1OfDateTimeItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP203_HArray1OfDateTimeItem.hxx".}
proc changeArray1*(this: var StepAP203HArray1OfDateTimeItem): var StepAP203Array1OfDateTimeItem {.
    importcpp: "ChangeArray1", header: "StepAP203_HArray1OfDateTimeItem.hxx".}
type
  StepAP203HArray1OfDateTimeItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepAP203_HArray1OfDateTimeItem::get_type_name(@)",
                            header: "StepAP203_HArray1OfDateTimeItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_HArray1OfDateTimeItem::get_type_descriptor(@)",
    header: "StepAP203_HArray1OfDateTimeItem.hxx".}
proc dynamicType*(this: StepAP203HArray1OfDateTimeItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_HArray1OfDateTimeItem.hxx".}














































