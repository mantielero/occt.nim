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
  StepAP203_ChangeRequestItem, StepAP203_Array1OfChangeRequestItem,
  ../NCollection/NCollection_DefineHArray1

type
  StepAP203_HArray1OfChangeRequestItem* {.
      importcpp: "StepAP203_HArray1OfChangeRequestItem",
      header: "StepAP203_HArray1OfChangeRequestItem.hxx", bycopy.} = object of StepAP203_Array1OfChangeRequestItem


proc constructStepAP203_HArray1OfChangeRequestItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepAP203_HArray1OfChangeRequestItem {.
    constructor, importcpp: "StepAP203_HArray1OfChangeRequestItem(@)",
    header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
proc constructStepAP203_HArray1OfChangeRequestItem*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepAP203_HArray1OfChangeRequestItem {.
    constructor, importcpp: "StepAP203_HArray1OfChangeRequestItem(@)",
    header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
proc constructStepAP203_HArray1OfChangeRequestItem*(
    theOther: StepAP203_Array1OfChangeRequestItem): StepAP203_HArray1OfChangeRequestItem {.
    constructor, importcpp: "StepAP203_HArray1OfChangeRequestItem(@)",
    header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
proc Array1*(this: StepAP203_HArray1OfChangeRequestItem): StepAP203_Array1OfChangeRequestItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
proc ChangeArray1*(this: var StepAP203_HArray1OfChangeRequestItem): var StepAP203_Array1OfChangeRequestItem {.
    importcpp: "ChangeArray1", header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
type
  StepAP203_HArray1OfChangeRequestItembase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepAP203_HArray1OfChangeRequestItem::get_type_name(@)", header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP203_HArray1OfChangeRequestItem::get_type_descriptor(@)",
    header: "StepAP203_HArray1OfChangeRequestItem.hxx".}
proc DynamicType*(this: StepAP203_HArray1OfChangeRequestItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP203_HArray1OfChangeRequestItem.hxx".}