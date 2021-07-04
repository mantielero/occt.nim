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

import
  StepAP214_DateAndTimeItem, StepAP214_Array1OfDateAndTimeItem,
  ../NCollection/NCollection_DefineHArray1

type
  StepAP214_HArray1OfDateAndTimeItem* {.importcpp: "StepAP214_HArray1OfDateAndTimeItem", header: "StepAP214_HArray1OfDateAndTimeItem.hxx",
                                       bycopy.} = object of StepAP214_Array1OfDateAndTimeItem


proc constructStepAP214_HArray1OfDateAndTimeItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepAP214_HArray1OfDateAndTimeItem {.constructor,
    importcpp: "StepAP214_HArray1OfDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
proc constructStepAP214_HArray1OfDateAndTimeItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepAP214_HArray1OfDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
proc constructStepAP214_HArray1OfDateAndTimeItem*(
    theOther: StepAP214_Array1OfDateAndTimeItem): StepAP214_HArray1OfDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
proc Array1*(this: StepAP214_HArray1OfDateAndTimeItem): StepAP214_Array1OfDateAndTimeItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
proc ChangeArray1*(this: var StepAP214_HArray1OfDateAndTimeItem): var StepAP214_Array1OfDateAndTimeItem {.
    importcpp: "ChangeArray1", header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
type
  StepAP214_HArray1OfDateAndTimeItembase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepAP214_HArray1OfDateAndTimeItem::get_type_name(@)",
                              header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_HArray1OfDateAndTimeItem::get_type_descriptor(@)",
    header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}
proc DynamicType*(this: StepAP214_HArray1OfDateAndTimeItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_HArray1OfDateAndTimeItem.hxx".}