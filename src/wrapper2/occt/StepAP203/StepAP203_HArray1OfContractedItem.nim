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

import
  StepAP203_ContractedItem, StepAP203_Array1OfContractedItem,
  ../NCollection/NCollection_DefineHArray1

type
  StepAP203_HArray1OfContractedItem* {.importcpp: "StepAP203_HArray1OfContractedItem", header: "StepAP203_HArray1OfContractedItem.hxx",
                                      bycopy.} = object of StepAP203_Array1OfContractedItem


proc constructStepAP203_HArray1OfContractedItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepAP203_HArray1OfContractedItem {.constructor,
    importcpp: "StepAP203_HArray1OfContractedItem(@)",
    header: "StepAP203_HArray1OfContractedItem.hxx".}
proc constructStepAP203_HArray1OfContractedItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepAP203_HArray1OfContractedItem {.
    constructor, importcpp: "StepAP203_HArray1OfContractedItem(@)",
    header: "StepAP203_HArray1OfContractedItem.hxx".}
proc constructStepAP203_HArray1OfContractedItem*(
    theOther: StepAP203_Array1OfContractedItem): StepAP203_HArray1OfContractedItem {.
    constructor, importcpp: "StepAP203_HArray1OfContractedItem(@)",
    header: "StepAP203_HArray1OfContractedItem.hxx".}
proc Array1*(this: StepAP203_HArray1OfContractedItem): StepAP203_Array1OfContractedItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP203_HArray1OfContractedItem.hxx".}
proc ChangeArray1*(this: var StepAP203_HArray1OfContractedItem): var StepAP203_Array1OfContractedItem {.
    importcpp: "ChangeArray1", header: "StepAP203_HArray1OfContractedItem.hxx".}
type
  StepAP203_HArray1OfContractedItembase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepAP203_HArray1OfContractedItem::get_type_name(@)",
                              header: "StepAP203_HArray1OfContractedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_HArray1OfContractedItem::get_type_descriptor(@)",
    header: "StepAP203_HArray1OfContractedItem.hxx".}
proc DynamicType*(this: StepAP203_HArray1OfContractedItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_HArray1OfContractedItem.hxx".}