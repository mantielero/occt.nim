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
  StepAP214HArray1OfPersonAndOrganizationItem* {.
      importcpp: "StepAP214_HArray1OfPersonAndOrganizationItem",
      header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx", bycopy.} = object of StepAP214Array1OfPersonAndOrganizationItem


proc constructStepAP214HArray1OfPersonAndOrganizationItem*(theLower: int;
    theUpper: int): StepAP214HArray1OfPersonAndOrganizationItem {.constructor,
    importcpp: "StepAP214_HArray1OfPersonAndOrganizationItem(@)",
    header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
proc constructStepAP214HArray1OfPersonAndOrganizationItem*(theLower: int;
    theUpper: int; theValue: ValueType): StepAP214HArray1OfPersonAndOrganizationItem {.
    constructor, importcpp: "StepAP214_HArray1OfPersonAndOrganizationItem(@)",
    header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
proc constructStepAP214HArray1OfPersonAndOrganizationItem*(
    theOther: StepAP214Array1OfPersonAndOrganizationItem): StepAP214HArray1OfPersonAndOrganizationItem {.
    constructor, importcpp: "StepAP214_HArray1OfPersonAndOrganizationItem(@)",
    header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
proc array1*(this: StepAP214HArray1OfPersonAndOrganizationItem): StepAP214Array1OfPersonAndOrganizationItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
proc changeArray1*(this: var StepAP214HArray1OfPersonAndOrganizationItem): var StepAP214Array1OfPersonAndOrganizationItem {.
    importcpp: "ChangeArray1",
    header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
type
  StepAP214HArray1OfPersonAndOrganizationItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepAP214_HArray1OfPersonAndOrganizationItem::get_type_name(@)", header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_HArray1OfPersonAndOrganizationItem::get_type_descriptor(@)",
    header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}
proc dynamicType*(this: StepAP214HArray1OfPersonAndOrganizationItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_HArray1OfPersonAndOrganizationItem.hxx".}














































