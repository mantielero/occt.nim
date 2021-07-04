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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfAutoDesignPresentedItemSelect,
  ../StepVisual/StepVisual_PresentedItem, ../Standard/Standard_Integer

discard "forward decl of StepAP214_AutoDesignPresentedItemSelect"
discard "forward decl of StepAP214_AutoDesignPresentedItem"
discard "forward decl of StepAP214_AutoDesignPresentedItem"
type
  Handle_StepAP214_AutoDesignPresentedItem* = handle[
      StepAP214_AutoDesignPresentedItem]
  StepAP214_AutoDesignPresentedItem* {.importcpp: "StepAP214_AutoDesignPresentedItem", header: "StepAP214_AutoDesignPresentedItem.hxx",
                                      bycopy.} = object of StepVisual_PresentedItem ## !
                                                                               ## Returns a
                                                                               ## AutoDesignPresentedItem


proc constructStepAP214_AutoDesignPresentedItem*(): StepAP214_AutoDesignPresentedItem {.
    constructor, importcpp: "StepAP214_AutoDesignPresentedItem(@)",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc Init*(this: var StepAP214_AutoDesignPresentedItem;
          aItems: handle[StepAP214_HArray1OfAutoDesignPresentedItemSelect]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignPresentedItem;
              aItems: handle[StepAP214_HArray1OfAutoDesignPresentedItemSelect]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc Items*(this: StepAP214_AutoDesignPresentedItem): handle[
    StepAP214_HArray1OfAutoDesignPresentedItemSelect] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignPresentedItem; num: Standard_Integer): StepAP214_AutoDesignPresentedItemSelect {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc NbItems*(this: StepAP214_AutoDesignPresentedItem): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
type
  StepAP214_AutoDesignPresentedItembase_type* = StepVisual_PresentedItem

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignPresentedItem::get_type_name(@)",
                              header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AutoDesignPresentedItem::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignPresentedItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}