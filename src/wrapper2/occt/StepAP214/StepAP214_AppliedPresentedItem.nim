##  Created on: 1999-03-10
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfPresentedItemSelect, ../StepVisual/StepVisual_PresentedItem,
  ../Standard/Standard_Integer

discard "forward decl of StepAP214_PresentedItemSelect"
discard "forward decl of StepAP214_AppliedPresentedItem"
discard "forward decl of StepAP214_AppliedPresentedItem"
type
  Handle_StepAP214_AppliedPresentedItem* = handle[StepAP214_AppliedPresentedItem]
  StepAP214_AppliedPresentedItem* {.importcpp: "StepAP214_AppliedPresentedItem", header: "StepAP214_AppliedPresentedItem.hxx",
                                   bycopy.} = object of StepVisual_PresentedItem ## !
                                                                            ## Returns a
                                                                            ## AutoDesignPresentedItem


proc constructStepAP214_AppliedPresentedItem*(): StepAP214_AppliedPresentedItem {.
    constructor, importcpp: "StepAP214_AppliedPresentedItem(@)",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc Init*(this: var StepAP214_AppliedPresentedItem;
          aItems: handle[StepAP214_HArray1OfPresentedItemSelect]) {.
    importcpp: "Init", header: "StepAP214_AppliedPresentedItem.hxx".}
proc SetItems*(this: var StepAP214_AppliedPresentedItem;
              aItems: handle[StepAP214_HArray1OfPresentedItemSelect]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedPresentedItem.hxx".}
proc Items*(this: StepAP214_AppliedPresentedItem): handle[
    StepAP214_HArray1OfPresentedItemSelect] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc ItemsValue*(this: StepAP214_AppliedPresentedItem; num: Standard_Integer): StepAP214_PresentedItemSelect {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc NbItems*(this: StepAP214_AppliedPresentedItem): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedPresentedItem.hxx".}
type
  StepAP214_AppliedPresentedItembase_type* = StepVisual_PresentedItem

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedPresentedItem::get_type_name(@)",
                              header: "StepAP214_AppliedPresentedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AppliedPresentedItem::get_type_descriptor(@)",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc DynamicType*(this: StepAP214_AppliedPresentedItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedPresentedItem.hxx".}