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

discard "forward decl of StepAP214_PresentedItemSelect"
discard "forward decl of StepAP214_AppliedPresentedItem"
discard "forward decl of StepAP214_AppliedPresentedItem"
type
  HandleStepAP214AppliedPresentedItem* = Handle[StepAP214AppliedPresentedItem]
  StepAP214AppliedPresentedItem* {.importcpp: "StepAP214_AppliedPresentedItem",
                                  header: "StepAP214_AppliedPresentedItem.hxx",
                                  bycopy.} = object of StepVisualPresentedItem ## !
                                                                          ## Returns a
                                                                          ## AutoDesignPresentedItem


proc constructStepAP214AppliedPresentedItem*(): StepAP214AppliedPresentedItem {.
    constructor, importcpp: "StepAP214_AppliedPresentedItem(@)",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc init*(this: var StepAP214AppliedPresentedItem;
          aItems: Handle[StepAP214HArray1OfPresentedItemSelect]) {.
    importcpp: "Init", header: "StepAP214_AppliedPresentedItem.hxx".}
proc setItems*(this: var StepAP214AppliedPresentedItem;
              aItems: Handle[StepAP214HArray1OfPresentedItemSelect]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedPresentedItem.hxx".}
proc items*(this: StepAP214AppliedPresentedItem): Handle[
    StepAP214HArray1OfPresentedItemSelect] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc itemsValue*(this: StepAP214AppliedPresentedItem; num: int): StepAP214PresentedItemSelect {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc nbItems*(this: StepAP214AppliedPresentedItem): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AppliedPresentedItem.hxx".}
type
  StepAP214AppliedPresentedItembaseType* = StepVisualPresentedItem

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedPresentedItem::get_type_name(@)",
                            header: "StepAP214_AppliedPresentedItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AppliedPresentedItem::get_type_descriptor(@)",
    header: "StepAP214_AppliedPresentedItem.hxx".}
proc dynamicType*(this: StepAP214AppliedPresentedItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedPresentedItem.hxx".}
