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
  StepAP214HArray1OfApprovalItem* {.importcpp: "StepAP214_HArray1OfApprovalItem", header: "StepAP214_HArray1OfApprovalItem.hxx",
                                   bycopy.} = object of StepAP214Array1OfApprovalItem


proc constructStepAP214HArray1OfApprovalItem*(theLower: int; theUpper: int): StepAP214HArray1OfApprovalItem {.
    constructor, importcpp: "StepAP214_HArray1OfApprovalItem(@)",
    header: "StepAP214_HArray1OfApprovalItem.hxx".}
proc constructStepAP214HArray1OfApprovalItem*(theLower: int; theUpper: int;
    theValue: ValueType): StepAP214HArray1OfApprovalItem {.constructor,
    importcpp: "StepAP214_HArray1OfApprovalItem(@)",
    header: "StepAP214_HArray1OfApprovalItem.hxx".}
proc constructStepAP214HArray1OfApprovalItem*(
    theOther: StepAP214Array1OfApprovalItem): StepAP214HArray1OfApprovalItem {.
    constructor, importcpp: "StepAP214_HArray1OfApprovalItem(@)",
    header: "StepAP214_HArray1OfApprovalItem.hxx".}
proc array1*(this: StepAP214HArray1OfApprovalItem): StepAP214Array1OfApprovalItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP214_HArray1OfApprovalItem.hxx".}
proc changeArray1*(this: var StepAP214HArray1OfApprovalItem): var StepAP214Array1OfApprovalItem {.
    importcpp: "ChangeArray1", header: "StepAP214_HArray1OfApprovalItem.hxx".}
type
  StepAP214HArray1OfApprovalItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepAP214_HArray1OfApprovalItem::get_type_name(@)",
                            header: "StepAP214_HArray1OfApprovalItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_HArray1OfApprovalItem::get_type_descriptor(@)",
    header: "StepAP214_HArray1OfApprovalItem.hxx".}
proc dynamicType*(this: StepAP214HArray1OfApprovalItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_HArray1OfApprovalItem.hxx".}
