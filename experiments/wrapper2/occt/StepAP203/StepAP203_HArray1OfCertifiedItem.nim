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
  StepAP203HArray1OfCertifiedItem* {.importcpp: "StepAP203_HArray1OfCertifiedItem", header: "StepAP203_HArray1OfCertifiedItem.hxx",
                                    bycopy.} = object of StepAP203Array1OfCertifiedItem


proc constructStepAP203HArray1OfCertifiedItem*(theLower: int; theUpper: int): StepAP203HArray1OfCertifiedItem {.
    constructor, importcpp: "StepAP203_HArray1OfCertifiedItem(@)",
    header: "StepAP203_HArray1OfCertifiedItem.hxx".}
proc constructStepAP203HArray1OfCertifiedItem*(theLower: int; theUpper: int;
    theValue: ValueType): StepAP203HArray1OfCertifiedItem {.constructor,
    importcpp: "StepAP203_HArray1OfCertifiedItem(@)",
    header: "StepAP203_HArray1OfCertifiedItem.hxx".}
proc constructStepAP203HArray1OfCertifiedItem*(
    theOther: StepAP203Array1OfCertifiedItem): StepAP203HArray1OfCertifiedItem {.
    constructor, importcpp: "StepAP203_HArray1OfCertifiedItem(@)",
    header: "StepAP203_HArray1OfCertifiedItem.hxx".}
proc array1*(this: StepAP203HArray1OfCertifiedItem): StepAP203Array1OfCertifiedItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP203_HArray1OfCertifiedItem.hxx".}
proc changeArray1*(this: var StepAP203HArray1OfCertifiedItem): var StepAP203Array1OfCertifiedItem {.
    importcpp: "ChangeArray1", header: "StepAP203_HArray1OfCertifiedItem.hxx".}
type
  StepAP203HArray1OfCertifiedItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepAP203_HArray1OfCertifiedItem::get_type_name(@)",
                            header: "StepAP203_HArray1OfCertifiedItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP203_HArray1OfCertifiedItem::get_type_descriptor(@)",
    header: "StepAP203_HArray1OfCertifiedItem.hxx".}
proc dynamicType*(this: StepAP203HArray1OfCertifiedItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_HArray1OfCertifiedItem.hxx".}
